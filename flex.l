%{
	#include "bison.tab.h"
	int flag=0;
%}

%%
"<" {if(flag==0) return '<'; else {flag=0; return STRING;} }
">" {if(flag==0) return '>'; else {flag=0; return STRING;} }
"&" {if(flag==0) return '&'; else {flag=0; return STRING;} }
"|" {if(flag==0) return '|'; else {flag=0; return STRING;}}
[^<>&\n \t]+ {return STRING;}
%%

