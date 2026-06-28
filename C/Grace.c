#include<stdio.h>
#define B(x) int main(void){FILE *fp=fopen("Grace_kid.c", "RW");\n fputs("#define B(x)"x"\n#define X(s) S(s)\n#define S(s) #s\nB(X(B(x)));",fp)}
#define X(s) S(s)
#define S(s) #s
B(X(B(x)));