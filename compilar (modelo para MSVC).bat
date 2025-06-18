rem
rem Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5
rem
rem Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
rem
rem Batch para compilação (Windows/MSVC)
rem

rem
rem Utilize este .bat como modelo para compilar as bibliotecas para Windows
rem usando MSVC, fazendo uma cópia e ajustando os parâmetros.
rem

rem Cria um PATH reduzido. Embora opcional, evita conflitos com outras
rem ferramentas de programação instaladas no ambiente de desenvolvimento.
set PATH=%SYSTEMROOT%;%SYSTEMROOT%\system32

rem Pasta da instalação do Qt Framework.
set QTDIR=C:\Qt\5.15.0\msvc2019_64

rem Pasta da instalação do Harbour.
set HBDIR=C:\Harbour

rem Configura para compilação com o Visual C++.
rem Altere para %ProgramFiles% caso seu Windows seja 32-bit.
call "%ProgramFiles(x86)%\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"

rem Configura a variável PATH, conforme as variáveis definidas acima.
set PATH=%QTDIR%\bin;%HBDIR%\bin;%PATH%

rem Define a plataforma (win)
set QTPLATFORM=win

rem Define o compilador C++ (msvc/msvc64)
set QTCOMP=msvc64

rem Define se é Harbour ou xHarbour (harbour/xharbour)
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
mingw32-make -f makefile_msvc 1>%QTPLATFORM%_%QTCOMP%-1.log 2>%QTPLATFORM%_%QTCOMP%-2.log

rem Limpa as variáveis criadas.
set QTDIR=
set HBDIR=
set CPPDIR=
set QTPLATFORM=
set QTCOMP=
set HBCOMP=

pause
