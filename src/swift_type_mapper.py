from binding_types import TypeInfo
from type_parsing_regeces import TypeParsingRegeces

var_is_arr_regex = TypeParsingRegeces.IS_VARIABLE_AN_ARRAY_REGEX
var_ty_regex = TypeParsingRegeces.VARIABLE_TYPE_REGEX


def map_types_to_swift(fn_arg, ret_arr_len, java_c_types_none_allowed, tuple_types, unitary_enums, language_constants):
	fn_arg = fn_arg.strip()
	if fn_arg.startswith("MUST_USE_RES "):
		fn_arg = fn_arg[13:]
	is_const = False
	if fn_arg.startswith("const "):
		fn_arg = fn_arg[6:]
		is_const = True
	if fn_arg.startswith("struct "):
		fn_arg = fn_arg[7:]
	if fn_arg.startswith("enum "):
		fn_arg = fn_arg[5:]
	fn_arg = fn_arg.replace("NONNULL_PTR", "")

	is_ptr = False
	take_by_ptr = False
	rust_obj = None
	arr_access = None
	swift_type = None
	if fn_arg.startswith("LDKThirtyTwoBytes"):
		fn_arg = "uint8_t (*" + fn_arg[18:] + ")[32]"
		assert var_is_arr_regex.match(fn_arg[8:])
		rust_obj = "LDKThirtyTwoBytes"
		arr_access = "data"
	elif fn_arg.startswith("LDKPublicKey"):
		fn_arg = "uint8_t (*" + fn_arg[13:] + ")[33]"
		assert var_is_arr_regex.match(fn_arg[8:])
		rust_obj = "LDKPublicKey"
		arr_access = "compressed_form"
	elif fn_arg.startswith("LDKSecretKey"):
		fn_arg = "uint8_t (*" + fn_arg[13:] + ")[32]"
		assert var_is_arr_regex.match(fn_arg[8:])
		rust_obj = "LDKSecretKey"
		arr_access = "bytes"
	elif fn_arg.startswith("LDKSignature"):
		fn_arg = "uint8_t (*" + fn_arg[13:] + ")[64]"
		assert var_is_arr_regex.match(fn_arg[8:])
		rust_obj = "LDKSignature"
		arr_access = "compact_form"
	elif fn_arg.startswith("LDKThreeBytes"):
		fn_arg = "uint8_t (*" + fn_arg[14:] + ")[3]"
		assert var_is_arr_regex.match(fn_arg[8:])
		rust_obj = "LDKThreeBytes"
		arr_access = "data"
	elif fn_arg.startswith("LDKFourBytes"):
		fn_arg = "uint8_t (*" + fn_arg[13:] + ")[4]"
		assert var_is_arr_regex.match(fn_arg[8:])
		rust_obj = "LDKFourBytes"
		arr_access = "data"
	elif fn_arg.startswith("LDKSixteenBytes"):
		fn_arg = "uint8_t (*" + fn_arg[16:] + ")[16]"
		assert var_is_arr_regex.match(fn_arg[8:])
		rust_obj = "LDKSixteenBytes"
		arr_access = "data"
	elif fn_arg.startswith("LDKTenBytes"):
		fn_arg = "uint8_t (*" + fn_arg[12:] + ")[10]"
		assert var_is_arr_regex.match(fn_arg[8:])
		rust_obj = "LDKTenBytes"
		arr_access = "data"
	elif fn_arg.startswith("LDKu8slice"):
		fn_arg = "uint8_t (*" + fn_arg[11:] + ")[datalen]"
		assert var_is_arr_regex.match(fn_arg[8:])
		rust_obj = "LDKu8slice"
		arr_access = "data"
	elif fn_arg.startswith("LDKCVec_u8Z"):
		fn_arg = "uint8_t (*" + fn_arg[12:] + ")[datalen]"
		rust_obj = "LDKCVec_u8Z"
		assert var_is_arr_regex.match(fn_arg[8:])
		arr_access = "data"
	elif fn_arg.startswith("LDKTransaction"):
		fn_arg = "uint8_t (*" + fn_arg[15:] + ")[datalen]"
		rust_obj = "LDKTransaction"
		assert var_is_arr_regex.match(fn_arg[8:])
		arr_access = "data"
	elif fn_arg.startswith("LDKCVec_"):
		is_ptr = False
		if "*" in fn_arg:
			fn_arg = fn_arg.replace("*", "")
			is_ptr = True

		tyn = fn_arg[8:].split(" ")
		assert tyn[0].endswith("Z")
		if tyn[0] == "u64Z":
			new_arg = "uint64_t"
		else:
			new_arg = "LDK" + tyn[0][:-1]
		for a in tyn[1:]:
			new_arg = new_arg + " " + a
		res = map_types_to_swift(new_arg, ret_arr_len, java_c_types_none_allowed, tuple_types, unitary_enums,
								 language_constants)
		if res is None:
			assert java_c_types_none_allowed
			return None
		if is_ptr:
			res.pass_by_ref = True
		if res.is_native_primitive or res.passed_as_ptr:
			return TypeInfo(rust_obj=fn_arg.split(" ")[0], swift_type=f'[{res.swift_type}]',
							c_ty=res.c_ty + "Array", passed_as_ptr=False,
							is_ptr=is_ptr, is_const=is_const,
							var_name=res.var_name, arr_len="datalen", arr_access="data", subty=res,
							is_native_primitive=False)
		else:
			return TypeInfo(rust_obj=fn_arg.split(" ")[0], swift_type=f'[{res.swift_type}]',
							c_ty=language_constants.ptr_arr,
							passed_as_ptr=False, is_ptr=is_ptr, is_const=is_const,
							var_name=res.var_name, arr_len="datalen", arr_access="data", subty=res,
							is_native_primitive=False)

	is_primitive = False
	arr_len = None
	mapped_type = []
	java_type_plural = None
	if fn_arg.startswith("void"):
		java_ty = "Void"
		c_ty = "void"
		fn_arg = fn_arg[4:].strip()
		is_primitive = True
	elif fn_arg.startswith("bool"):
		java_ty = "boolean"
		c_ty = "jboolean"
		fn_arg = fn_arg[4:].strip()
		is_primitive = True
	elif fn_arg.startswith("uint8_t"):
		mapped_type = language_constants.c_type_map['uint8_t']
		java_ty = mapped_type[0]
		c_ty = "int8_t"
		fn_arg = fn_arg[7:].strip()
		is_primitive = True
	elif fn_arg.startswith("uint16_t"):
		mapped_type = language_constants.c_type_map['uint16_t']
		java_ty = mapped_type[0]
		c_ty = "int16_t"
		fn_arg = fn_arg[8:].strip()
		is_primitive = True
	elif fn_arg.startswith("uint32_t"):
		mapped_type = language_constants.c_type_map['uint32_t']
		java_ty = mapped_type[0]
		c_ty = "int32_t"
		fn_arg = fn_arg[8:].strip()
		is_primitive = True
	elif fn_arg.startswith("uint64_t") or fn_arg.startswith("uintptr_t"):
		# TODO: uintptr_t is arch-dependent :(
		mapped_type = language_constants.c_type_map['uint64_t']
		java_ty = mapped_type[0]
		if fn_arg.startswith("uint64_t"):
			c_ty = "int64_t"
			fn_arg = fn_arg[8:].strip()
		else:
			c_ty = "int64_t"
			rust_obj = "uintptr_t"
			fn_arg = fn_arg[9:].strip()
		is_primitive = True
	elif is_const and fn_arg.startswith("char *"):
		java_ty = "String"
		c_ty = "const char*"
		fn_arg = fn_arg[6:].strip()
	elif fn_arg.startswith("LDKStr"):
		java_ty = "String"
		c_ty = "jstring"
		fn_arg = fn_arg[6:].strip()
		arr_access = "chars"
		arr_len = "len"
	else:
		ma = var_ty_regex.match(fn_arg)
		type_match = ma.group(1).strip()
		name_match = ma.group(2).strip()
		if type_match in unitary_enums:
			java_ty = type_match
			c_ty = language_constants.result_c_ty
			fn_arg = name_match
			rust_obj = type_match
		elif type_match.startswith("LDKC2Tuple"):
			c_ty = language_constants.ptr_c_ty
			java_ty = language_constants.ptr_native_ty
			swift_type = "TwoTuple<"
			if not type_match in tuple_types:
				assert java_c_types_none_allowed
				return None
			for idx, ty_info in enumerate(tuple_types[type_match][0]):
				if idx != 0:
					swift_type = swift_type + ", "
				if ty_info.is_native_primitive:
					if ty_info.swift_type == "int":
						swift_type = swift_type + "Integer"  # Java concrete integer type is Integer, not Int
					else:
						swift_type = swift_type + ty_info.swift_type.title()  # If we're a primitive, capitalize the first letter
				else:
					swift_type = swift_type + ty_info.swift_type
			swift_type = swift_type + ">"
			fn_arg = name_match
			rust_obj = type_match
			take_by_ptr = True
		elif type_match.startswith("LDKC3Tuple"):
			c_ty = language_constants.ptr_c_ty
			java_ty = language_constants.ptr_native_ty
			swift_type = "ThreeTuple<"
			if not type_match in tuple_types:
				assert java_c_types_none_allowed
				return None
			for idx, ty_info in enumerate(tuple_types[type_match][0]):
				if idx != 0:
					swift_type = swift_type + ", "
				if ty_info.is_native_primitive:
					if ty_info.java_hu_ty == "int":
						swift_type = swift_type + "Integer"  # Java concrete integer type is Integer, not Int
					else:
						swift_type = swift_type + ty_info.java_hu_ty.title()  # If we're a primitive, capitalize the first letter
				else:
					swift_type = swift_type + ty_info.swift_type
			swift_type = swift_type + ">"
			fn_arg = name_match
			rust_obj = type_match
			take_by_ptr = True
		else:
			c_ty = language_constants.ptr_c_ty
			java_ty = language_constants.ptr_native_ty
			swift_type = type_match.replace("LDKCResult", "Result").replace("LDK", "")
			fn_arg = name_match
			rust_obj = type_match
			take_by_ptr = True

	if fn_arg.startswith(" *") or fn_arg.startswith("*"):
		fn_arg = fn_arg.replace("*", "").strip()
		is_ptr = True
		c_ty = language_constants.ptr_c_ty
		java_ty = language_constants.ptr_native_ty

	# TODO: remove java_hu_type vs java_type duality artifact
	var_is_arr = var_is_arr_regex.match(fn_arg)
	if var_is_arr is not None or ret_arr_len is not None:
		assert (not take_by_ptr)
		assert (not is_ptr)
		# is there a special case for plurals?
		if len(mapped_type) == 2:
			java_ty = mapped_type[1]
		else:
			java_ty = '[' + java_ty + ']'
		c_ty = c_ty + "Array"
		if var_is_arr is not None:
			if var_is_arr.group(1) == "":
				return TypeInfo(rust_obj=rust_obj, swift_type=java_ty, c_ty=c_ty, is_const=is_const,
								passed_as_ptr=False, is_ptr=False, var_name="arg", arr_len=var_is_arr.group(2),
								arr_access=arr_access, is_native_primitive=False)
			return TypeInfo(rust_obj=rust_obj, swift_type=java_ty, c_ty=c_ty, is_const=is_const,
							passed_as_ptr=False, is_ptr=False, var_name=var_is_arr.group(1),
							arr_len=var_is_arr.group(2), arr_access=arr_access, is_native_primitive=False)

	if swift_type is None:
		swift_type = java_ty
	return TypeInfo(rust_obj=rust_obj, swift_type=swift_type, c_ty=c_ty, passed_as_ptr=is_ptr or take_by_ptr,
					is_const=is_const, is_ptr=is_ptr, var_name=fn_arg, arr_len=arr_len, arr_access=arr_access,
					is_native_primitive=is_primitive)
