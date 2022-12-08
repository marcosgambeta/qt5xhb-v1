#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

# check if the module is present in the Qt Framework installation
ifneq ($(wildcard $(QT_INC_DIR)/ActiveQt/.*),)
   MODULE_ACTIVEQT = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtAndroidExtras/.*),)
   MODULE_QTANDROIDEXTRAS = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtBluetooth/.*),)
   MODULE_QTBLUETOOTH = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtCharts/.*),)
   MODULE_QTCHARTS = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtCore/.*),)
   MODULE_QTCORE = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtDataVisualization/.*),)
   MODULE_QTDATAVISUALIZATION = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtDBus/.*),)
   MODULE_QTDBUS = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtDeclarative/.*),)
   MODULE_QTDECLARATIVE = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtDesigner/.*),)
   MODULE_QTDESIGNER = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtGamepad/.*),)
   MODULE_QTGAMEPAD = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtGui/.*),)
   MODULE_QTGUI = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtHelp/.*),)
   MODULE_QTHELP = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtLocation/.*),)
   MODULE_QTLOCATION = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtMacExtras/.*),)
   MODULE_QTMACEXTRAS = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtMultimedia/.*),)
   MODULE_QTMULTIMEDIA = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtMultimediaWidgets/.*),)
   MODULE_QTMULTIMEDIAWIDGETS = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtNetwork/.*),)
   MODULE_QTNETWORK = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtNetworkAuth/.*),)
   MODULE_QTNETWORKAUTH = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtOpenGL/.*),)
   MODULE_QTOPENGL = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtPositioning/.*),)
   MODULE_QTPOSITIONING = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtPrintSupport/.*),)
   MODULE_QTPRINTSUPPORT = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtPurchasing/.*),)
   MODULE_QTPURCHASING = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtQml/.*),)
   MODULE_QTQML = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtQuick/.*),)
   MODULE_QTQUICK = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtQuickWidgets/.*),)
   MODULE_QTQUICKWIDGETS = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtScript/.*),)
   MODULE_QTSCRIPT = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtScriptTools/.*),)
   MODULE_QTSCRIPTTOOLS = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtSensors/.*),)
   MODULE_QTSENSORS = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtSerialPort/.*),)
   MODULE_QTSERIALPORT = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtSql/.*),)
   MODULE_QTSQL = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtSvg/.*),)
   MODULE_QTSVG = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtTextToSpeech/.*),)
   MODULE_QTTEXTTOSPEECH = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtUiTools/.*),)
   MODULE_QTUITOOLS = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtWebChannel/.*),)
   MODULE_QTWEBCHANNEL = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtWebEngine/.*),)
   MODULE_QTWEBENGINE = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtWebEngineCore/.*),)
   MODULE_QTWEBENGINECORE = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtWebEngineWidgets/.*),)
   MODULE_QTWEBENGINEWIDGETS = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtWebKit/.*),)
   MODULE_QTWEBKIT = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtWebKitWidgets/.*),)
   MODULE_QTWEBKITWIDGETS = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtWebSockets/.*),)
   MODULE_QTWEBSOCKETS = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtWebView/.*),)
   MODULE_QTWEBVIEW = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtWidgets/.*),)
   MODULE_QTWIDGETS = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtWinExtras/.*),)
   MODULE_QTWINEXTRAS = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtX11Extras/.*),)
   MODULE_QTX11EXTRAS = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtXml/.*),)
   MODULE_QTXML = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtXmlPatterns/.*),)
   MODULE_QTXMLPATTERNS = yes
endif
