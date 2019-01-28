all: aula_lex.l
	flex -i aula_lex.l
	gcc lex.yy.c -o AulaLex -lfl
	clear
	./AulaLex < Programa1.dat
