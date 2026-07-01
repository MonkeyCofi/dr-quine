#include <stdio.h>
#include <stdlib.h>
#define CODE "#include <stdio.h>%c#include <stdlib.h>%c#define CODE %c%s%c%cint main(void) {%c%cint i = %d;%c%cif (i <= 0) return 0;%c%cchar filename[50];%c%csprintf(filename, %cSully_%%d.c%c, i--);%c%cFILE *fp = fopen(filename, %cw+%c);%c%cfprintf(fp, CODE,10,10,34,CODE,34,10,10,9,i,10,9,10,9,10,9,34,34,10,9,34,34,10,9,10,9,10,9,10,9,34,34,10,9,10,9,34,34,10,9,10,9,34,34,10,9,10);%c%cfclose(fp);%c%cchar exec_file[50];%c%csprintf(exec_file, %cSully_%%d%c, i + 1);%c%cchar cmd[200];%c%csprintf(cmd, %cgcc -Wall -Wextra -Werror %%s -o %%s%c, filename, exec_file);%c%csystem(cmd);%c%csprintf(cmd, %c./%%s%c, exec_file);%c%csystem(cmd);%c}"
int main(void) {
    int i = 5;
    if (i <= 0) return 0;
    char filename[50];
    sprintf(filename, "Sully_%d.c", i--);
    FILE *fp = fopen(filename, "w+");
    fprintf(fp, CODE,10,10,34,CODE,34,10,10,9,i,10,9,10,9,10,9,34,34,10,9,34,34,10,9,10,9,10,9,10,9,34,34,10,9,10,9,34,34,10,9,10,9,34,34,10,9,10);
    fclose(fp);
    char exec_file[50];
    sprintf(exec_file, "Sully_%d", i + 1);
    char cmd[200];
    sprintf(cmd, "gcc -Wall -Wextra -Werror %s -o %s", filename, exec_file);
    system(cmd);
    sprintf(cmd, "./%s", exec_file);
    system(cmd);
}