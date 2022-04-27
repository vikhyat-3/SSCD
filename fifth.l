%{%
	#include <stdio.h>
	int w=0,c=0,l=0;
%}
%%
[^ \t\n]+ {w++;c+=yyleng;}
[\n] l++;
. c++;
%%
int main(){
	printf("Enter sentence\n");
	yylex();
	printf("Word count:%d\nCharacter count:%d\nLine count:%d\n",w,c,l);
}
