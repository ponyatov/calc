exec: ./calc.exe
	./calc.exe
C = cpp.cpp ypp.tab.cpp lex.yy.c
H = hpp.hpp ypp.tab.hpp
./calc.exe: $(C) $(H)
	$(CXX) -o $@ $(C)
ypp.tab.cpp ypp.tab.hpp: ypp.ypp
	bison $<
lex.yy.c: lpp.lpp
	flex $<