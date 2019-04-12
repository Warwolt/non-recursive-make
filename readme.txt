This is an example project that uses a non-recursive makefile for two builds,
the program binary and a google test unit test runner.

App contains all the software, including unit tests and module-specific makefiles.
Build contains the common as well as top-level makefiles, and the executables.
Lib contains any external libraries, such as google test and google mock