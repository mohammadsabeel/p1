%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
void yyerror(const char *s);
int yylex(void);
%}
%start S

%%
S: B C
;
B: 'a' B 'b' 
|
;
C: 'b' C 'c'
|
;
%%

int main()
{
if(yyparse()==0)
        {
                printf("Valid string!\n");
        }
    return 0;
   }
   
void yyerror(const char* s)
{
fprintf(stderr, "Invalid !!!\n");
exit(1);
}
  
