#include <stdio.h>
// This is a comment
#define OFILE "Grace_kid.c"
#define C "#include <stdio.h>%c// This is a comment%c#define OFILE %cGrace_kid.c%c%c#define C %c%s%c%c#define MAIN() int main(void) {FILE *fp=fopen(OFILE, %cw+%c); if (fp == NULL) return 1; fprintf(fp,C,10,10,34,34,10,34,C,34,10,34,34,10); fclose(fp);}%cMAIN()"
#define MAIN() int main(void) {FILE *fp=fopen(OFILE, "w+"); if (fp == NULL) return 1; fprintf(fp,C,10,10,34,34,10,34,C,34,10,34,34,10); fclose(fp);}
MAIN()