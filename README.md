# Qt5xHb

Bindings libraries for Harbour++/Harbour/xHarbour and Qt Framework 5

For Qt 5.7 or upper, you can use the project below:

https://github.com/marcosgambeta/qt5xhb-v2

The version above use C++11 resources (lambda functions, nullptr, ...).

## Basic steps

1. Install the Qt Framework 5 of your choice.

2. Download and compile the [x]Harbour of your choice: Harbour 3.2.0dev, Harbour 3.4.0dev (fork of Viktor Szakats), xHarbour or Harbour++.

https://github.com/harbour/core  
https://github.com/vszakats/hb  
https://github.com/xHarbour-org/xharbour  
https://github.com/marcosgambeta/harbourpp-v1  

3. Download, configure and compile the Qt5xHb project. 

Open a issue if you have problems with the compilation:

https://github.com/marcosgambeta/qt5xhb-v1/issues  

## SDK's

### Harbour 3.2.0dev

#### Qt 5.9.2 - MinGW 5.3.0 - Windows 32-bit

https://www.mediafire.com/file/2zgq2xhfkr01aii/qt5xhb-sdk-qt592-mingw530-harbour320dev-x86-20171009.7z

Download, unzip and execute the file qt5xhb\prompt.bat. Test with the commands bellow:

cd examples [ENTER]  
hbmk2 mainwindow ..\qt5xhb.hbc [ENTER]  
windeployqt --release mainwindow.exe [ENTER]  
mainwindow [ENTER]  

#### Qt 5.9.3 - MinGW 5.3.0 - Windows 32-bit

http://www.mediafire.com/file/foy4y72p6mjj2mn/qt5xhb-sdk-qt593-mingw530-harbour320dev-win32-20171211.7z  

Download, unzip and execute the file qt5xhb\prompt.bat. Test with the commands bellow:

cd examples [ENTER]  
hbmk2 mainwindow ..\qt5xhb.hbc [ENTER]  
windeployqt --release mainwindow.exe [ENTER]  
mainwindow [ENTER]  

### Harbour 3.4.0dev

#### Qt 5.9.2 - MinGW 5.3.0 - Windows 32-bit

https://www.mediafire.com/file/0e2dif4k7ph9nea/qt5xhb-sdk-qt592-mingw530-harbour340dev-x86-20171117.7z

Download, unzip and execute the file prompt.bat. Test with the commands bellow:

cd qt5xhb [ENTER]  
cd examples [ENTER]  
hbmk2 mainwindow ..\qt5xhb.hbc [ENTER]  
windeployqt --release mainwindow.exe [ENTER]  
mainwindow [ENTER]  

### xHarbour 1.2.3dev

#### Qt 5.9.2 - MinGW 5.3.0 - x86 (32-bit)

http://www.mediafire.com/file/joap5q8h2hhprdm/qt5xhb-sdk-qt592-mingw530-xharbour123dev-x86-20171102.7z

Download, unzip and execute the file prompt.bat. Test with the commands bellow:

cd qt5xhb [ENTER]  
cd examples [ENTER]  
compile mainwindow [ENTER]  
windeployqt --release mainwindow.exe [ENTER]  
mainwindow [ENTER]  

## Others downloads

Harbour 3.2.0dev para Qt 5.5.1 e MinGW 4.9.2 (32-bit)

http://www.mediafire.com/file/82yql0w5t6a388u/harbour320dev-qt551-mingw492-32bit-20170225-0002.7z

## To contact the developer

Send you message to: marcosgambeta AT outlook DOT com

## More info and extra content

Follow the blog below for more info and extra content:

https://magsoftinfo.com/blog/
