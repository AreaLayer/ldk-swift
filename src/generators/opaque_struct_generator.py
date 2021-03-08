import re
import os

class OpaqueStructGenerator:

    def __init__(self) -> None:
        super().__init__()
        template_path = f'{os.path.dirname(__file__)}/../../templates/OpaqueStructTemplate.swift'
        with open(template_path, 'r') as template_handle:
            template = template_handle.read()
            self.template = template

    def generate_opaque_struct(self, struct_name, struct_details):
        # method_names = ['openChannel', 'closeChannel']
        # native_method_names = ['ChannelHandler_openChannel', 'ChannelHandler_closeChannel']

        swift_struct_name = struct_name[3:]

        method_template_regex = re.compile("(\/\* STRUCT_METHODS_START \*\/\n)(.*)(\n[\t ]*\/\* STRUCT_METHODS_END \*\/)", flags = re.MULTILINE | re.DOTALL)
        method_template = method_template_regex.search(self.template).group(2)

        method_prefix = swift_struct_name+'_'
        struct_methods = ''

        # fill templates
        for current_method_details in struct_details.methods:

            current_native_method_name = current_method_details['name']
            current_method_name = current_native_method_name[len(method_prefix):]

            current_replacement = method_template
            current_replacement = current_replacement.replace('func methodName(', f'func {current_method_name}(')
            current_replacement = current_replacement.replace('OpaqueStructType_methodName(', f'{current_native_method_name}(')
            struct_methods += '\n'+current_replacement+'\n'


        opaque_struct_file = self.template.replace('class OpaqueStructName {', f'class {swift_struct_name} {{')
        opaque_struct_file = opaque_struct_file.replace('var cOpaqueStruct: OpaqueStructType?', f'var cOpaqueStruct: {struct_name}?')
        opaque_struct_file = opaque_struct_file.replace('self.cOpaqueStruct = OpaqueStructType()', f'self.cOpaqueStruct = {struct_name}_new()')
        opaque_struct_file = method_template_regex.sub(f'\g<1>{struct_methods}\g<3>', opaque_struct_file)



        # store the output
        output_path = f'{os.path.dirname(__file__)}/../../output/LDK/{swift_struct_name}.swift'
        output_directory = os.path.dirname(output_path)
        if not os.path.exists(output_directory):
            os.makedirs(output_directory)
        with open(output_path, "w") as f:
            f.write(opaque_struct_file)
        pass
