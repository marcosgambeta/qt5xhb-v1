#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

# check if the module is present in the Qt Framework installation
ifneq ($(wildcard $(QTDIR)/include/ActiveQt/.*),)
   MODULE_ACTIVEQT = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtAndroidExtras/.*),)
   MODULE_QTANDROIDEXTRAS = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtBluetooth/.*),)
   MODULE_QTBLUETOOTH = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtCore/.*),)
   MODULE_QTCORE = yes
endif
#ifneq ($(wildcard $(QTDIR)/include/QtDBus/.*),)
#   MODULE_QTDBUS = yes
#endif
ifneq ($(wildcard $(QTDIR)/include/QtDeclarative/.*),)
   MODULE_QTDECLARATIVE = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtDesigner/.*),)
   MODULE_QTDESIGNER = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtGui/.*),)
   MODULE_QTGUI = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtHelp/.*),)
   MODULE_QTHELP = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtLocation/.*),)
   MODULE_QTLOCATION = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtMacExtras/.*),)
   MODULE_QTMACEXTRAS = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtMultimedia/.*),)
   MODULE_QTMULTIMEDIA = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtMultimediaWidgets/.*),)
   MODULE_QTMULTIMEDIAWIDGETS = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtNetwork/.*),)
   MODULE_QTNETWORK = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtOpenGL/.*),)
   MODULE_QTOPENGL = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtPositioning/.*),)
   MODULE_QTPOSITIONING = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtPrintSupport/.*),)
   MODULE_QTPRINTSUPPORT = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtQml/.*),)
   MODULE_QTQML = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtQuick/.*),)
   MODULE_QTQUICK = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtQuickWidgets/.*),)
   MODULE_QTQUICKWIDGETS = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtScript/.*),)
   MODULE_QTSCRIPT = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtScriptTools/.*),)
   MODULE_QTSCRIPTTOOLS = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtSensors/.*),)
   MODULE_QTSENSORS = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtSerialPort/.*),)
   MODULE_QTSERIALPORT = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtSql/.*),)
   MODULE_QTSQL = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtSvg/.*),)
   MODULE_QTSVG = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtUiTools/.*),)
   MODULE_QTUITOOLS = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtWebChannel/.*),)
   MODULE_QTWEBCHANELL = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtWebEngine/.*),)
   MODULE_QTWEBENGINE = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtWebEngineCore/.*),)
   MODULE_QTWEBENGINECORE = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtWebEngineWidgets/.*),)
   MODULE_QTWEBENGINEWIDGETS = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtWebKit/.*),)
   MODULE_QTWEBKIT = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtWebKitWidgets/.*),)
   MODULE_QTWEBKITWIDGETS = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtWebSockets/.*),)
   MODULE_QTWEBSOCKETS = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtWebView/.*),)
   MODULE_QTWEBVIEW = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtWidgets/.*),)
   MODULE_QTWIDGETS = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtWinExtras/.*),)
   MODULE_QTWINEXTRAS = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtX11Extras/.*),)
   MODULE_QTX11EXTRAS = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtXml/.*),)
   MODULE_QTXML = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtXmlPatterns/.*),)
   MODULE_QTXMLPATTERNS = yes
endif
