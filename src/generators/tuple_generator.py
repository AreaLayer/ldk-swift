import re
import os

from src.config import Config
from src.type_parsing_regeces import TypeParsingRegeces
from src.conversion_helper import ConversionHelper

# Tuples have only new, optionally clone, and free methods
class TupleGenerator:

	def __init__(self) -> None:
		super().__init__()
		template_path = f'{os.path.dirname(__file__)}/../../templates/TupleTemplate.swift'
		with open(template_path, 'r') as template_handle:
			template = template_handle.read()
			self.template = template

	def generate_tuple(self, struct_name, struct_details, all_type_details = {}):
		# method_names = ['openChannel', 'closeChannel']
		# native_method_names = ['ChannelHandler_openChannel', 'ChannelHandler_closeChannel']

		swift_tuple_name = struct_name[3:]

		mutating_output_file_contents = self.template


		# REGULAR METHODS START

		method_template_regex = re.compile(
			"(\/\* TUPLE_METHODS_START \*\/\n)(.*)(\n[\t ]*\/\* TUPLE_METHODS_END \*\/)",
			flags=re.MULTILINE | re.DOTALL)
		method_template = method_template_regex.search(mutating_output_file_contents).group(2)

		method_prefix = swift_tuple_name + '_'
		struct_methods = ''

		method_iterator = struct_details.methods
		if struct_details.free_method is not None:
			method_iterator.append(struct_details.free_method)

		# fill templates
		for current_method_details in method_iterator:
			current_native_method_name = current_method_details['name']['native']
			if current_native_method_name.endswith('_new') and struct_details.constructor_method is None:
				struct_details.constructor_method = current_method_details
				if len(struct_details.fields) == 0:
					struct_details.fields = struct_details.constructor_method['argument_types']
			# current_rust_return_type = current_method_details['return_type'].rust_obj

			# if current_rust_return_type in all_type_details and all_type_details[current_rust_return_type].type.name == 'UNITARY_ENUM':
			# 	current_return_type = current_rust_return_type

			current_replacement = method_template
			is_clone_method = current_method_details['is_clone']
			is_free_method = current_method_details['is_free']

			current_method_name = current_native_method_name[len(method_prefix):]
			current_return_type = current_method_details['return_type'].swift_type
			if not is_free_method:
				current_return_type = swift_tuple_name

			force_pass_instance = False
			if len(current_method_details['argument_types']) == 1:
				if current_method_details['argument_types'][0].swift_type == swift_tuple_name:
					force_pass_instance = True

			if current_method_details['return_type'].rust_obj is not None and current_method_details['return_type'].rust_obj.startswith('LDK') and current_method_details['return_type'].swift_type.startswith('['):
				return_type_wrapper_prefix = f'Bindings.{current_method_details["return_type"].rust_obj}_to_array(nativeType: '
				return_type_wrapper_suffix = ')'
				current_replacement = current_replacement.replace('return TupleType_methodName(native_arguments)', f'return {return_type_wrapper_prefix}TupleType_methodName(native_arguments){return_type_wrapper_suffix}')
			elif current_method_details['return_type'].rust_obj == 'LDK' + current_method_details['return_type'].swift_type:
				return_type_wrapper_prefix = f'{current_method_details["return_type"].swift_type}(pointer: '
				return_type_wrapper_suffix = ')'
				current_replacement = current_replacement.replace('return TupleType_methodName(native_arguments)', f'return {return_type_wrapper_prefix}TupleType_methodName(native_arguments){return_type_wrapper_suffix}')



			prepared_arguments = ConversionHelper.prepare_swift_to_native_arguments(current_method_details['argument_types'], force_pass_instance=force_pass_instance, is_free_method=is_free_method)
			static_infix = 'class ' if prepared_arguments['static_eligible'] else ''

			if len(prepared_arguments['non_cloneable_argument_indices_passed_by_ownership']) > 0:
				cloneability_warning = 'Non-cloneable types passed by ownership. Here be dragons!'
				print(f'/// {cloneability_warning}: {current_native_method_name}')

			current_replacement = current_replacement.replace('func methodName(', f'{static_infix}func {current_method_name}(')
			current_replacement = current_replacement.replace('TupleType_methodName(native_arguments)', prepared_arguments['native_call_prefix'] + 'TupleType_methodName(' + ', '.join(prepared_arguments['native_arguments']) + ')' + prepared_arguments['native_call_suffix'])
			current_replacement = current_replacement.replace('TupleType_methodName(',
															  f'{current_native_method_name}(')
			current_replacement = current_replacement.replace('swift_arguments', ', '.join(prepared_arguments["swift_arguments"]))
			current_replacement = current_replacement.replace('native_arguments', ', '.join(prepared_arguments['native_arguments']))
			current_replacement = current_replacement.replace('/* NATIVE_CALL_PREP */', prepared_arguments['native_call_prep'])
			current_replacement = current_replacement.replace('-> Void {', f'-> {current_return_type} {{')

			if is_clone_method:
				current_replacement += f'''\n
					internal func danglingClone() -> {current_return_type} {{
        				let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}}
				'''

			if is_free_method:
				current_replacement = current_replacement.replace('public func', 'internal func')
				current_replacement += f'''\n
					internal func dangle() -> {swift_tuple_name} {{
        				self.dangling = true
						return self
					}}
					
					deinit {{
						if !self.dangling {{
							print("Freeing {swift_tuple_name} \(self.instanceNumber).")
							self.{current_method_name}()
						}} else {{
							print("Not freeing {swift_tuple_name} \(self.instanceNumber) due to dangle.")
						}}
					}}
				'''

			struct_methods += '\n' + current_replacement + '\n'



		mutating_output_file_contents = mutating_output_file_contents.replace('class TupleName {',
																			  f'class {swift_tuple_name} {{')
		mutating_output_file_contents = mutating_output_file_contents.replace('init(pointer: TupleType',
																			  f'init(pointer: {struct_name}')
		mutating_output_file_contents = mutating_output_file_contents.replace('var cOpaqueStruct: TupleType?',
																			  f'var cOpaqueStruct: {struct_name}?')
		mutating_output_file_contents = method_template_regex.sub(f'\g<1>{struct_methods}\g<3>',
																  mutating_output_file_contents)


		# store the output
		output_path = f'{Config.OUTPUT_DIRECTORY_PATH}/tuples/{swift_tuple_name}.swift'
		output_directory = os.path.dirname(output_path)
		if not os.path.exists(output_directory):
			os.makedirs(output_directory)
		with open(output_path, "w") as f:
			f.write(mutating_output_file_contents)
