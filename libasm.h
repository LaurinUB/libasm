#ifndef LIBASM_H_
#define LIBASM_H_

#include <stdlib.h>
#include <stdio.h>

size_t ft_strlen(const char* str);
int ft_strcmp(const char* s1, const char* s2);
char * ft_strcpy(char* dst, const char* src);
ssize_t ft_write(int filedes, const void* buf, size_t nbyte);

#endif  // LIBASM_H_
