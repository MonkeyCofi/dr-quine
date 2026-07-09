JAVAC = javac

Colleen = Colleen

Grace = Grace

Sully = Sully

JFLAGS = -g -Xlint:all

SRCS = Colleen.java Grace.java Sully.java

BIN = $(SRCS:.java=.class)

all: $(Colleen) $(Grace) $(Sully)

$(Colleen): Colleen.java
	$(JAVAC) $(JFLAGS) $<

$(Grace): Grace.java
	$(JAVAC) $(JFLAGS) $<

$(Sully): Sully.java
	$(JAVAC) $(JFLAGS) $<

clean:
	@for i in $(shell seq 0 5); do \
		rm -rf Sully_$$i.java; \
	done

fclean: clean
	@for i in $(shell seq 0 5); do \
		rm -f Sully_$$i.class; \
	done
	rm -rf Grace_kid.java
	rm -rf $(BIN)

re: all