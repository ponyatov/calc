log.log: src.src ./calc.exe
	./calc.exe < $< > $@ && tail $(TAIL) $@
	
C = cpp.cpp parser.cpp lexer.cpp
H = hpp.hpp parser.hpp
C = lexer.cpp
H = 
./calc.exe: $(C) $(H)
	$(CXX) $(CXXFLAGS) -o $@ $(C)
	
parser.cpp: ypp.ypp
	bison -o $@ $<
	
lexer.cpp: lpp.lpp
	flex -o $@ $<
	
#exec: ./calc.exe
#	./calc.exe
#C = cpp.cpp ypp.tab.cpp lex.yy.c
#H = hpp.hpp ypp.tab.hpp lex.yy.h 
#L += -lreadline
#
#ifneq (,$(filter Windows_NT win32,$(OS)))
#	# build standalone static .exe only for windows
#	# linux build will use your system .so libraries
#	L += -ltermcap
#	CXXFLAGS += -static
##	-static-libgcc -static-libstdc++
#endif
#
#./calc.exe: $(C) $(H) Makefile
#	@echo build for $(OS)
#	$(CXX) $(CXXFLAGS) -o $@ $(C) $(L) && du -h $@
#ypp.tab.cpp ypp.tab.hpp: ypp.ypp
#	bison $<
#lex.yy.c lex.yy.h: lpp.lpp
#	flex $<
