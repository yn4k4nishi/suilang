/* definitions */
%{
#include <stdio.h>
#include <stdlib.h>

int yywrap(){ return 1; }

%}

DIGIT    [[:digit:]]
FLOAT    ({DIGIT}{DIGIT}*\.?|0\.|\.{DIGIT}){DIGIT}*|0
EXPONENT [eE](-|\+?){DIGIT}+
IMAG     [j]

NUMBER   {DIGIT}{FLOAT}{EXPONENT}?
SPACE    [[:space:]]

%%
    /* rules */
{DIGIT} {
    printf("NUMBER: %s is parsed as %f\n", yytext, atof(yytext));
}
{SPACE} ;
. {
    // printf("CHARACTER: %s\n", yytext);
}
%%

/* user code */
/* main()関数を定義 */
int main(int argc, char** argv){
    if(argc > 1)
        yyin = fopen(argv[1], "r");
    return yylex();
}