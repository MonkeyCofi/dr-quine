
Grace_src = Grace.s

Colleen_src = Colleen.s

Sully_src = Sully.s

Colleen = Colleen

Grace = Grace

Sully = Sully

SRCS = $(Colleen_src) $(Grace_src)

OBJS = $(SRCS:%.s=%.o)

all: $(Colleen) $(Grace) $(Sully)

$(Colleen): $(Colleen_src)
	nasm -f elf64 $(Colleen_src) -o Colleen.o && gcc -no-pie Colleen.o -o $(Colleen)

$(Grace): $(Grace_src)
	nasm -f elf64 $(Grace_src) -o Grace.o && gcc -no-pie Grace.o -o $(Grace)

$(Sully): $(Sully_src)
	nasm -f elf64 $(Sully_src) -o Sully.o && gcc -no-pie Sully.o -o $(Sully)


clean:
	rm -f Grace_kid.s $(OBJS) Sully_*.o Sully.o Sully_* $(Sully)

fclean: clean
	rm -f $(Colleen) $(Grace)

re: fclean all

.PHONY: all clean fclean re
