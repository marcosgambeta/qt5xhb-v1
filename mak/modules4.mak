#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

# add include folder
ifeq ($(MODULE_ACTIVEQT),yes)
   CINCLUDES += -I$(QTDIR)/include/ActiveQt
endif
ifeq ($(MODULE_QTANDROIDEXTRAS),yes)
   CINCLUDES += -I$(QTDIR)/include/QtAndroidExtras
endif
ifeq ($(MODULE_QTBLUETOOTH),yes)
   CINCLUDES += -I$(QTDIR)/include/QtBluetooth
endif
ifeq ($(MODULE_QTCHARTS),yes)
   CINCLUDES += -I$(QTDIR)/include/QtCharts
endif
ifeq ($(MODULE_QTCORE),yes)
   CINCLUDES += -I$(QTDIR)/include/QtCore
endif
ifeq ($(MODULE_QTDECLARATIVE),yes)
   CINCLUDES += -I$(QTDIR)/include/QtDeclarative
endif
ifeq ($(MODULE_QTDESIGNER),yes)
   CINCLUDES += -I$(QTDIR)/include/QtDesigner
endif
ifeq ($(MODULE_QTGUI),yes)
   CINCLUDES += -I$(QTDIR)/include/QtGui
endif
ifeq ($(MODULE_QTHELP),yes)
   CINCLUDES += -I$(QTDIR)/include/QtHelp
endif
ifeq ($(MODULE_QTLOCATION),yes)
   CINCLUDES += -I$(QTDIR)/include/QtLocation
endif
ifeq ($(MODULE_QTMACEXTRAS),yes)
   CINCLUDES += -I$(QTDIR)/include/QtMacExtras
endif
ifeq ($(MODULE_QTMULTIMEDIA),yes)
   CINCLUDES += -I$(QTDIR)/include/QtMultimedia
endif
ifeq ($(MODULE_QTMULTIMEDIAWIDGETS),yes)
   CINCLUDES += -I$(QTDIR)/include/QtMultimediaWidgets
endif
ifeq ($(MODULE_QTNETWORK),yes)
   CINCLUDES += -I$(QTDIR)/include/QtNetwork
endif
ifeq ($(MODULE_QTOPENGL),yes)
   CINCLUDES += -I$(QTDIR)/include/QtOpenGL
endif
ifeq ($(MODULE_QTPOSITIONING),yes)
   CINCLUDES += -I$(QTDIR)/include/QtPositioning
endif
ifeq ($(MODULE_QTPRINTSUPPORT),yes)
   CINCLUDES += -I$(QTDIR)/include/QtPrintSupport
endif
ifeq ($(MODULE_QTQML),yes)
   CINCLUDES += -I$(QTDIR)/include/QtQml
endif
ifeq ($(MODULE_QTQUICK),yes)
   CINCLUDES += -I$(QTDIR)/include/QtQuick
endif
ifeq ($(MODULE_QTQUICKWIDGETS),yes)
   CINCLUDES += -I$(QTDIR)/include/QtQuickWidgets
endif
ifeq ($(MODULE_QTSCRIPT),yes)
   CINCLUDES += -I$(QTDIR)/include/QtScript
endif
ifeq ($(MODULE_QTSCRIPTTOOLS),yes)
   CINCLUDES += -I$(QTDIR)/include/QtScriptTools
endif
ifeq ($(MODULE_QTSENSORS),yes)
   CINCLUDES += -I$(QTDIR)/include/QtSensors
endif
ifeq ($(MODULE_QTSERIALPORT),yes)
   CINCLUDES += -I$(QTDIR)/include/QtSerialPort
endif
ifeq ($(MODULE_QTSQL),yes)
   CINCLUDES += -I$(QTDIR)/include/QtSql
endif
ifeq ($(MODULE_QTSVG),yes)
   CINCLUDES += -I$(QTDIR)/include/QtSvg
endif
ifeq ($(MODULE_QTTEXTTOSPEECH),yes)
   CINCLUDES += -I$(QTDIR)/include/QtTextToSpeech
endif
ifeq ($(MODULE_QTUITOOLS),yes)
   CINCLUDES += -I$(QTDIR)/include/QtUiTools
endif
ifeq ($(MODULE_QTWEBCHANNEL),yes)
   CINCLUDES += -I$(QTDIR)/include/QtWebChannel
endif
ifeq ($(MODULE_QTWEBENGINE),yes)
   CINCLUDES += -I$(QTDIR)/include/QtWebEngine
endif
ifeq ($(MODULE_QTWEBENGINECORE),yes)
   CINCLUDES += -I$(QTDIR)/include/QtWebEngineCore
endif
ifeq ($(MODULE_QTWEBENGINEWIDGETS),yes)
   CINCLUDES += -I$(QTDIR)/include/QtWebEngineWidgets
