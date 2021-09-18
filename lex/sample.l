/* definitions */
%{
#include <stdio.h>
#include <stdlib.h>

int yywrap(){ return 1; }

%}

%x STRING

DIGIT    [[:digit:]]
FLOAT    ({DIGIT}{DIGIT}*\.?|0\.|\.{DIGIT}){DIGIT}*|0
EXPONENT [eE](-|\+?){DIGIT}+

TYPE     num
IMAGINE  [j]
NUMBER   {DIGIT}{EXPONENT}?|{FLOAT}{EXPONENT}?
SPACE    [[:blank:]]+
ID       [_[:alpha:]][_[:alnum:]]*
OPERATOR [+\-*/%&|^~=<>!,.?:()\{\}\[\]]|[+\-*/%&|^=<>!]=|"++"|--|&&|"||"|->|".*"|"->*"|">>"

%%
    /* rules */
{TYPE}      printf("TYPE      : %s\n", yytext);
{IMAGINE}   printf("IMAGINE   : %s\n", yytext);
{NUMBER}    printf("NUMBER    : %s\n", yytext);
{SPACE}     ;
\n          ;
{ID}        printf("ID        : %s\n", yytext);
{OPERATOR}  printf("OPERATOR  : %s\n", yytext);
\"          BEGIN(STRING); yymore();
<STRING>([^\"\n]|\\\"|\\\n)+ yymore();
<STRING>\"  printf("STRING    : %s\n", yytext); BEGIN(INITIAL);
.           printf("CHARACTER : %s\n", yytext);
<<EOF>>     printf("\nEND\n"); return 0;
%%

/* user code */
int main(int argc, char** argv){
    if(argc > 1)
        yyin = fopen(argv[1], "r");
    return yylex();
}