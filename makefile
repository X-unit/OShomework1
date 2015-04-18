user-sh:
	gcc -c execute.c
	flex flex.l
	bison -d bison.y
	gcc -o user-sh execute.o lex.yy.c bison.tab.c -lfl
clean:
	rm user-sh execute.o lex.yy.c bison.tab.* 
