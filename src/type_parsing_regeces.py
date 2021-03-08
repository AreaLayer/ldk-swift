import re

class TypeParsingRegeces:

    # variable mapping
    IS_VARIABLE_AN_ARRAY_REGEX = re.compile("\(\*([A-za-z0-9_]*)\)\[([a-z0-9]*)\]")
    VARIABLE_TYPE_REGEX = re.compile("([A-za-z_0-9]*)(.*)")

    # function mapping
    FUNCTION_POINTER_REGEX = re.compile("^extern const ([A-Za-z_0-9\* ]*) \(\*(.*)\)\((.*)\);$")
    FUNCTION_RETURN_ARRAY_REGEX = re.compile("(.*) \(\*(.*)\((.*)\)\)\[([0-9]*)\];$")
    REGULAR_FUNCTION_REGEX = re.compile("(.*) \(\*(.*)\((.*)\)\)\[([0-9]*)\];$")
