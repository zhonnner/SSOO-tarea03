CC=gcc
CXX=g++
RM=rm -f

TARGET=./main

DEBUG= -g
CXXFLAGS= -Wall $(DEBUG) -std=c++17 -O2
SRC_DIR= src
SRC=$(wildccard $(SRC_DIR)/*.cc)
OBJS=$(SRC:$(SRC_DIR)/%.cc=$(SRC_DIR)/%.o)

all: $(TARGET)
	@echo Made [ $? ] OK :\) 

$(TARGET): $(OBJS)
	@echo Linking [$@]
	@$(CXX) -o %@ $^ $(CXXFLAGS)
	
$(SRC_DIR)/%.o: $(SRC_DIR)/%.cc
	@echo Compiling [$@]
	@$(CXX) -c -o $@ $< $(CXXFLAGS)

clean:
	@$(RM) $(OBJS)

.PHONY: all clean distclean 
