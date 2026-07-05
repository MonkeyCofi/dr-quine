
Grace_src = Grace.s

Colleen_src = Colleen.s

Sully_src = Sully.s

Colleen = Colleen

Grace = Grace

Sully = Sully

SRCS = $(Colleen_src) $(Grace_src) $(Sully_src)

OBJS = $(SRCS:%.s=%.o)

all: $(Colleen) $(Grace) $(Sully)

$(Colleen): $(Colleen_src)
	nasm -f elf64 $(Colleen_src) -o Colleen.o && gcc -no-pie Colleen.o -o $(Colleen)

$(Grace): $(Grace_src)
	nasm -f elf64 $(Grace_src) -o Grace.o && gcc -no-pie Grace.o -o $(Grace)

$(Sully): $(Sully_src)
	nasm -f elf64 $(Sully_src) -o Sully.o && gcc -no-pie Sully.o -o $(Sully)


clean:
	rm -f Grace_kid.s $(OBJS) Sully.o
	@for i in $(shell seq 0 5); do \
		rm -f Sully_$$i.o; \
	done

fclean: clean
	rm -f $(Colleen) $(Grace) $(Sully)
	@for i in $(shell seq 0 5); do \
		rm -f Sully_$$i Sully_$$i.s; \
	done

re: fclean all

.PHONY: all clean fclean re
