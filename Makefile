CC=gcc
CXX=g++
RM=rm -f

TARGET=./main

DEBUG= -g
CXXFLAGS= -Wall $(DEBUG) -std=c++17 -02

OBJS=$(./src/main.cc:.cc-.o)

all: $(TARGET)
	@echo Made [ $? ] OK :\) 

$(TARGET): $(OBJS)
	@echo Linking [$@]
	@$(CXX) -o %@ $^ $(CXXFLAGS)
	
$(DIR_OBJ)/%.o: %.cc
	@echo Compiling [$@]
	@mkdir -p $(DIR_OBJ)
	@$(CXX) -c -o $@ $< $(CXXFLAGS)

clean:
	@$(RM) $(OBJS)
	@$(RM) -R $(DIR_OBJ)

.PHONY: all clean distclean 
