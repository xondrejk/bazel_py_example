package(default_visibility=["//visibility:public"])
exports_files(["py_top"])

py_binary(
    name = "oldgen",
    srcs = ["oldgen.py"],
    default_python_version = "PY2",
)

py_binary(
    name = "newgen",
    srcs = ["newgen.py"],
    default_python_version = "PY3",
)

py_runtime(
    name = "python3",
    files = [],
    interpreter_path = "/usr/bin/python3",
#    constraint_values = [':py3'],
)

py_runtime(
    name = "python2",
    files = [],
    interpreter_path = "/usr/bin/python2",
)
