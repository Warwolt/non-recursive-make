# work in progress "non-recursive" makefile

PROJ_ROOT = ..
APP_ROOT = $(PROJ_ROOT)/app
OBJ_DIR = obj/bin

INC :=                   # module-specific makefiles will add to INC
OBJ := $(OBJ_DIR)/main.o # module-specific makefiles will add to OBJ
BIN := hello.exe         # name of executable

FLAGS := -Wall           # use all warnings
FLAGS += -fmax-errors=5  # stop after 5 errors

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

$(OBJ_DIR)/main.o: $(APP_ROOT)/main.cpp
	g++ $(INC) -c $< -o $@

$(BIN): $(OBJ)
	@echo Building executable \"$@\"
	g++ $^ -o $@

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR) # Makes folder if missing

clean:
	@echo Cleaning folder
	rm -rf $(OBJ_DIR) $(BIN)
