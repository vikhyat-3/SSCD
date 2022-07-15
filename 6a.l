%{
	#include <stdio.h>
%}
%%
"//".* ;
"/*".*"*/" ;
%%
int main(){
	yyin=fopen("inp.c","r");
	yyout=fopen("out.c","w");
	yylex();
}
int yywrap(){return 0;}
