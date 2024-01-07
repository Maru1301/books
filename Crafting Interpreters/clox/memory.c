#include <stdlib.h>
#include "memory.h"

void* reallocate(void* pointer, size_t oldSize, size_t newSize) {
    if(newSize == 0){
        free(pointer);
        return NULL;
    }

    void* result = realloc(pointer, newSize);
    if(result == NULL) exit(1); //status of 0 indicates successful execution, non-zero exit statuses indicate errors or abnormal terminations
    return result;
}