endif
ifeq ($(MODULE_QTWEBKIT),yes)
   CINCLUDES += -I$(QTDIR)/include/QtWebKit
endif
ifeq ($(MODULE_QTWEBKITWIDGETS),yes)
   CINCLUDES += -I$(QTDIR)/include/QtWebKitWidgets
endif
ifeq ($(MODULE_QTWEBSOCKETS),yes)
   CINCLUDES += -I$(QTDIR)/include/QtWebSockets
endif
ifeq ($(MODULE_QTWEBVIEW),yes)
   CINCLUDES += -I$(QTDIR)/include/QtWebView
endif
ifeq ($(MODULE_QTWIDGETS),yes)
   CINCLUDES += -I$(QTDIR)/include/QtWidgets
endif
ifeq ($(MODULE_QTWINEXTRAS),yes)
   CINCLUDES += -I$(QTDIR)/include/QtWinExtras
endif
ifeq ($(MODULE_QTX11EXTRAS),yes)
   CINCLUDES += -I$(QTDIR)/include/QtX11Extras
endif
ifeq ($(MODULE_QTXML),yes)
   CINCLUDES += -I$(QTDIR)/include/QtXml
endif
ifeq ($(MODULE_QTXMLPATTERNS),yes)
   CINCLUDES += -I$(QTDIR)/include/QtXmlPatterns
endif

ifeq ($(MODULE_ACTIVEQT),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/ActiveQt
endif
ifeq ($(MODULE_QTANDROIDEXTRAS),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtAndroidExtras
endif
ifeq ($(MODULE_QTBLUETOOTH),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtBluetooth
endif
ifeq ($(MODULE_QTCHARTS),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtCharts
endif
ifeq ($(MODULE_QTCORE),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtCore
endif
ifeq ($(MODULE_QTDECLARATIVE),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtDeclarative
endif
ifeq ($(MODULE_QTDESIGNER),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtDesigner
endif
ifeq ($(MODULE_QTGUI),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtGui
endif
ifeq ($(MODULE_QTHELP),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtHelp
endif
ifeq ($(MODULE_QTLOCATION),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtLocation
endif
ifeq ($(MODULE_QTMACEXTRAS),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtMacExtras
endif
ifeq ($(MODULE_QTMULTIMEDIA),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtMultimedia
endif
ifeq ($(MODULE_QTMULTIMEDIAWIDGETS),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtMultimediaWidgets
endif
ifeq ($(MODULE_QTNETWORK),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtNetwork
endif
ifeq ($(MODULE_QTOPENGL),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtOpenGL
endif
ifeq ($(MODULE_QTPOSITIONING),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtPositioning
endif
ifeq ($(MODULE_QTPRINTSUPPORT),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtPrintSupport
endif
ifeq ($(MODULE_QTQML),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtQml
endif
ifeq ($(MODULE_QTQUICK),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtQuick
endif
ifeq ($(MODULE_QTQUICKWIDGETS),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtQuickWidgets
endif
ifeq ($(MODULE_QTSCRIPT),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtScript
endif
ifeq ($(MODULE_QTSCRIPTTOOLS),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtScriptTools
endif
ifeq ($(MODULE_QTSENSORS),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtSensors
endif
ifeq ($(MODULE_QTSERIALPORT),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtSerialPort
endif
ifeq ($(MODULE_QTSQL),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtSql
endif
ifeq ($(MODULE_QTSVG),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtSvg
endif
ifeq ($(MODULE_QTTEXTTOSPEECH),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtTextToSpeech
endif
ifeq ($(MODULE_QTUITOOLS),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtUiTools
endif
ifeq ($(MODULE_QTWEBCHANNEL),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtWebChannel
endif
ifeq ($(MODULE_QTWEBENGINE),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtWebEngine
endif
ifeq ($(MODULE_QTWEBENGINECORE),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtWebEngineCore
endif
ifeq ($(MODULE_QTWEBENGINEWIDGETS),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtWebEngineWidgets
endif
ifeq ($(MODULE_QTWEBKIT),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtWebKit
endif
ifeq ($(MODULE_QTWEBKITWIDGETS),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtWebKitWidgets
endif
ifeq ($(MODULE_QTWEBSOCKETS),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtWebSockets
endif
ifeq ($(MODULE_QTWEBVIEW),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtWebView
endif
ifeq ($(MODULE_QTWIDGETS),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtWidgets
endif
ifeq ($(MODULE_QTWINEXTRAS),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtWinExtras
endif
ifeq ($(MODULE_QTX11EXTRAS),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtX11Extras
endif
ifeq ($(MODULE_QTXML),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtXml
endif
ifeq ($(MODULE_QTXMLPATTERNS),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtXmlPatterns
endif
