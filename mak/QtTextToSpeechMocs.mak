#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QTextToSpeechEngineSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtTextToSpeech/QTextToSpeechEngineSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QTextToSpeechSlotsMoc.cpp       : $(QT5XHB_SRC_DIR)/QtTextToSpeech/QTextToSpeechSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
