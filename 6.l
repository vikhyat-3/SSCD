%{
#include "y.tab.h"
int idc=0,keyc=0;
%}
%x DECL
%%
"int "|"float "|"char "|"double " {BEGIN DECL;keyc++;return KWORD;}
<DECL>[a-zA-Z_][a-zA-Z_0-9]* { idc++;return ID;}
<DECL>[,;] {return yytext[0];}
<DECL>\n { BEGIN 0;}
.|\n ;
%%
main()
{
	printf("Enter string");
	yyparse();
	printf("Total No of keyword = %d",keyc);
	printf("Total No of identifiers = %d", idc);
}
yyerror()
{
printf(" Invalid Declaration!!!!\n");
exit(0); 
}

//YACC
%{
#include<stdio.h>
%}
%token KWORD ID
%%
start: KWORD X ';' {printf("Valid Declaration");return 0;}
;
X: X ',' X
| ID
;
%%
