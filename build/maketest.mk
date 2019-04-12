# work in progress "non-recursive" makefile

# make won't resolve ifeq true if there are any spaces in the below statement!
UNIT_TESTING :='TRUE'# include test files in this build

PROJ_ROOT = ..
APP_ROOT = $(PROJ_ROOT)/app
OBJ_DIR = obj/test
LIB_DIR = $(PROJ_ROOT)/lib

INC :=                   # module-specific makefiles will add to INC
OBJ :=                   # module-specific makefiles will add to OBJ
BIN := test.exe          # name of executable

FLAGS := -Wall           # use all warnings
FLAGS += -fmax-errors=5  # stop after 5 errors

# Add google test and google mock headers
INC += -I$(LIB_DIR)/googletest/include
INC += -I$(LIB_DIR)/googlemock/include

# Add google test and google mock libraries
LIB := $(LIB_DIR)/googletest/gtest_main.a
LIB += $(LIB_DIR)/googlemock/gmock.a

.PHONY: clean directories
all: $(OBJ_DIR) $(BIN)

# Include module-specific makefiles
-include $(APP_ROOT)/module_a/makefile.mk
-include $(APP_ROOT)/module_b/makefile.mk
-include $(APP_ROOT)/module_c/makefile.mk
-include $(APP_ROOT)/module_with_tests/makefile.mk

# Include all dependency .d files
DEP = $(OBJ:%.o=%.d)
-include $(DEP)

$(BIN): $(OBJ)
	@echo Building executable \"$@\"
	g++ $^ $(LIB) -o $@

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR) # Makes folder if missing

clean:
	@echo Cleaning folder
	rm -rf $(OBJ_DIR) $(BIN)
