#include "libasm.h"

#include <string.h>

void test_strlen() {
    const char test[] = "test the strlen";

    printf("STRLEN TEST\nstring: \"%s\"\n", test);
    printf("with ft_strlen: %lu\n", ft_strlen(test));
    printf("with strlen: %lu\n", strlen(test));
}

void test_strcmp() {
    const char s1[] = "test";
    const char s2[] = "test";

    printf("\nSTRNCMP TEST\ns1: \"%s\", s2: \"%s\"\n", s1, s2);
    printf("ft_strncmp: %d\n", ft_strcmp(s1, s2));
    printf("strncmp: %d\n", strcmp(s1, s2));
}

int main() {
    test_strlen();
    test_strcmp();

    return EXIT_SUCCESS;
}
