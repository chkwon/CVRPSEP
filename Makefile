# https://makefiletutorial.com


# TARGET_LIB = libcvrpsep.dylib 


UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
	TARGET_LIB = libcvrpsep.so 
endif
ifeq ($(UNAME_S),Darwin)
	TARGET_LIB = libcvrpsep.dylib 
endif


BUILD_DIR := ./build
SRC_DIRS := ./src

CC = gcc 
CFLAGS = -fPIC 

SRCS := $(shell find $(SRC_DIRS) -name '*.cpp' -or -name '*.c' -or -name '*.s')
OBJS := $(SRCS:%=$(BUILD_DIR)/%.o)

# The final build step.
$(BUILD_DIR)/$(TARGET_LIB): $(OBJS)
	$(CC) -shared $(OBJS) -o $@ 

$(BUILD_DIR)/%.c.o: %.c
	mkdir -p $(dir $@);
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -r $(BUILD_DIR)