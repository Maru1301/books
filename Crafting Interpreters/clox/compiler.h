#ifndef clox_compiler_h
#define clox_compiler_h

#include "object.h"
#include "vm.h"

bool compile(const char* course, Chunk* chunk);

#endif