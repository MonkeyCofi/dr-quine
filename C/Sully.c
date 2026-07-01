#include <stdio.h>
#include <stdlib.h>
#define CODE "#include <stdio.h>%c#define CODE %c%s%c%cint main() {%c%cint i = %d;%c%cif (i <= 0) return 0;%c%cchar filename[50];%c%csprintf(filename, %cSully_%%d.c%c, i--);%c%cFILE *fp = fopen(filename, %cw+%c);%cfprintf(fp, CODE,10,34,CODE,34,10,10,9,i,10,9,10,9,10,9,34,34,10,9,34,34,10);%c%cchar exec_file[50];%c}"
int main() {
    int i = 5;
    if (i <= 0) return 0;
    char filename[50];
    sprintf(filename, "Sully_%d.c", i--);
    FILE *fp = fopen(filename, "w+");
    fprintf(fp, CODE,10,34,CODE,34,10,10,9,i,10,9,10,9,10,9,34,34,10,9,34,34,10,10,9,10);
    char exec_file[50];
    sprintf(exec_file, "Sully_%d", i);
    char cmd[100];
    sprintf(cmd, "gcc -Wall -Wextra -Werror %s -o %s", filename, exec_file);
    system(cmd);
}