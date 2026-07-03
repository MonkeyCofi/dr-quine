Colleen = Colleen

Colleen_src = Colleen.s

# Objs = $()

$(Colleen): $(Colleen_src)
# 	nasm -f elf64 $(Colleen_src) -o Colleen.o && ld Colleen.o -o $(Colleen)
	nasm -f elf64 $(Colleen_src) -o Colleen.o && gcc -no-pie Colleen.o -o $(Colleen)

all: $(Colleen)

clean:

fclean: clean
	rm -f $(Colleen)

re: fclean all

.PHONY: all clean fclean re
