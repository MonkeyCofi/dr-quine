#include <stdio.h>

// This comment is outside main
void	function()
{
	return ;
}

int main()
{
	// This comment is inside main
	char *s="#include <stdio.h>%c%c// This comment is outside main%cvoid	function()%c{%c%creturn ;%c}%c%cint main()%c{%c%c// This comment is inside main%c%cchar *s=%c%s%c;%c%cfunction();%c%cprintf(s, 10, 10, 10, 10, 10, 9, 10, 10, 10, 10, 10, 9, 10, 9, 34, s, 34, 10, 9, 10, 9, 10, 10);%c}%c";
	function();
	printf(s, 10, 10, 10, 10, 10, 9, 10, 10, 10, 10, 10, 9, 10, 9, 34, s, 34, 10, 9, 10, 9, 10, 10);
}
