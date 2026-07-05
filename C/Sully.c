#include <stdio.h>
#include <stdlib.h>
#define CODE "#include <stdio.h>%1$c#include <stdlib.h>%1$c#define CODE %2$c%4$s%2$c%1$cint main(void) {%1$c%3$cint i = %5$d;%1$c%3$cif (i < 0) return 0;%1$c%3$cchar filename[50];%1$c%3$csprintf(filename, %2$cSully_%%d.c%2$c, i--);%1$c%3$cFILE *fp = fopen(filename, %2$cw+%2$c);%1$c%3$cif (fp == NULL)%1$c%3$c%3$creturn 1;%1$c%3$cfprintf(fp,CODE,10,34,9,CODE,i);%1$c%3$cfclose(fp);%1$c%3$cchar exec_file[50];%1$c%3$csprintf(exec_file, %2$cSully_%%d%2$c, i + 1);%1$c%3$cchar cmd[200];%1$c%3$csprintf(cmd, %2$cgcc -Wall -Wextra -Werror %%s -o %%s%2$c, filename, exec_file);%1$c%3$csystem(cmd);%1$c%3$csprintf(cmd, %2$c./%%s%2$c, exec_file);%1$c%3$csystem(cmd);%1$c}"
int main(void) {
	int i = 5;
	if (i < 0) return 0;
	char filename[50];
	sprintf(filename, "Sully_%d.c", i--);
	FILE *fp = fopen(filename, "w+");
	if (fp == NULL)
		return 1;
	fprintf(fp,CODE,10,34,9,CODE,i);
	fclose(fp);
	char exec_file[50];
	sprintf(exec_file, "Sully_%d", i + 1);
	char cmd[200];
	sprintf(cmd, "gcc -Wall -Wextra -Werror %s -o %s", filename, exec_file);
	system(cmd);
	sprintf(cmd, "./%s", exec_file);
	system(cmd);
}