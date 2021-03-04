%{
   int key=0, op=0, id=0;
%}

LETTER [a-zA-Z]
DIGIT [0-9]

%%

(begin|if|while|do|then|else) {
                                 key++;
                              }
[-+*/<>=] {
           op++;
         }
[<=|>=|!=] {
            op++;
           }

[,;\.];

{LETTER}({LETTER}|{DIGIT})* {
                              id++;
                            }

%%

main()
{
yylex();

printf("Number of identifiers=%d\t, keywords=%d\t, operators=%d\t",id,key,op);

}
