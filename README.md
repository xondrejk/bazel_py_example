# bazel_py_example
Mixed version Python example

The question is how to support multiple version of Python in a single bazel project without resrting to wrapping one of the version as a generic shell script.

Initial setup would work for each target called separately with corresponding `--python_top` (or `--python_path`):
  
	$ bazel build -s //example:old_test
	$ bazel build -s //example:new_test --python_top //tools:python3

But that is less then optimal.
