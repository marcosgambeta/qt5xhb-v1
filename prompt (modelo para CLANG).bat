rem
rem Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5
rem
rem Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
rem
rem Prompt de comando para utilização do Qt5xHb com CLANG/MSYS.
rem

rem Cria um PATH reduzido. Embora opcional, evita conflitos com outras
rem ferramentas de programação instaladas no ambiente de desenvolvimento.
set PATH=%SYSTEMROOT%;%SYSTEMROOT%\system32

rem Pasta da instalação do Qt Framework (use mingw32 ou mingw64).
set QTDIR=C:\msys64\mingw32

rem Pasta da instalação do Harbour.
set HBDIR=C:\harbour

rem Pasta da instalação do compilador C/C++.
set CPPDIR=%QTDIR%

rem Configura a variável PATH, conforme as variáveis definidas acima.
set PATH=%QTDIR%\bin;%HBDIR%\bin;%CPPDIR%\bin;%PATH%

rem Define o compilador C++ (clang ou clang64)
set HB_COMPILER=clang

%ComSpec%

rem Limpa as variáveis criadas.
set QTDIR=
set HBDIR=
set CPPDIR=
set HB_COMPILER=

pause
