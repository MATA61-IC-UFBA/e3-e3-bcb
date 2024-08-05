
%option noyywrap yylineno
%{

// noyywrap    - no need to deal with multiple input files
// yylineno    - variable to track line numbers
//               that copies otherwise unmatched input to yyout. boolean seja 259
//[+\-*\/%!<>=:;,()\[\]{}]     { return SYM }


#include "token.h"

%}

%%
[ \t\r\n]+                                                                                     /* skip whitespace */
"//".*                                                                                           /* skip single line comments */
"array"                                                                                           { return ARRAY; }
"boolean"                                                                                         { return BOOLEAN; }
"char"                                                                                            { return CHART; }
"else"                                                                                            { return ELSE; }
"false"                                                                                           { return FALSE; }
"for"                                                                                             { return FOR; }
"function"                                                                                        { return FUNCTION; }
"if"                                                                                              { return IF; }
"integer"                                                                                         { return INTEGER; }
"print"                                                                                           { return PRINT; }
"return"                                                                                          { return RETURN; }
"string"                                                                                          { return STRING; }
"true"                                                                                            { return TRUE; }
"void"                                                                                            { return VOID; }
"while"                                                                                           { return WHILE; }
"\\n"|"\\0"|'[^\\'\n]'|\'([^\\'\n]|\\.)\'                                                         { return CHAR; }
[a-zA-Z][a-zA-Z0-9_]{0,255}                                                                       { return ID; }
"+"|"-"|"*"|"%"|"!"|"<"|">"|"="|":"|";"|","|"("|")"|"{"|"}"                 { return yytext[0]; }
"<="                                                                                              { return LTE; }
">="                                                                                              { return GTE; }
"=="                                                                                              { return EQU; }
"!="                                                                                              { return NEQ; }
"&&"                                                                                              { return AND; }
"||"                                                                                              { return OR; }
[0-9]+                                                                                            { return NUM; }
\"([^\"\\\n]|\\.)*\"                                                                              { return STR; }
.                                                                                                 { return ERROR; }
%%
