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
	rm -f $(Colleen) $(Grace) Grace_kid.c
	@for i in $(shell seq 0 5); do \
		rm -f Sully_$$i.c; \
	done

fclean: clean
	rm -f $(Sully) $(Grace) $(Colleen)
	@for i in $(shell seq 0 5); do \
		rm -f Sully_$$i; \
	done

re: fclean all

.PHONY: all clean fclean re
