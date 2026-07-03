
Grace_src = Grace.s

Colleen_src = Colleen.s

Sully_src = Sully.s

Colleen = Colleen

Grace = Grace

Sully = Sully

SRCS = $(Colleen_src) $(Grace_src)

OBJS = $(SRCS:%.s=%.o)

$(Colleen): $(Colleen_src)
	nasm -f elf64 $(Colleen_src) -o Colleen.o && gcc -no-pie Colleen.o -o $(Colleen)

$(Grace): $(Grace_src)
	nasm -f elf64 $(Grace_src) -o Grace.o && gcc -no-pie Grace.o -o $(Grace)

all: $(Colleen)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(Colleen)

re: fclean all

.PHONY: all clean fclean re
