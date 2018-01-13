#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

# add libraries
ifeq ($(MODULE_ACTIVEQT),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqaxcontainer5$(LIBEXT)
endif
ifeq ($(MODULE_ACTIVEQT),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqaxserver5$(LIBEXT)
endif
ifeq ($(MODULE_QTANDROIDEXTRAS),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtandroidextras5$(LIBEXT)
endif
ifeq ($(MODULE_QTBLUETOOTH),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtbluetooth5$(LIBEXT)
endif
ifeq ($(MODULE_QTCORE),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtcore5$(LIBEXT)
endif
ifeq ($(MODULE_QTDECLARATIVE),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtdeclarative5$(LIBEXT)
endif
ifeq ($(MODULE_QTDESIGNER),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtdesigner5$(LIBEXT)
endif
ifeq ($(MODULE_QTGUI),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtgui5$(LIBEXT)
endif
ifeq ($(MODULE_QTHELP),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqthelp5$(LIBEXT)
endif
ifeq ($(MODULE_QTLOCATION),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtlocation5$(LIBEXT)
endif
ifeq ($(MODULE_QTMULTIMEDIA),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtmultimedia5$(LIBEXT)
endif
ifeq ($(MODULE_QTMULTIMEDIAWIDGETS),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtmultimediawidgets5$(LIBEXT)
endif
ifeq ($(MODULE_QTNETWORK),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtnetwork5$(LIBEXT)
endif
ifeq ($(MODULE_QTOPENGL),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtopengl5$(LIBEXT)
endif
ifeq ($(MODULE_QTPOSITIONING),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtpositioning5$(LIBEXT)
endif
ifeq ($(MODULE_QTPRINTSUPPORT),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtprintsupport5$(LIBEXT)
endif
ifeq ($(MODULE_QTQML),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtqml5$(LIBEXT)
endif
ifeq ($(MODULE_QTQUICK),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtquick5$(LIBEXT)
endif
ifeq ($(MODULE_QTQUICKWIDGETS),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtquickwidgets5$(LIBEXT)
endif
ifeq ($(MODULE_QTSCRIPT),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtscript5$(LIBEXT)
endif
ifeq ($(MODULE_QTSCRIPTTOOLS),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtscripttools5$(LIBEXT)
endif
ifeq ($(MODULE_QTSENSORS),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtsensors5$(LIBEXT)
endif
ifeq ($(MODULE_QTSERIALPORT),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtserialport5$(LIBEXT)
endif
ifeq ($(MODULE_QTSQL),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtsql5$(LIBEXT)
endif
ifeq ($(MODULE_QTSVG),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtsvg5$(LIBEXT)
endif
ifeq ($(MODULE_QTUITOOLS),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtuitools5$(LIBEXT)
endif
ifeq ($(MODULE_QTWEBCHANNEL),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtwebchannel5$(LIBEXT)
endif
ifeq ($(MODULE_QTWEBENGINE),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtwebengine5$(LIBEXT)
endif
ifeq ($(MODULE_QTWEBENGINECORE),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtwebenginecore5$(LIBEXT)
endif
ifeq ($(MODULE_QTWEBENGINEWIDGETS),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtwebenginewidgets5$(LIBEXT)
endif
ifeq ($(MODULE_QTWEBKIT),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtwebkit5$(LIBEXT)
endif
ifeq ($(MODULE_QTWEBKITWIDGETS),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtwebkitwidgets5$(LIBEXT)
endif
ifeq ($(MODULE_QTWEBSOCKETS),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtwebsockets5$(LIBEXT)
endif
ifeq ($(MODULE_QTWEBVIEW),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtwebview5$(LIBEXT)
endif
ifeq ($(MODULE_QTWIDGETS),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtwidgets5$(LIBEXT)
endif
ifeq ($(MODULE_QTWINEXTRAS),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtwinextras5$(LIBEXT)
endif
ifeq ($(MODULE_QTXML),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtxml5$(LIBEXT)
endif
ifeq ($(MODULE_QTXMLPATTERNS),yes)
   ALLLIBS += $(QT5XHB_LIB_DIR)/$(LIBPRE)hbqtxmlpatterns5$(LIBEXT)
endif
