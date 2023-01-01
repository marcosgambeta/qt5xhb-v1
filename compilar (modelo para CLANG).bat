rem
rem Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5
rem
rem Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
rem
rem Batch para compilação (Windows/CLANG/MSYS)
rem

rem
rem Utilize este .bat como modelo para compilar as bibliotecas para Windows
rem usando CLANG/MSYS, fazendo uma cópia e ajustando os parâmetros e caminhos.
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

rem Define a plataforma (win)
set QTPLATFORM=win

rem Define o compilador C++ (clang/clang64)
set QTCOMP=clang

rem Define se é Harbour ou xHarbour (harbour ou xharbour)
set HBCOMP=harbour

rem Cria a pasta para as bibliotecas, caso não exista.
if not exist lib mkdir lib
if not exist lib\%QTPLATFORM% mkdir lib\%QTPLATFORM%
if not exist lib\%QTPLATFORM%\%QTCOMP% mkdir lib\%QTPLATFORM%\%QTCOMP%

rem Cria a pasta para os objetos, caso não exista.
if not exist obj mkdir obj
if not exist obj\%QTPLATFORM% mkdir obj\%QTPLATFORM%
if not exist obj\%QTPLATFORM%\%QTCOMP% mkdir obj\%QTPLATFORM%\%QTCOMP%

rem Compila as bibliotecas.
mingw32-make -f makefile_clang 1>%QTPLATFORM%_%QTCOMP%-1.log 2>%QTPLATFORM%_%QTCOMP%-2.log

rem Limpa as variáveis criadas.
set QTDIR=
set HBDIR=
set CPPDIR=
set QTPLATFORM=
set QTCOMP=
set HBCOMP=

pause
