#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QAbstractTextDocumentLayoutSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtGui/QAbstractTextDocumentLayoutSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QClipboardSlotsMoc.cpp                  : $(QT5XHB_SRC_DIR)/QtGui/QClipboardSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDragSlotsMoc.cpp                       : $(QT5XHB_SRC_DIR)/QtGui/QDragSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGuiApplicationSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtGui/QGuiApplicationSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QInputMethodSlotsMoc.cpp                : $(QT5XHB_SRC_DIR)/QtGui/QInputMethodSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QIntValidatorSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtGui/QIntValidatorSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMovieSlotsMoc.cpp                      : $(QT5XHB_SRC_DIR)/QtGui/QMovieSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QOffscreenSurfaceSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtGui/QOffscreenSurfaceSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QOpenGLContextSlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtGui/QOpenGLContextSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QOpenGLDebugLoggerSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtGui/QOpenGLDebugLoggerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QRegularExpressionValidatorSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtGui/QRegularExpressionValidatorSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QScreenSlotsMoc.cpp                     : $(QT5XHB_SRC_DIR)/QtGui/QScreenSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QStandardItemModelSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtGui/QStandardItemModelSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QTextDocumentSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtGui/QTextDocumentSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QWindowSlotsMoc.cpp                     : $(QT5XHB_SRC_DIR)/QtGui/QWindowSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/HCodeBlockValidatorMoc.cpp              : $(QT5XHB_SRC_DIR)/QtGui/HCodeBlockValidator.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
