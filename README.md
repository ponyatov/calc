# calc
### simple infix calculator using flex/bison/C++
### простой калькулятор с инфиксным синтаксисом написанный на flex/bison/C++

(с) Dmitry Ponyatov <<dponyatov@gmail.com>> , GNU LesserGPL, 2017

github: https://github.com/ponyatov/calc

### full manual on writing this tool from scratch
look here https://ponyatov.quora.com/Text-data-formats-Parsing-with-flex-bison-and-C

## Установка

### Готовая бинарная сборка для Windows

https://github.com/ponyatov/calc/releases/latest

### Компиляция из исходников 

Для компиляции нужен пакет GNU toolchain:
* Windows: MinGW + MSYS качать с http://www.mingw.org/

Нужно установить пакеты:
* `make` (утилита сборки, см. `Makefile`)
* GNU `g++` (комилятор С++)
* flex
* bison
* lib/readline (команданая строка с редактированием)

Прописать установленный MinGW в переменную
```
PATH = C:\MinGW\bin;C:\MinGW\MSys\bin;
```

libreadline не входит в пакет поставки MinGW, поэтому необходима сборка
из исходных кодов, причем нужно собрать статическую библиотеку, чтобы не
таскать кучу .dll, а иметь один calc.exe. 

Для сборки нужна установка MinGW + MSYS (UNIX-среда). Запустите UNIX-консоль
командой `C:\MinGW\msys\1.0\msys.bat`. Обратите внимание что команды должны
вводиться в msys-консоли, а не windows cmd. Скачайте и распакуйте архиd
библиотеки и распакуйте его (при вводе текста не забудьте что работает
TAB completion: набирая начало имени файла можно нажать TAB и получить его
полное имя в командную строку, но проще использовать копирование/вставку):

```
msys/~> wget -c http://ftp.gnu.org/gnu/termcap/termcap-1.3.tar.gz
msys/~> tar zx < termcap-1.3.tar.gz
msys/~> cd termcap-1.3 ; mkdir build ; cd build
msys/~> ../configure --prefix=/mingw --disable-shared && make && make install

msys/~> cd ~

msys/~> wget -c http://ftp.gnu.org/gnu/readline/readline-5.2.tar.gz
msys/~> tar zx < readline-5.2.tar.gz
msys/~> cd readline-5.2 ; mkdir build ; cd build
msys/~> ../configure --prefix=/mingw --disable-shared && make && make install

msys/~> exit
```

Скачать .zip архив с исходным кодом с https://github.com/ponyatov/calc/releases/latest
* или установить утилиту `git` c http://git-scm.com/ и
* получить свежий проект с GitHub:
```
$> git clone https://github.com/ponyatov/calc.git
$> cd calc
```

Запустить сборку калькулятора в коммандной строке windows
```
$> cd calc
$> mingw32-make
```

## Использование

### выход

Ctrl-C

Ctrl-D в Linux, Ctrl-Z в Windows (EOF, конец файла)


### инфиксные выражения

```
-01++2.4*4e-5^(6/0xDeadBeef)
```

### hex/bin

```
0xDeadBeef
0b1101
```

### константы

```
pi
e
```

### переменные

в Pro версии $9.99

### стандартные функции

sin(x)

остальные дописать самостоятельно
