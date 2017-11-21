exec: ./calc.exe
	./calc.exe
C = cpp.cpp ypp.tab.cpp lex.yy.c
H = hpp.hpp ypp.tab.hpp lex.yy.h 
L += -lreadline

ifneq (,$(filter Windows_NT win32,$(OS)))
	# build standalone static .exe only for windows
	# linux build will use your system .so libraries
	L += -ltermcap
	CXXFLAGS += -static
#	-static-libgcc -static-libstdc++
endif

./calc.exe: $(C) $(H) Makefile
	@echo build for $(OS)
	$(CXX) $(CXXFLAGS) -o $@ $(C) $(L) && du -h $@
ypp.tab.cpp ypp.tab.hpp: ypp.ypp
	bison $<
lex.yy.c lex.yy.h: lpp.lpp
	flex $<
