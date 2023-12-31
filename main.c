#include "libasm.h"
#include <errno.h>

void test_strlen() {
    const char test[] = "test the strlen";

    printf("STRLEN TEST\nstring: \"%s\"\n", test);
    printf("with ft_strlen: %lu\n", ft_strlen(test));
    printf("with strlen: %lu\n", strlen(test));
}

void test_strcmp() {
    const char s1[] = "test";
    const char s2[] = "tes";

    printf("\nSTRNCMP TEST\ns1: \"%s\", s2: \"%s\"\n", s1, s2);
    printf("ft_strncmp: %d\n", ft_strcmp(s1, s2));
    printf("strncmp: %d\n", strcmp(s1, s2));
}

void test_strcpy() {
    const char s1[] = "testing";
    char* dest = malloc(ft_strlen(s1));

    printf("\nSTRCPYTEST\n%s\n", ft_strcpy(dest, s1));
    free(dest);
}

void test_write() {
    printf("\nWRITE TEST\n");
    printf("return value: %lu\n", ft_write(-1, "Hello World!\n", 13));
    perror("ft_write");
    printf("return value: %lu\n", write(-1, "Hello World!\n", 13));
    perror("write");
}

void test_read() {
    int fd = open("input.txt", O_RDWR);
    char *buf = malloc(50);
    
    printf("\nREAD TEST\n");
    printf("read bytes: %lu\n", ft_read(fd, buf, 50));
    perror("ft_read");
    printf("%s\n", buf);
    bzero(buf, 50);
    printf("read bytes: %lu\n", read(fd, buf, 50));
    perror("read");
    printf("%s", buf);
    free(buf);
}

void test_strdup() {
    const char s1[] = "testing";

    printf("\nSTRDUP TEST\n");
    char *str = ft_strdup(s1);
    printf("%s\n", str);
    free(str);
}

int main() {
    test_strlen();
    test_strcmp();
    test_strcpy();
    errno = 0;
    test_write();
    errno = 0;
    test_read();
    test_strdup();

    system("leaks libasm");
    return EXIT_SUCCESS;
}
