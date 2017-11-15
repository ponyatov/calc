	DLL =
ifeq ($(OS),Windows_NT)
	DLL = ./readline5.dll ./history5.dll
endif
./%.dll: C:/MinGW/bin/%.dll
	cp $< $@

exec: zip ./calc.exe $(DLL)
	./calc.exe
C = ypp.tab.cpp lex.yy.c
H = ypp.tab.hpp hpp.hpp
L += -lreadline
./calc.exe: $(C) $(H) $(DLL)
	$(CXX) -o $@ $(C) $(L)
ypp.tab.cpp ypp.tab.hpp: ypp.ypp
	bison $<
lex.yy.c: lpp.lpp
	flex $<

zip: calc.zip
calc.zip: ./calc.exe $(DLL) README.md
	zip $@ $?
