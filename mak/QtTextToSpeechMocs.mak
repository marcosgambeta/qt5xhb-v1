#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QTextToSpeechEngineSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtTextToSpeech/QTextToSpeechEngineSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QTextToSpeechSlotsMoc.cpp       : $(QT5XHB_SRC_DIR)/QtTextToSpeech/QTextToSpeechSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
