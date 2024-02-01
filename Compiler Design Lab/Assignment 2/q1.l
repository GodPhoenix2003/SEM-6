%{
#include<stdio.h>
int sc=0,wc=0,lc=0,cc=0;
%}

%%
[\n] { lc++; cc+=yyleng;}
[  \t] { sc++; cc+=yyleng;}
[^\t\n ]+ { wc++;  cc+=yyleng;}
%%

int main(int argc ,char* argv[ ])
{
	printf("Enter the input:\n");
	yylex();
	printf("The number of lines=%d\n",lc);
	printf("The number of spaces=%d\n",sc);
	printf("The number of words=%d\n",wc);
	printf("The number of characters are=%d\n",cc);
}

int yywrap( )
{
	return 1;
}

/*

Output:

Enter the input:
I am Sagnik
Hii
yo
The number of lines=3
The number of spaces=2
The number of words=5
The number of characters are=19

*/