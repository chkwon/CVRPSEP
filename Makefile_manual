
ifeq ($(OS), Windows_NT)
	UNAME_S := Windows
else
	UNAME_S := $(shell uname -s)
endif
ifeq ($(UNAME_S),Windows)
	TARGET_LIB := libcvrpsep.dll
	RM_R = rmdir /s /q 
endif
ifeq ($(UNAME_S),Linux)
	TARGET_LIB := libcvrpsep.so 
	RM_R = rm -r
endif
ifeq ($(UNAME_S),Darwin)
	TARGET_LIB := libcvrpsep.dylib 
	RM_R = rm -r
endif


BUILD_DIR := build
SRC_DIR := src
OBJ_DIR := obj

CC = gcc 
CFLAGS = -fPIC 

SRC_FILES := $(wildcard $(SRC_DIR)/*.c)
OBJ_FILES := $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SRC_FILES))


all: $(BUILD_DIR)/$(TARGET_LIB)

# The final build step.
$(BUILD_DIR)/$(TARGET_LIB): $(OBJ_FILES) | $(BUILD_DIR)
	$(CC) -shared $(OBJ_FILES) -o $@ 

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
	mkdir $(OBJ_DIR)

$(BUILD_DIR):
	mkdir $(BUILD_DIR)

.PHONY: clean
clean:
	$(RM_R) $(BUILD_DIR)
	$(RM_R) $(OBJ_DIR)