/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Colleen.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pipolint <pipolint@student.42abudhabi.ae>  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2026/06/23 20:25:39 by pipolint          #+#    #+#             */
/*   Updated: 2026/06/24 13:40:34 by pipolint         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>

// This comment is outside
void	function()
{
	printf("hello, world\n");
}

int main()
{
	char *s="#include <stdio.h>%c%c// This comment is outside%cvoid	function()%c{%c%cprintf(%chello, world\\n%c);%c}%c%cint main()%c{%c%c// This comment is inside%c%cchar *s=%c%s%c;%c%cfunction();%c%cprintf(s, 10, 10, 10, 10, 10, 9, 34, 34, 10, 10, 10, 10, 10, 9, 10, 9, 34, s, 34, 10, 9, 10, 9, 10, 10);%c}%c";
	function();
	printf(s, 10, 10, 10, 10, 10, 9, 34, 34, 10, 10, 10, 10, 10, 9, 10, 9, 34, s, 34, 10, 9, 10, 9, 10, 10);
}
