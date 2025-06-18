#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
#

# MOC includes
ifeq ($(MODULE_ACTIVEQT),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/ActiveQt
endif
ifeq ($(MODULE_QTANDROIDEXTRAS),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtAndroidExtras
endif
ifeq ($(MODULE_QTBLUETOOTH),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtBluetooth
endif
ifeq ($(MODULE_QTCHARTS),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtCharts
endif
ifeq ($(MODULE_QTCORE),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtCore
endif
ifeq ($(MODULE_QTDATAVISUALIZATION),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtDataVisualization
endif
ifeq ($(MODULE_QTDBUS),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtDBus
endif
ifeq ($(MODULE_QTDECLARATIVE),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtDeclarative
endif
ifeq ($(MODULE_QTDESIGNER),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtDesigner
endif
ifeq ($(MODULE_QTGAMEPAD),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtGamepad
endif
ifeq ($(MODULE_QTGUI),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtGui
endif
ifeq ($(MODULE_QTHELP),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtHelp
endif
ifeq ($(MODULE_QTLOCATION),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtLocaltion
endif
ifeq ($(MODULE_QTMACEXTRAS),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtMacExtras
endif
ifeq ($(MODULE_QTMULTIMEDIA),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtMultimedia
endif
ifeq ($(MODULE_QTMULTIMEDIAWIDGETS),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtMultimediaWidgets
endif
ifeq ($(MODULE_QTNETWORK),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtNetwork
endif
ifeq ($(MODULE_QTNETWORKAUTH),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtNetworkAuth
endif
ifeq ($(MODULE_QTOPENGL),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtOpenGL
endif
ifeq ($(MODULE_QTPOSITIONING),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtPositioning
endif
ifeq ($(MODULE_QTPRINTSUPPORT),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtPrintSupport
endif
ifeq ($(MODULE_QTPURCHASING),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtPurchasing
endif
ifeq ($(MODULE_QTQML),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtQml
endif
ifeq ($(MODULE_QTQUICK),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtQuick
endif
ifeq ($(MODULE_QTQUICKWIDGETS),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtQuickWidgets
endif
ifeq ($(MODULE_QTSCRIPT),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtScript
endif
ifeq ($(MODULE_QTSCRIPTTOOLS),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtScriptTools
endif
ifeq ($(MODULE_QTSENSORS),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtSensors
endif
ifeq ($(MODULE_QTSERIALPORT),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtSerialPort
endif
ifeq ($(MODULE_QTSQL),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtSql
endif
ifeq ($(MODULE_QTSVG),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtSvg
endif
ifeq ($(MODULE_QTTEXTTOSPEECH),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtTextToSpeech
endif
ifeq ($(MODULE_QTUITOOLS),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtUiTools
endif
ifeq ($(MODULE_QTWEBCHANNEL),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtWebChannel
endif
ifeq ($(MODULE_QTWEBENGINE),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtWebEngine
endif
ifeq ($(MODULE_QTWEBENGINECORE),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtWebEngineCore
endif
ifeq ($(MODULE_QTWEBENGINEWIDGETS),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtWebEngineWidgets
endif
ifeq ($(MODULE_QTWEBKIT),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtWebKit
endif
ifeq ($(MODULE_QTWEBKITWIDGETS),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtWebKitWidgets
endif
ifeq ($(MODULE_QTWEBSOCKETS),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtWebSockets
endif
ifeq ($(MODULE_QTWEBVIEW),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtWebView
endif
ifeq ($(MODULE_QTWIDGETS),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtWidgets
endif
ifeq ($(MODULE_QTWINEXTRAS),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtWinExtras
endif
ifeq ($(MODULE_QTX11EXTRAS),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtX11Extras
endif
ifeq ($(MODULE_QTXML),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtXml
endif
ifeq ($(MODULE_QTXMLPATTERNS),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtXmlPatterns
endif
