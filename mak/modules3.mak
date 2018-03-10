#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

# add flags to C++ compiler
ifeq ($(MODULE_ACTIVEQT),yes)
   CFLAGS += -DQT_ACTIVEQT_LIB
endif
ifeq ($(MODULE_ACTIVEQT),yes)
   CFLAGS += -DQT_AXCONTAINER_LIB
endif
ifeq ($(MODULE_ACTIVEQT),yes)
   CFLAGS += -DQT_AXSERVER_LIB
endif
ifeq ($(MODULE_QTANDROIDEXTRAS),yes)
   CFLAGS += -DQT_ANDROIDEXTRAS_LIB
endif
ifeq ($(MODULE_QTBLUETOOTH),yes)
   CFLAGS += -DQT_BLUETOOTH_LIB
endif
ifeq ($(MODULE_QTCHARTS),yes)
   CFLAGS += -DQT_CHARTS_LIB
endif
ifeq ($(MODULE_QTCORE),yes)
   CFLAGS += -DQT_CORE_LIB
endif
ifeq ($(MODULE_QTDATAVISUALIZATION),yes)
   CFLAGS += -DQT_DATAVISUALIZATION_LIB
endif
ifeq ($(MODULE_QTDBUS),yes)
   CFLAGS += -DQT_DBUS_LIB
endif
ifeq ($(MODULE_QTDECLARATIVE),yes)
   CFLAGS += -DQT_DECLARATIVE_LIB
endif
ifeq ($(MODULE_QTDESIGNER),yes)
   CFLAGS += -DQT_DESIGNER_LIB
endif
ifeq ($(MODULE_QTGAMEPAD),yes)
   CFLAGS += -DQT_GAMEPAD_LIB
endif
ifeq ($(MODULE_QTGUI),yes)
   CFLAGS += -DQT_GUI_LIB
endif
ifeq ($(MODULE_QTHELP),yes)
   CFLAGS += -DQT_HELP_LIB
endif
ifeq ($(MODULE_QTLOCATION),yes)
   CFLAGS += -DQT_LOCATION_LIB
endif
ifeq ($(MODULE_QTMACEXTRAS),yes)
   CFLAGS += -DQT_MACEXTRAS_LIB
endif
ifeq ($(MODULE_QTMULTIMEDIA),yes)
   CFLAGS += -DQT_MULTIMEDIA_LIB
endif
ifeq ($(MODULE_QTMULTIMEDIAWIDGETS),yes)
   CFLAGS += -DQT_MULTIMEDIAWIDGETS_LIB
endif
ifeq ($(MODULE_QTNETWORK),yes)
   CFLAGS += -DQT_NETWORK_LIB
endif
ifeq ($(MODULE_QTNETWORKAUTH),yes)
   CFLAGS += -DQT_NETWORKAUTH_LIB
endif
ifeq ($(MODULE_QTOPENGL),yes)
   CFLAGS += -DQT_OPENGL_LIB
endif
ifeq ($(MODULE_QTPOSITIONING),yes)
   CFLAGS += -DQT_POSITIONING_LIB
endif
ifeq ($(MODULE_QTPRINTSUPPORT),yes)
   CFLAGS += -DQT_PRINTSUPPORT_LIB
endif
ifeq ($(MODULE_QTPURCHASING),yes)
   CFLAGS += -DQT_PURCHASING_LIB
endif
ifeq ($(MODULE_QTQML),yes)
   CFLAGS += -DQT_QML_LIB
endif
ifeq ($(MODULE_QTQUICK),yes)
   CFLAGS += -DQT_QUICK_LIB
endif
ifeq ($(MODULE_QTQUICKWIDGETS),yes)
   CFLAGS += -DQT_QUICKWIDGETS_LIB
endif
ifeq ($(MODULE_QTSCRIPT),yes)
   CFLAGS += -DQT_SCRIPT_LIB
endif
ifeq ($(MODULE_QTSCRIPTTOOLS),yes)
   CFLAGS += -DQT_SCRIPTTOOLS_LIB
endif
ifeq ($(MODULE_QTSENSORS),yes)
   CFLAGS += -DQT_SENSORS_LIB
endif
ifeq ($(MODULE_QTSERIALPORT),yes)
   CFLAGS += -DQT_SERIALPORT_LIB
endif
ifeq ($(MODULE_QTSQL),yes)
   CFLAGS += -DQT_SQL_LIB
endif
ifeq ($(MODULE_QTSVG),yes)
   CFLAGS += -DQT_SVG_LIB
endif
ifeq ($(MODULE_QTTEXTTOSPEECH),yes)
   CFLAGS += -DQT_TEXTTOSPEECH_LIB
endif
ifeq ($(MODULE_QTUITOOLS),yes)
   CFLAGS += -DQT_UITOOLS_LIB
endif
ifeq ($(MODULE_QTWEBCHANNEL),yes)
   CFLAGS += -DQT_WEBCHANNEL_LIB
endif
ifeq ($(MODULE_QTWEBENGINE),yes)
   CFLAGS += -DQT_WEBENGINE_LIB
endif
ifeq ($(MODULE_QTWEBENGINECORE),yes)
   CFLAGS += -DQT_WEBENGINECORE_LIB
endif
ifeq ($(MODULE_QTWEBENGINEWIDGETS),yes)
   CFLAGS += -DQT_WEBENGINEWIDGETS_LIB
endif
ifeq ($(MODULE_QTWEBKIT),yes)
   CFLAGS += -DQT_WEBKIT_LIB
endif
ifeq ($(MODULE_QTWEBKITWIDGETS),yes)
   CFLAGS += -DQT_WEBKITWIDGETS_LIB
endif
ifeq ($(MODULE_QTWEBSOCKETS),yes)
   CFLAGS += -DQT_WEBSOCKETS_LIB
endif
ifeq ($(MODULE_QTWEBVIEW),yes)
   CFLAGS += -DQT_WEBVIEW_LIB
endif
ifeq ($(MODULE_QTWIDGETS),yes)
   CFLAGS += -DQT_WIDGETS_LIB
endif
ifeq ($(MODULE_QTWINEXTRAS),yes)
   CFLAGS += -DQT_WINEXTRAS_LIB
endif
ifeq ($(MODULE_QTX11EXTRAS),yes)
   CFLAGS += -DQT_X11EXTRAS_LIB
endif
ifeq ($(MODULE_QTXML),yes)
   CFLAGS += -DQT_XML_LIB
endif
ifeq ($(MODULE_QTXMLPATTERNS),yes)
   CFLAGS += -DQT_XMLPATTERNS_LIB
endif
