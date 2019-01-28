%{

%}
DIGITO [0-9]+
PALAVRA [a-z]+
VARIAVEL "_"
COMMENT "&"+
INT "it"+ 
FLOAT "flt"+
STRING "(@"+
SOMA "+"
SUBTRACAO "-"+
MULTIPLICACAO "*"+
DIVISAO "/"+
SCANF "Scan_"+
PRINTF "Show_"+
IF "SE"+
WHILE "Enquanto"+
MAIOR ">"+
MENOR "<"+
IGUAL "=="+
ELSE "senao"+
OU "ou"+
RECEBE "=" 


%%

{DIGITO} {printf ("Número: %s \n",yytext);}
{PALAVRA}^"FIM" {printf ("Caractere inválido: %s ",yytext);}
{VARIAVEL} {printf(" %s", yytext);}
{COMMENT} {printf("Comentarios: %s ", yytext);}
{INT} {printf("Tipo Int : %s \n", yytext);}
{FLOAT} {printf("Tipo Float: %s \n", yytext);}
{STRING} {printf("@ %s ", yytext);}
{SOMA} {printf(" %s \n", yytext);}
{SUBTRACAO} {printf("Subtração: %s \n", yytext);}
{MULTIPLICACAO} {printf("Multiplicação: %s \n ", yytext);}
{DIVISAO} {printf("Divisão: %s \n", yytext);}
{SCANF} {printf("Leitura: %s \n", yytext);}
{PRINTF}+"("")" {printf("Escrita: %s \n", yytext);}
{IF}            {printf(" %s  ", yytext);}
{WHILE} {printf("Repetição FOR:%s \n", yytext);}
{MAIOR} {printf(" %s \n", yytext);}
{MENOR} {printf(" %s \n", yytext);}
{IGUAL} {printf(" Igual: %s \n", yytext);}
{ELSE}+"("")" {printf("  %s \n", yytext);}
{OU} {printf(" Condição OU: %s \n", yytext);}
{RECEBE} { printf(" Recebe valor: %s \n ", yytext);}
"Begin"   {printf("Begin:  \n");}
"\n"	{printf ("\n");}
"End"	{printf ("End  \n");}
%%
