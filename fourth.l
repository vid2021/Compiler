%{
#include<stdio.h>
void display(int);
%}

%%
[a|e|i|o|u] {

      int flag = 1;
      display(flag);
      return;
  }

.+ { 
     int flag = 0;
     display(flag);
     return;
}

%%

 void display(int flag)
{
    if(flag==0)
    printf("\nThe given word is Not a vowel\n");
    else
    printf("\nThe given word is a vowel\n");
}

main()
{
   printf("\nEnter a word to check whether it is a vowel or not\n");
   yylex();
}  
