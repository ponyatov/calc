#ifndef _H_HPP
#define _H_HPP

#include <iostream>
#include <iomanip>
#include <cstdlib>

#define _USE_MATH_DEFINES
#include <cmath>

#include <readline/readline.h>		// lib/readline edit in command line
#include <readline/history.h>

using namespace std;

extern int yylex();					
extern int yylineno;
extern char* yytext;
//#include "lex.yy.h"					// flex/bison parser interface
extern int yyparse();
extern void yyerror(string);
#include "ypp.tab.hpp"

#endif // _H_HPP
