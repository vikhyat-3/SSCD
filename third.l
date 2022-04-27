%{
	#include <stdio.h>
	int vowel=0,cons=0;
%}
%%
[aeiouAEIOU] vowel++;
[a-zA-Z] cons++;
. ;
%%
int main(){
	printf("Enter a string");
	yylex();
	printf("Vowel count: %d\n",vowel);
	printf("Consonant count: %d\n",cons);
}
