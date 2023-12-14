NAME = libasm
LIB = libasm.a
AS = nasm
ASFLAGS = -iinc -wall -dMACOS=1 -f macho64

CC = cc
CFLAGS = -Wall -Werror -Wextra
IFLAGS = -I

AR = ar
ARFLAGS = rcs

SRC = ft_strlen.s ft_strcmp.s ft_strcpy.s ft_write.s ft_read.s ft_strdup.s
OBJ = $(SRC:%.s=%.o)

CSRC = main.c
COBJ = $(CSRC:%.c=%.o)

$(LIB): $(OBJ)
	$(AR) $(ARFLAGS) $(LIB) $(OBJ) 

$(NAME) : $(LIB) $(COBJ)
	$(CC) $(COBJ) $(IFLAGS) libasm.h $(LIB) -o $(NAME)

all: $(NAME)

re: fclean all

%.o: %s
	$(AS) $(ASFLAGS) $(SRC)

clean:
	rm -f $(OBJ) $(COBJ)

fclean: clean
	rm -f $(NAME) $(LIB)
