%{
#include<stdio.h>
int l=0,s=0,c=0,w=0;
%}

%%
\n  {l++ ;}
[ \t]  {s++ ;}
[a-zA-Z]+ {w++; c+=yyleng;}
.
%%

int main()
{

        printf("Enter the string\n");
        yylex();
        printf("No of lines= %d\n\t No of spaces=%d\n\t No of characters=%d\n\t No of words=%d\n\t" , l,s,c,w);
        return 0;
       }

