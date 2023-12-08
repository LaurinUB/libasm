NAME = libasm
LIB = libasm.a
AS = nasm
ASFLAGS = -iinc -wall -dMACOS=1 -f macho64

CC = cc
CFLAGS = -Wall -Werror -Wextra
IFLAGS = -I

AR = ar
ARFLAGS = rcs

SRC = ft_strlen.s
OBJ = $(SRC:%.s=%.o)

$(LIB): $(OBJ)
	$(AR) $(ARFLAGS) $(LIB) $(OBJ) 

$(NAME) : $(LIB)
	$(CC) $(CFLAGS) main.c $(IFLAGS) libasm.h $(LIB) -o $(NAME)

all: $(NAME)

re: clean all

%.o: %s
	$(AS) $(ASFLAGS) $(SRC)

clean:
	rm -f $(OBJ) $(NAME) $(LIB)
