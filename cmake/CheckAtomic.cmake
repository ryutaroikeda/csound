
include(CheckCSourceCompiles)

if(USE_DOUBLE)
	set(type "int64_t")
else()
	set(type "int32_t")
endif()

# GCC/Clang atomics
check_c_source_compiles("
#ifdef _MSC_VER
 #include <windows.h>
#else
 #include <stdio.h>
 #include <stdlib.h>
#endif

int main() {
#ifdef _MSC_VER
  volatile LONG val = 1;
  MemoryBarrier();
  InterlockedCompareExchange(&val, 0, 1);
  InterlockedIncrement(&val);
  InterlockedDecrement(&val);
  return 0;
#else
  static volatile ${type} val = 0;
  ${type} u =  __sync_add_and_fetch(&val, 1);

  if(u - 1 == 0) { 
    return 0;
  } 

  return 1;
#endif
}

" HAVE_ATOMIC_BUILTIN)
