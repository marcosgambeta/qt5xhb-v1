rem
rem Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5
rem
rem Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
rem
rem Batch para compilação (Windows/MinGW)
rem

rem
rem Utilize este .bat como modelo para compilar as bibliotecas para Windows
rem usando MinGW, fazendo uma cópia e ajustando os parâmetros e caminhos.
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

rem Define se é Harbour ou xHarbour (harbour ou xharbour)
set HBCOMP=harbour

rem Define a versão do Harbour/xHarbour (320dev, 340dev, ...)
set HBVER=320dev

rem Define a versão do Qt (qt540, qt541, ...)
set QTVERSION=qt540

rem Define se é 32-bit ou 64-bit (32 ou 64)
set QT32OR64=32

rem Define se é Angle, OpenGL ou Dynamic (angle, opengl ou dynamic)
set QTANGLEOROPENGL=opengl

rem Define o compilador C++ (mingw)
set QTCOMP=mingw

rem Define a plataforma (windows)
set QTPLATFORM=windows

rem Cria a pasta para as bibliotecas, caso não exista.
if not exist lib mkdir lib
if not exist lib\%QTVERSION% mkdir lib\%QTVERSION%
if not exist lib\%QTVERSION%\%QTANGLEOROPENGL% mkdir lib\%QTVERSION%\%QTANGLEOROPENGL%
if not exist lib\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP% mkdir lib\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%
if not exist lib\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64% mkdir lib\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%
if not exist lib\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM% mkdir lib\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%
if not exist lib\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP% mkdir lib\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP%
if not exist lib\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP%\%HBVER% mkdir lib\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP%\%HBVER%

rem Cria a pasta para os objetos, caso não exista.
if not exist obj mkdir obj
if not exist obj\%QTVERSION% mkdir obj\%QTVERSION%
if not exist obj\%QTVERSION%\%QTANGLEOROPENGL% mkdir obj\%QTVERSION%\%QTANGLEOROPENGL%
if not exist obj\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP% mkdir obj\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%
if not exist obj\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64% mkdir obj\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%
if not exist obj\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM% mkdir obj\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%
if not exist obj\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP% mkdir obj\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP%
if not exist obj\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP%\%HBVER% mkdir obj\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP%\%HBVER%

rem Compila as bibliotecas.
mingw32-make -f makefile_mingw 1>%QTVERSION%_%QTANGLEOROPENGL%_%QTCOMP%_%QT32OR64%_%QTPLATFORM%_%HBCOMP%_%HBVER%-1.log 2>%QTVERSION%_%QTANGLEOROPENGL%_%QTCOMP%_%QT32OR64%_%QTPLATFORM%_%HBCOMP%_%HBVER%-2.log

rem Limpa as variáveis criadas.
set QTDIR=
set HBDIR=
set CPPDIR=
set HBCOMP=
set HBVER=
set QTVERSION=
set QT32OR64=
set QTANGLEOROPENGL=
set QTCOMP=
set QTPLATFORM=

pause
