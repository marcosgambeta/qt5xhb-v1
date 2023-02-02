#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QAbstractOAuth2SlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtNetworkAuth/QAbstractOAuth2Slots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstractOAuthReplyHandlerSlotsMoc.cpp   : $(QT5XHB_SRC_DIR)/QtNetworkAuth/QAbstractOAuthReplyHandlerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstractOAuthSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtNetworkAuth/QAbstractOAuthSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QOAuth1SlotsMoc.cpp                      : $(QT5XHB_SRC_DIR)/QtNetworkAuth/QOAuth1Slots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QOAuth2AuthorizationCodeFlowSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtNetworkAuth/QOAuth2AuthorizationCodeFlowSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
