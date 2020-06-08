rem
rem Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5
rem
rem Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
rem
rem Batch para Android
rem

rem Cria um PATH reduzido. Embora opcional, evita conflitos com outras
rem ferramentas de programação instaladas no ambiente de desenvolvimento.
set PATH=%SYSTEMROOT%;%SYSTEMROOT%\system32

rem Define a plataforma.
set QTPLATFORM=android_armv7

rem Pasta da instalação do Qt Framework, para a plataforma acima.
set QTDIR=C:\Qt\5.9.2\android_armv7

rem Pasta da instalação do Harbour.
set HBDIR=C:\Harbour

rem Pasta da instalação do compilador C/C++.
rem set CPPDIR=C:\Qt\Tools\mingw492_32

rem --- configuração do NDK ---

rem Pasta da instalação do Android NDK.
set NDKDIR=C:\Android-ndk-r15

rem Definição do toolchain.
set NDKTOOLCHAIN=arm-linux-androideabi-4.9

rem Definição do prefixo do toolchain.
set NDKTOOLCHAINPREFIX=arm-linux-androideabi

rem Definição da versão do GCC.
set NDKGCCVER=4.9

rem Definição da versão da arquitetura.
set NDKGCCARCH=armeabi

rem Definição da API do Android.
set NDKAPIVER=19

rem Definição da arquitetura.
set NDKAPIARCH=arm

rem ---

rem Configura a variável PATH, conforme as variáveis definidas acima.
rem set PATH=%QTDIR%\bin;%HBDIR%\bin;%CPPDIR%\bin;%PATH%

rem Define se é Harbour ou xHarbour (harbour ou xharbour).
set HBCOMP=harbour

rem Define a versão do Harbour/xHarbour.
set HBVER=320dev

rem Define a versão do Qt (qt530, qt531 ou qt532).
set QTVERSION=qt592

rem Define se é 32-bit ou 64-bit (32 ou 64).
set QT32OR64=32

rem Define se é MinGW ou MSVC (mingw, msvc2010, msvc2012 ou msvc2013).
set QTCOMP=mingw

rem Cria a pasta para as bibliotecas, caso não exista.
if not exist lib mkdir lib
if not exist lib\%QTVERSION% mkdir lib\%QTVERSION%
if not exist lib\%QTVERSION%\%QTCOMP% mkdir lib\%QTVERSION%\%QTCOMP%
if not exist lib\%QTVERSION%\%QTCOMP%\%QT32OR64% mkdir lib\%QTVERSION%\%QTCOMP%\%QT32OR64%
if not exist lib\%QTVERSION%\%QTCOMP%\%QT32OR64%\%QTPLATFORM% mkdir lib\%QTVERSION%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%
if not exist lib\%QTVERSION%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP% mkdir lib\%QTVERSION%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP%
if not exist lib\%QTVERSION%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP%\%HBVER% mkdir lib\%QTVERSION%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP%\%HBVER%

rem Cria a pasta para os objetos, caso não exista.
if not exist obj mkdir obj
if not exist obj\%QTVERSION% mkdir obj\%QTVERSION%
if not exist obj\%QTVERSION%\%QTCOMP% mkdir obj\%QTVERSION%\%QTCOMP%
if not exist obj\%QTVERSION%\%QTCOMP%\%QT32OR64% mkdir obj\%QTVERSION%\%QTCOMP%\%QT32OR64%
if not exist obj\%QTVERSION%\%QTCOMP%\%QT32OR64%\%QTPLATFORM% mkdir obj\%QTVERSION%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%
if not exist obj\%QTVERSION%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP% mkdir obj\%QTVERSION%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP%
if not exist obj\%QTVERSION%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP%\%HBVER% mkdir obj\%QTVERSION%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP%\%HBVER%

rem Compila as bibliotecas.
mingw32-make.exe -f makefile_android 1>%QTVERSION%_%QTCOMP%_%QT32OR64%_%QTPLATFORM%_%HBCOMP%_%HBVER%-1.log 2>%QTVERSION%_%QTCOMP%_%QT32OR64%_%QTPLATFORM%_%HBCOMP%_%HBVER%-2.log

rem Limpa as variáveis criadas.
set QTDIR=
set HBDIR=
set CPPDIR=
set QTVERSION=
set QTCOMP=
set QT32OR64=
set QTPLATFORM=
set HBCOMP=
set HBVER=

pause
