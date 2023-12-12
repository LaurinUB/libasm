#ifndef LIBASM_H_
#define LIBASM_H_

#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <errno.h>

size_t ft_strlen(const char *str);
int ft_strcmp(const char *s1, const char *s2);
char *ft_strcpy(char *dst, const char *src);
ssize_t ft_write(int filedes, const void *buf, size_t nbyte);
ssize_t ft_read(int filedes, void *buf, size_t nbyte);
char *ft_strdup(const char *src);

#endif  // LIBASM_H_
