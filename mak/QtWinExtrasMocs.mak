$(QT5XHB_OBJ_DIR)/QWinTaskbarProgressSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QWinTaskbarProgressSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QWinThumbnailToolButtonSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QWinThumbnailToolButtonSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
