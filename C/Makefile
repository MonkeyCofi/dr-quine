Colleen = Colleen

Colleen_src = Colleen.c


$(Colleen): $(Colleen_src)
	gcc -Wall -Wextra -Werror $(Colleen_src) -o $(Colleen)

all: $(Colleen)

clean:
	rm -f $(Colleen)

fclean: clean

re: fclean all

.PHONY: all clean fclean re
