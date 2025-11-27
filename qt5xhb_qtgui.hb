//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

FUNCTION hbmk_plugin_qt(hbmk)

   LOCAL cRetVal := ""

   SWITCH hbmk["cSTATE"]

   CASE "init"
      EXIT

   CASE "pre_all"
      EXIT

   CASE "pre_c"
      run("moc source\QtGui\HCodeBlockValidator.hpp -o source\QtGui\HCodeBlockValidatorMoc.cpp")
      run("moc source\QtGui\QAbstractTextDocumentLayoutSlots.hpp -o source\QtGui\QAbstractTextDocumentLayoutSlotsMoc.cpp")
      run("moc source\QtGui\QClipboardSlots.hpp -o source\QtGui\QClipboardSlotsMoc.cpp")
      run("moc source\QtGui\QDragSlots.hpp -o source\QtGui\QDragSlotsMoc.cpp")
      run("moc source\QtGui\QGuiApplicationSlots.hpp -o source\QtGui\QGuiApplicationSlotsMoc.cpp")
      run("moc source\QtGui\QInputMethodSlots.hpp -o source\QtGui\QInputMethodSlotsMoc.cpp")
      run("moc source\QtGui\QIntValidatorSlots.hpp -o source\QtGui\QIntValidatorSlotsMoc.cpp")
      run("moc source\QtGui\QMovieSlots.hpp -o source\QtGui\QMovieSlotsMoc.cpp")
      run("moc source\QtGui\QOffscreenSurfaceSlots.hpp -o source\QtGui\QOffscreenSurfaceSlotsMoc.cpp")
      run("moc source\QtGui\QOpenGLContextSlots.hpp -o source\QtGui\QOpenGLContextSlotsMoc.cpp")
      run("moc source\QtGui\QOpenGLDebugLoggerSlots.hpp -o source\QtGui\QOpenGLDebugLoggerSlotsMoc.cpp")
      run("moc source\QtGui\QRegularExpressionValidatorSlots.hpp -o source\QtGui\QRegularExpressionValidatorSlotsMoc.cpp")
      run("moc source\QtGui\QScreenSlots.hpp -o source\QtGui\QScreenSlotsMoc.cpp")
      run("moc source\QtGui\QStandardItemModelSlots.hpp -o source\QtGui\QStandardItemModelSlotsMoc.cpp")
      run("moc source\QtGui\QTextDocumentSlots.hpp -o source\QtGui\QTextDocumentSlotsMoc.cpp")
      run("moc source\QtGui\QWindowSlots.hpp -o source\QtGui\QWindowSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      ferase("source\QtGui\HCodeBlockValidatorMoc.cpp")
      ferase("source\QtGui\QAbstractTextDocumentLayoutSlotsMoc.cpp")
      ferase("source\QtGui\QClipboardSlotsMoc.cpp")
      ferase("source\QtGui\QDragSlotsMoc.cpp")
      ferase("source\QtGui\QGuiApplicationSlotsMoc.cpp")
      ferase("source\QtGui\QInputMethodSlotsMoc.cpp")
      ferase("source\QtGui\QIntValidatorSlotsMoc.cpp")
      ferase("source\QtGui\QMovieSlotsMoc.cpp")
      ferase("source\QtGui\QOffscreenSurfaceSlotsMoc.cpp")
      ferase("source\QtGui\QOpenGLContextSlotsMoc.cpp")
      ferase("source\QtGui\QOpenGLDebugLoggerSlotsMoc.cpp")
      ferase("source\QtGui\QRegularExpressionValidatorSlotsMoc.cpp")
      ferase("source\QtGui\QScreenSlotsMoc.cpp")
      ferase("source\QtGui\QStandardItemModelSlotsMoc.cpp")
      ferase("source\QtGui\QTextDocumentSlotsMoc.cpp")
      ferase("source\QtGui\QWindowSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
