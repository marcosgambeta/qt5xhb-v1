#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

# MOC includes
ifeq ($(MODULE_ACTIVEQT),yes)
   MOCINCLUDES += -I$(QTDIR)/include/ActiveQt
endif
ifeq ($(MODULE_QTANDROIDEXTRAS),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtAndroidExtras
endif
ifeq ($(MODULE_QTBLUETOOTH),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtBluetooth
endif
ifeq ($(MODULE_QTCORE),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtCore
endif
ifeq ($(MODULE_QTDECLARATIVE),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtDeclarative
endif
ifeq ($(MODULE_QTDESIGNER),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtDesigner
endif
ifeq ($(MODULE_QTGUI),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtGui
endif
ifeq ($(MODULE_QTHELP),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtHelp
endif
ifeq ($(MODULE_QTLOCATION),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtLocaltion
endif
ifeq ($(MODULE_QTMACEXTRAS),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtMacExtras
endif
ifeq ($(MODULE_QTMULTIMEDIA),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtMultimedia
endif
ifeq ($(MODULE_QTMULTIMEDIAWIDGETS),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtMultimediaWidgets
endif
ifeq ($(MODULE_QTNETWORK),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtNetwork
endif
ifeq ($(MODULE_QTOPENGL),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtOpenGL
endif
ifeq ($(MODULE_QTPOSITIONING),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtPositioning
endif
ifeq ($(MODULE_QTPRINTSUPPORT),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtPrintSupport
endif
ifeq ($(MODULE_QTQML),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtQml
endif
ifeq ($(MODULE_QTQUICK),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtQuick
endif
ifeq ($(MODULE_QTQUICKWIDGETS),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtQuickWidgets
endif
ifeq ($(MODULE_QTSCRIPT),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtScript
endif
ifeq ($(MODULE_QTSCRIPTTOOLS),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtScriptTools
endif
ifeq ($(MODULE_QTSENSORS),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtSensors
endif
ifeq ($(MODULE_QTSERIALPORT),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtSerialPort
endif
ifeq ($(MODULE_QTSQL),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtSql
endif
ifeq ($(MODULE_QTSVG),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtSvg
endif
ifeq ($(MODULE_QTTEXTTOSPEECH),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtTextToSpeech
endif
ifeq ($(MODULE_QTUITOOLS),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtUiTools
endif
ifeq ($(MODULE_QTWEBCHANNEL),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtWebChannel
endif
ifeq ($(MODULE_QTWEBENGINE),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtWebEngine
endif
ifeq ($(MODULE_QTWEBENGINECORE),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtWebEngineCore
endif
ifeq ($(MODULE_QTWEBENGINEWIDGETS),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtWebEngineWidgets
endif
ifeq ($(MODULE_QTWEBKIT),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtWebKit
endif
ifeq ($(MODULE_QTWEBKITWIDGETS),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtWebKitWidgets
endif
ifeq ($(MODULE_QTWEBSOCKETS),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtWebSockets
endif
ifeq ($(MODULE_QTWEBVIEW),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtWebView
endif
ifeq ($(MODULE_QTWIDGETS),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtWidgets
endif
ifeq ($(MODULE_QTWINEXTRAS),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtWinExtras
endif
ifeq ($(MODULE_QTX11EXTRAS),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtX11Extras
endif
ifeq ($(MODULE_QTXML),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtXml
endif
ifeq ($(MODULE_QTXMLPATTERNS),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtXmlPatterns
endif
