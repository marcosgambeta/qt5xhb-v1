#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
#

# add include folder
ifeq ($(MODULE_ACTIVEQT),yes)
   CINCLUDES += -I$(QT_INC_DIR)/ActiveQt
endif
ifeq ($(MODULE_QTANDROIDEXTRAS),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtAndroidExtras
endif
ifeq ($(MODULE_QTBLUETOOTH),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtBluetooth
endif
ifeq ($(MODULE_QTCHARTS),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtCharts
endif
ifeq ($(MODULE_QTCORE),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtCore
endif
ifeq ($(MODULE_QTDATAVISUALIZATION),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtDataVisualization
endif
ifeq ($(MODULE_QTDBUS),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtDBus
endif
ifeq ($(MODULE_QTDECLARATIVE),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtDeclarative
endif
ifeq ($(MODULE_QTDESIGNER),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtDesigner
endif
ifeq ($(MODULE_QTGAMEPAD),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtGamepad
endif
ifeq ($(MODULE_QTGUI),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtGui
endif
ifeq ($(MODULE_QTHELP),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtHelp
endif
ifeq ($(MODULE_QTLOCATION),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtLocation
endif
ifeq ($(MODULE_QTMACEXTRAS),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtMacExtras
endif
ifeq ($(MODULE_QTMULTIMEDIA),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtMultimedia
endif
ifeq ($(MODULE_QTMULTIMEDIAWIDGETS),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtMultimediaWidgets
endif
ifeq ($(MODULE_QTNETWORK),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtNetwork
endif
ifeq ($(MODULE_QTNETWORKAUTH),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtNetworkAuth
endif
ifeq ($(MODULE_QTOPENGL),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtOpenGL
endif
ifeq ($(MODULE_QTPOSITIONING),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtPositioning
endif
ifeq ($(MODULE_QTPRINTSUPPORT),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtPrintSupport
endif
ifeq ($(MODULE_QTPURCHASING),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtPurchasing
endif
ifeq ($(MODULE_QTQML),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtQml
endif
ifeq ($(MODULE_QTQUICK),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtQuick
endif
ifeq ($(MODULE_QTQUICKWIDGETS),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtQuickWidgets
endif
ifeq ($(MODULE_QTSCRIPT),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtScript
endif
ifeq ($(MODULE_QTSCRIPTTOOLS),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtScriptTools
endif
ifeq ($(MODULE_QTSENSORS),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtSensors
endif
ifeq ($(MODULE_QTSERIALPORT),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtSerialPort
endif
ifeq ($(MODULE_QTSQL),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtSql
endif
ifeq ($(MODULE_QTSVG),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtSvg
endif
ifeq ($(MODULE_QTTEXTTOSPEECH),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtTextToSpeech
endif
ifeq ($(MODULE_QTUITOOLS),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtUiTools
endif
ifeq ($(MODULE_QTWEBCHANNEL),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtWebChannel
endif
ifeq ($(MODULE_QTWEBENGINE),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtWebEngine
endif
ifeq ($(MODULE_QTWEBENGINECORE),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtWebEngineCore
endif
ifeq ($(MODULE_QTWEBENGINEWIDGETS),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtWebEngineWidgets
endif
ifeq ($(MODULE_QTWEBKIT),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtWebKit
endif
ifeq ($(MODULE_QTWEBKITWIDGETS),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtWebKitWidgets
endif
ifeq ($(MODULE_QTWEBSOCKETS),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtWebSockets
endif
ifeq ($(MODULE_QTWEBVIEW),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtWebView
endif
ifeq ($(MODULE_QTWIDGETS),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtWidgets
endif
ifeq ($(MODULE_QTWINEXTRAS),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtWinExtras
endif
ifeq ($(MODULE_QTX11EXTRAS),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtX11Extras
endif
ifeq ($(MODULE_QTXML),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtXml
endif
ifeq ($(MODULE_QTXMLPATTERNS),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtXmlPatterns
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
ifeq ($(MODULE_QTDATAVISUALIZATION),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtDataVisualization
endif
ifeq ($(MODULE_QTDBUS),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtDBus
endif
ifeq ($(MODULE_QTDECLARATIVE),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtDeclarative
endif
ifeq ($(MODULE_QTDESIGNER),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtDesigner
endif
ifeq ($(MODULE_QTGAMEPAD),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtGamepad
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
ifeq ($(MODULE_QTNETWORKAUTH),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtNetworkAuth
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
ifeq ($(MODULE_QTPURCHASING),yes)
   CINCLUDES += -I$(QT5XHB_SRC_DIR)/QtPurchasing
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
