Colleen = Colleen

Colleen_src = Colleen.c

Grace_src = Grace.c

Grace = Grace

$(Colleen): $(Colleen_src)
	gcc -Wall -Wextra -Werror $(Colleen_src) -o $(Colleen)

$(Grace): $(Grace_src)
	gcc -Wall -Werror -Wextra $(Grace_src) -o $(Grace)

all: $(Colleen) $(Grace)

clean:
	rm -f $(Colleen) $(Grace)

fclean: clean

re: fclean all

.PHONY: all clean fclean re
