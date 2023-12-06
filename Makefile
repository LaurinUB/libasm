NAME = test
AS = nasm
ASFLAGS = -f macho64

SRC = ft_strlen.s
OBJ = $(SRC:%.s=%.o)

all: $(OBJ)
	cc $(OBJ) -o $(NAME)

re: clean all

%.o: %s
	$(AS) $(ASFLAGS) $(SRC)

clean:
	rm -f $(OBJ) $(NAME)
