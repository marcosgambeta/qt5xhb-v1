#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/%.cpp
	$(CC_CMD)
# ActiveQt
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/ActiveQt/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/ActiveQt/%.cpp
	$(CC_CMD)
# QtBluetooth
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtBluetooth/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtBluetooth/%.cpp
	$(CC_CMD)
# QtCharts
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtCharts/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtCharts/%.cpp
	$(CC_CMD)
# QtCore
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtCore/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtCore/%.cpp
	$(CC_CMD)
# QtDataVisualization
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtDataVisualization/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtDataVisualization/%.cpp
	$(CC_CMD)
# QtDBus
#$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtDBus/%.prg
#	$(HB_CMD)
#$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtDBus/%.cpp
#	$(CC_CMD)
# QtDeclarative
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtDeclarative/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtDeclarative/%.cpp
	$(CC_CMD)
# QtDesigner
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtDesigner/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtDesigner/%.cpp
	$(CC_CMD)
# QtGamepad
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtGamepad/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtGamepad/%.cpp
	$(CC_CMD)
# QtGui
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtGui/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtGui/%.cpp
	$(CC_CMD)
# QtHelp
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtHelp/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtHelp/%.cpp
	$(CC_CMD)
# QtLocation
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtLocation/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtLocation/%.cpp
	$(CC_CMD)
# QtMultimedia
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtMultimedia/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtMultimedia/%.cpp
	$(CC_CMD)
# QtMultimediaWidgets
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtMultimediaWidgets/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtMultimediaWidgets/%.cpp
	$(CC_CMD)
# QtNetwork
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtNetwork/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtNetwork/%.cpp
	$(CC_CMD)
# QtNetworkAuth
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtNetworkAuth/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtNetworkAuth/%.cpp
	$(CC_CMD)
# QtOpenGL
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtOpenGL/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtOpenGL/%.cpp
	$(CC_CMD)
# QtPositioning
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtPositioning/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtPositioning/%.cpp
	$(CC_CMD)
# QtPrintSupport
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtPrintSupport/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtPrintSupport/%.cpp
	$(CC_CMD)
# QtPurchasing
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtPurchasing/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtPurchasing/%.cpp
	$(CC_CMD)
# QtQml
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtQml/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtQml/%.cpp
	$(CC_CMD)
# QtQuick
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtQuick/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtQuick/%.cpp
	$(CC_CMD)
# QtQuickWidgets
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtQuickWidgets/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtQuickWidgets/%.cpp
	$(CC_CMD)
# QtScript
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtScript/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtScript/%.cpp
	$(CC_CMD)
# QtScriptTools
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtScriptTools/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtScriptTools/%.cpp
	$(CC_CMD)
# QtSensors
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtSensors/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtSensors/%.cpp
	$(CC_CMD)
# QtSerialPort
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtSerialPort/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtSerialPort/%.cpp
	$(CC_CMD)
# QtSql
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtSql/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtSql/%.cpp
	$(CC_CMD)
# QtSvg
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtSvg/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtSvg/%.cpp
	$(CC_CMD)
# QtTextToSpeech
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtTextToSpeech/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtTextToSpeech/%.cpp
	$(CC_CMD)
# QtUiTools
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtUiTools/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtUiTools/%.cpp
	$(CC_CMD)
# QtWebChannel
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtWebChannel/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtWebChannel/%.cpp
	$(CC_CMD)
# QtWebEngine
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtWebEngine/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtWebEngine/%.cpp
	$(CC_CMD)
# QtWebEngineCore
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtWebEngineCore/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtWebEngineCore/%.cpp
	$(CC_CMD)
# QtWebEngineWidgets
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtWebEngineWidgets/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtWebEngineWidgets/%.cpp
	$(CC_CMD)
# QtWebKit
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtWebKit/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtWebKit/%.cpp
	$(CC_CMD)
# QtWebKitWidgets
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtWebKitWidgets/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtWebKitWidgets/%.cpp
	$(CC_CMD)
# QtWebSockets
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtWebSockets/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtWebSockets/%.cpp
	$(CC_CMD)
# QtWebView
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtWebView/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtWebView/%.cpp
	$(CC_CMD)
# QtWidgets
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtWidgets/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtWidgets/%.cpp
	$(CC_CMD)
# QtWinExtras
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtWinExtras/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtWinExtras/%.cpp
	$(CC_CMD)
# QtX11Extras
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtX11Extras/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtX11Extras/%.cpp
	$(CC_CMD)
# QtXml
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtXml/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtXml/%.cpp
	$(CC_CMD)
# QtXmlPatterns
$(QT5XHB_OBJ_DIR)/%.c : $(QT5XHB_SRC_DIR)/QtXmlPatterns/%.prg
	$(HB_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_SRC_DIR)/QtXmlPatterns/%.cpp
	$(CC_CMD)

$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_OBJ_DIR)/%.c
	$(CC_CMD)
$(QT5XHB_OBJ_DIR)/%$(OBJEXT) : $(QT5XHB_OBJ_DIR)/%.cpp
	$(CC_CMD)
