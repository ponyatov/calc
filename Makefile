exec: ./calc.exe
	./calc.exe
C = ypp.tab.cpp lex.yy.c
H = ypp.tab.hpp hpp.hpp
L += -lreadline
./calc.exe: $(C) $(H) Makefile
	$(CXX) -o $@ $(C) $(L)
ypp.tab.cpp ypp.tab.hpp: ypp.ypp
	bison $<
lex.yy.c: lpp.lpp
	flex $<