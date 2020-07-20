rem
rem Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5
rem
rem Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
rem
rem Prompt de comando para utilização do Qt5xHb com MinGW.
rem

rem Cria um PATH reduzido. Embora opcional, evita conflitos com outras
rem ferramentas de programação instaladas no ambiente de desenvolvimento.
set PATH=%SYSTEMROOT%;%SYSTEMROOT%\system32

rem Pasta da instalação do Qt Framework.
set QTDIR=C:\Qt\Qt5.4.0\5.4\mingw491_32

rem Pasta da instalação do Harbour.
set HBDIR=C:\Harbour

rem Pasta da instalação do compilador C/C++.
set CPPDIR=C:\Qt\Qt5.4.0\Tools\mingw491_32

rem Configura a variável PATH, conforme as variáveis definidas acima.
set PATH=%QTDIR%\bin;%HBDIR%\bin;%CPPDIR%\bin;%PATH%

rem Pasta include do Qt5xHb.
set QT5XHB_INC_DIR=C:\qt5xhb\include

rem Pasta lib do Qt5xHb.
rem Exemplo: C:\qt5xhb\lib\qt540\mingw\windows\harbour\320dev
set QT5XHB_LIB_DIR=

%ComSpec%

rem Limpa as variáveis criadas.
set QTDIR=
set HBDIR=
set CPPDIR=
set QT5XHB_INC_DIR=
set QT5XHB_LIB_DIR=

pause
