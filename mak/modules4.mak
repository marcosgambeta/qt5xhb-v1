#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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
ifeq ($(MODULE_QTUITOOLS),yes)
   CINCLUDES += -I$(QTDIR)/include/QtUiTools
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
