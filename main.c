#include "libasm.h"

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("wrong amount of arguments\n");
        return EXIT_FAILURE;
    }
    printf("string is %lu long\n", ft_strlen(argv[1]));
    return EXIT_SUCCESS;
}
