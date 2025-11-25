# Qt5xHb

Bibliotecas de ligação para Harbour++/Harbour/xHarbour e Qt Framework 5

Para Qt 5.7 ou superior, você poderá usar o projeto abaixo:

https://github.com/marcosgambeta/qt5xhb-v2

A versão acima utiliza recursos do padrão C++11 (funções lambda, nullptr, ...).

### Passos básicos

1. Instale o Qt Framework 5 de sua escolha.

2. Baixe e compile o [x]Harbour de sua escolha: Harbour++, Harbour 3.2.0dev, Harbour 3.4.0dev (fork de Viktor Szakats) ou xHarbour.

https://github.com/harbour/core  
https://github.com/vszakats/hb  
https://github.com/xHarbour-org/xharbour  
https://github.com/marcosgambeta/harbourpp-v1  

3. Baixe, configure e compile o projeto Qt5xHb. 

Use a seção 'Issues' caso tenha problemas com a compilação:

https://github.com/marcosgambeta/qt5xhb-v1/issues  

### SDK's

#### Harbour 3.2.0dev

##### Qt 5.9.2 - MinGW 5.3.0 - Windows 32-bit

https://www.mediafire.com/file/2zgq2xhfkr01aii/qt5xhb-sdk-qt592-mingw530-harbour320dev-x86-20171009.7z

Baixe, descompacte e execute o arquivo qt5xhb\prompt.bat. Teste com os comandos abaixo:

cd examples [ENTER]  
hbmk2 mainwindow ..\qt5xhb.hbc [ENTER]  
windeployqt --release mainwindow.exe [ENTER]  
mainwindow [ENTER]  

##### Qt 5.9.3 - MinGW 5.3.0 - Windows 32-bit

http://www.mediafire.com/file/foy4y72p6mjj2mn/qt5xhb-sdk-qt593-mingw530-harbour320dev-win32-20171211.7z  

Baixe, descompacte e execute o arquivo qt5xhb\prompt.bat. Teste com os comandos abaixo:

cd examples [ENTER]  
hbmk2 mainwindow ..\qt5xhb.hbc [ENTER]  
windeployqt --release mainwindow.exe [ENTER]  
mainwindow [ENTER]  

#### Harbour 3.4.0dev

##### Qt 5.9.2 - MinGW 5.3.0 - Windows 32-bit

https://www.mediafire.com/file/0e2dif4k7ph9nea/qt5xhb-sdk-qt592-mingw530-harbour340dev-x86-20171117.7z

Baixe, descompacte e execute o arquivo qt5xhb\prompt.bat. Teste com os comandos abaixo:

cd qt5xhb [ENTER]  
cd examples [ENTER]  
hbmk2 mainwindow ..\qt5xhb.hbc [ENTER]  
windeployqt --release mainwindow.exe [ENTER]  
mainwindow [ENTER]  

#### xHarbour 1.2.3dev

##### Qt 5.9.2 - MinGW 5.3.0 - x86 (32-bit)

http://www.mediafire.com/file/joap5q8h2hhprdm/qt5xhb-sdk-qt592-mingw530-xharbour123dev-x86-20171102.7z

Baixe, descompacte e execute o arquivo qt5xhb\prompt.bat. Teste com os comandos abaixo:

cd qt5xhb [ENTER]  
cd examples [ENTER]  
compile mainwindow [ENTER]  
windeployqt --release mainwindow.exe [ENTER]  
mainwindow [ENTER]  

### Outros downloads

Harbour 3.2.0dev para Qt 5.5.1 e MinGW 4.9.2 (32-bit)

http://www.mediafire.com/file/82yql0w5t6a388u/harbour320dev-qt551-mingw492-32bit-20170225-0002.7z
