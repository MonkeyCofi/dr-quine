Colleen = Colleen

Colleen_src = Colleen.c

Grace_src = Grace.c

Grace = Grace

Sully = Sully

Sully_src = Sully.c

all: $(Colleen) $(Grace) $(Sully)

$(Colleen): $(Colleen_src)
	gcc -Wall -Wextra -Werror $(Colleen_src) -o $(Colleen)

$(Grace): $(Grace_src)
	gcc -Wall -Werror -Wextra $(Grace_src) -o $(Grace)

$(Sully): $(Sully_src)
	gcc -Wall -Wextra -Werror $^ -o $@

clean:
	rm -f $(Colleen) $(Grace) Sully_5.c Sully_4.c Sully_3.c Sully_2.c Sully_1.c Grace_kid.c

fclean: clean
	rm -f $(Sully) Sully_5 Sully_4 Sully_3 Sully_2 Sully_1

re: fclean all

.PHONY: all clean fclean re
