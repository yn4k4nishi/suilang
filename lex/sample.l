/* definitions */
%{
/* %{ と %} で囲まれた部分は lex.yy.c にそのままコピーされます */
#include <stdio.h>
#include <stdlib.h>

/* 入力（yyin）が更新されていないかを返す関数。入力がend-of-fileに到達した後に呼ばれる。1 (true)であれば字句解析を終了し，0 (false)であれば入力が更新されたとしてyyinを再設定して再度字句解析を行う。 */
int yywrap(void){
    return 1;
}
/* グローバル変数 */
int num_lines;
%}

DIGIT   [0-9]

%%
    /* rules */
{DIGIT}+ {
    printf("Integer: %s is parsed as %d\n", yytext, atoi(yytext));
}
{DIGIT}+\.{DIGIT}* {
    printf("Float: %s is parsed as %f\n", yytext, atof(yytext));
}
[A-Za-z\_]+ {
    printf("ID: %s\n", yytext);
}
[ \t]+    ; /* Ignore whitespaces */
\n        num_lines++;
%%
/* user code */
/* main()関数を定義 */
int main(){
    printf("Executing lexical analyzer.\n");
    yylex();
    printf("Reached the end-of-file (%d lines).\n", num_lines);
}