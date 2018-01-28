#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

# include mak/*.mak
ifeq ($(MODULE_ACTIVEQT),yes)
   include mak/QAxContainer.mak
endif   
ifeq ($(MODULE_ACTIVEQT),yes)
   include mak/QAxServer.mak
endif   
ifeq ($(MODULE_QTANDROIDEXTRAS),yes)
   include mak/QtAndroidExtras.mak
endif
ifeq ($(MODULE_QTBLUETOOTH),yes)
   include mak/QtBluetooth.mak
endif   
ifeq ($(MODULE_QTCORE),yes)
   include mak/QtCore.mak
endif   
ifeq ($(MODULE_QTDECLARATIVE),yes)
   include mak/QtDeclarative.mak
endif   
ifeq ($(MODULE_QTDESIGNER),yes)
   include mak/QtDesigner.mak
endif   
ifeq ($(MODULE_QTGUI),yes)
   include mak/QtGui.mak
endif   
ifeq ($(MODULE_QTHELP),yes)
   include mak/QtHelp.mak
endif   
ifeq ($(MODULE_QTLOCATION),yes)
   include mak/QtLocation.mak
endif   
ifeq ($(MODULE_QTMULTIMEDIA),yes)
   include mak/QtMultimedia.mak
endif   
ifeq ($(MODULE_QTMULTIMEDIAWIDGETS),yes)
   include mak/QtMultimediaWidgets.mak
endif   
ifeq ($(MODULE_QTNETWORK),yes)
   include mak/QtNetwork.mak
endif   
ifeq ($(MODULE_QTOPENGL),yes)
   include mak/QtOpenGL.mak
endif   
ifeq ($(MODULE_QTPOSITIONING),yes)
   include mak/QtPositioning.mak
endif   
ifeq ($(MODULE_QTPRINTSUPPORT),yes)
   include mak/QtPrintSupport.mak
endif   
ifeq ($(MODULE_QTQML),yes)
   include mak/QtQml.mak
endif   
ifeq ($(MODULE_QTQUICK),yes)
   include mak/QtQuick.mak
endif   
ifeq ($(MODULE_QTQUICKWIDGETS),yes)
   include mak/QtQuickWidgets.mak
endif   
ifeq ($(MODULE_QTSCRIPT),yes)
   include mak/QtScript.mak
endif   
ifeq ($(MODULE_QTSCRIPTTOOLS),yes)
   include mak/QtScriptTools.mak
endif   
ifeq ($(MODULE_QTSENSORS),yes)
   include mak/QtSensors.mak
endif   
ifeq ($(MODULE_QTSERIALPORT),yes)
   include mak/QtSerialPort.mak
endif   
ifeq ($(MODULE_QTSQL),yes)
   include mak/QtSql.mak
endif   
ifeq ($(MODULE_QTSVG),yes)
   include mak/QtSvg.mak
endif   
ifeq ($(MODULE_QTTEXTTOSPEECH),yes)
   include mak/QtTextToSpeech.mak
endif   
ifeq ($(MODULE_QTUITOOLS),yes)
   include mak/QtUiTools.mak
endif   
ifeq ($(MODULE_QTWEBCHANNEL),yes)
   include mak/QtWebChannel.mak
endif   
ifeq ($(MODULE_QTWEBENGINE),yes)
   include mak/QtWebEngine.mak
endif   
ifeq ($(MODULE_QTWEBENGINECORE),yes)
   include mak/QtWebEngineCore.mak
endif   
ifeq ($(MODULE_QTWEBENGINEWIDGETS),yes)
   include mak/QtWebEngineWidgets.mak
endif   
ifeq ($(MODULE_QTWEBKIT),yes)
   include mak/QtWebKit.mak
endif   
ifeq ($(MODULE_QTWEBKITWIDGETS),yes)
   include mak/QtWebKitWidgets.mak
endif   
ifeq ($(MODULE_QTWEBSOCKETS),yes)
   include mak/QtWebSockets.mak
endif   
ifeq ($(MODULE_QTWEBVIEW),yes)
   include mak/QtWebView.mak
endif   
ifeq ($(MODULE_QTWIDGETS),yes)
   include mak/QtWidgets.mak
endif   
ifeq ($(MODULE_QTWINEXTRAS),yes)
   include mak/QtWinExtras.mak
endif   
ifeq ($(MODULE_QTXML),yes)
   include mak/QtXml.mak
endif   
ifeq ($(MODULE_QTXMLPATTERNS),yes)
   include mak/QtXmlPatterns.mak
endif   
