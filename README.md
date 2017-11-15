# calc
### simple infix calculator using flex/bison/C++
### простой калькулятор с инфиксным синтаксисом написанный на flex/bison/C++

(с) Dmitry Ponyatov <<dponyatov@gmail.com>> , GNU LesserGPL, 2017

github: https://github.com/ponyatov/calc

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

Скачать .zip архив с исходным кодом с https://github.com/ponyatov/calc/releases/latest
* или установить утилиту `git` c http://git-scm.com/ и
* получить свежий проект с GitHub:
```
$> git clone https://github.com/ponyatov/calc.git
$> cd calc
```

Прописать установленный MinGW в переменную
```
PATH = C:\MinGW\bin;C:\MinGW\MSys\bin;
```

Запустить сборку
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
