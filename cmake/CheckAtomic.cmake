
include(CheckCSourceCompiles)

if(USE_DOUBLE)
	set(type "int64_t")
else()
	set(type "int32_t")
endif()

if(NOT MSVC)

# GCC/Clang atomics
check_c_source_compiles("
#include <stdio.h>
#include <stdlib.h>

int main() {
  static volatile ${type} val = 0;
  ${type} u =  __sync_add_and_fetch(&val, 1);

  if(u - 1 == 0) { 
    return 0;
  } 
 
  return 1; 
}

" HAVE_ATOMIC_BUILTIN)

else()

# MSVC code to test for atomic ops
check_c_source_compiles("
#include <intrin.h>

int main() 
{
	static volatile long val = 0;

	// Two versions of this method exist, one that deals with 'long', the other 'short'
	// Not sure if it's necessary to include both
	long u = _InterlockedIncrement(&val);

	if(u - 1 == 0) { 
		return 0;
	} 
 
	return 1; 
}

" HAVE_ATOMIC_BUILTIN)
endif()

message(STATUS "Atomic rule run")
