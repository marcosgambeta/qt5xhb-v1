#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QAbstractTextDocumentLayoutSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtGui/QAbstractTextDocumentLayoutSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QClipboardSlotsMoc.cpp                  : $(QT5XHB_SRC_DIR)/QtGui/QClipboardSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDragSlotsMoc.cpp                       : $(QT5XHB_SRC_DIR)/QtGui/QDragSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGuiApplicationSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtGui/QGuiApplicationSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QInputMethodSlotsMoc.cpp                : $(QT5XHB_SRC_DIR)/QtGui/QInputMethodSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QIntValidatorSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtGui/QIntValidatorSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QMovieSlotsMoc.cpp                      : $(QT5XHB_SRC_DIR)/QtGui/QMovieSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QOffscreenSurfaceSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtGui/QOffscreenSurfaceSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QOpenGLContextSlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtGui/QOpenGLContextSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QOpenGLDebugLoggerSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtGui/QOpenGLDebugLoggerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QRegularExpressionValidatorSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtGui/QRegularExpressionValidatorSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QScreenSlotsMoc.cpp                     : $(QT5XHB_SRC_DIR)/QtGui/QScreenSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QStandardItemModelSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtGui/QStandardItemModelSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QTextDocumentSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtGui/QTextDocumentSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QWindowSlotsMoc.cpp                     : $(QT5XHB_SRC_DIR)/QtGui/QWindowSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/HCodeBlockValidatorMoc.cpp              : $(QT5XHB_SRC_DIR)/QtGui/HCodeBlockValidator.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
