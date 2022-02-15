yaml-cpp is a YAML parser and emitter in C++ matching the YAML 1.2 spec.
To test the parse program, run following command:
$ module load yaml-cpp
$ parse test.yml
The output looks like following:
global:
  debug: yes
  verbose: no
  debugging:
    detailed: no
    header: debugging started
output:
  file: yes
