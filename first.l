%{
#include<stdio.h>
%}

LETTER [a-zA-Z]
DIGIT [0-9]

%%

begin {
         printf("recognized KEYWORD:%\n",yytext);
     }
if {
      printf("recognized KEYWORD : %s\n", yytext);
  }
 
 {LETTER}({LETTER}|{DIGIT})* {
                  printf("recognized IDENTIFIER : %s\n", yytext);
                               }

%%

main()
{
yylex();
}
