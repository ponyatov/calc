#include "hpp.hpp"

// error callback
#define YYERR "error: line #"<<yylineno<<":"<<msg<<"["<<yytext<<"]\n"
void yyerror(string msg) { cerr<<YYERR; }

