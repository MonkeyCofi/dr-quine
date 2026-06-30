#include <stdio.h>
// This is a comment
#define C "#include <stdio.h>%c// This is a comment%c#define C %c%s%c%c#define MAIN() int main(void) {FILE *fp=fopen(%cGrace_kid.c%c, %cw+%c); fprintf(fp, C,10,10,34,C,34,10,34,34,34,34,10);}%cMAIN()"
#define MAIN() int main(void) {FILE *fp=fopen("Grace_kid.c", "w+"); fprintf(fp, C,10,10,34,C,34,10,34,34,34,34,10);}
MAIN()