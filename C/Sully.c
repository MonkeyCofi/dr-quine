#include <stdio.h>
#define CODE "#include <stdio.h>%c#define CODE %c%s%c%cint main() {%c%cint i = %d;%c%cif (i <= 0) return 0;%c%cchar filename[50];%c%csprintf(filename, %cSully_%%d.c%c, i--);%c%cFILE *fp = fopen(filename, %cw+%c);%c}"
int main() {
    int i = 5;
    if (i <= 0) return 0;
    char filename[50];
    sprintf(filename, "Sully_%d.c", i--);
    FILE *fp = fopen(filename, "w+");
    fprintf(fp, CODE,10,34,CODE,34,10,10,9,i,10,9,10,9,10,9,34,34,10,9,34,34,10);

}