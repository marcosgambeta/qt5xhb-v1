rem
rem Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5
rem
rem Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
rem
rem Prompt de comando para utiliza��o do Qt5xHb com MinGW.
rem

rem Cria um PATH reduzido. Embora opcional, evita conflitos com outras
rem ferramentas de programa��o instaladas no ambiente de desenvolvimento.
set PATH=%SYSTEMROOT%;%SYSTEMROOT%\system32

rem Pasta da instala��o do Qt Framework.
set QTDIR=C:\Qt\Qt5.4.0\5.4\mingw491_32

rem Pasta da instala��o do Harbour.
set HBDIR=C:\Harbour

rem Pasta da instala��o do compilador C/C++.
set CPPDIR=C:\Qt\Qt5.4.0\Tools\mingw491_32

rem Configura a vari�vel PATH, conforme as vari�veis definidas acima.
set PATH=%QTDIR%\bin;%HBDIR%\bin;%CPPDIR%\bin;%PATH%

%ComSpec%

rem Limpa as vari�veis criadas.
set QTDIR=
set HBDIR=
set CPPDIR=

pause
