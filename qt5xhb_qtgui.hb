//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#define RUNMOC(file) run("moc " + file + " -o " + strtran(file, ".hpp", "Moc.cpp"))

FUNCTION hbmk_plugin_qt(hbmk)

   LOCAL cRetVal := ""

   SWITCH hbmk["cSTATE"]

   CASE "init"
      EXIT

   CASE "pre_all"
      EXIT

   CASE "pre_c"
      RUNMOC("source\QtGui\HCodeBlockValidator.hpp")
      RUNMOC("source\QtGui\QAbstractTextDocumentLayoutSlots.hpp")
      RUNMOC("source\QtGui\QClipboardSlots.hpp")
      RUNMOC("source\QtGui\QDragSlots.hpp")
      RUNMOC("source\QtGui\QGuiApplicationSlots.hpp")
      RUNMOC("source\QtGui\QInputMethodSlots.hpp")
      RUNMOC("source\QtGui\QIntValidatorSlots.hpp")
      RUNMOC("source\QtGui\QMovieSlots.hpp")
      RUNMOC("source\QtGui\QOffscreenSurfaceSlots.hpp")
      RUNMOC("source\QtGui\QOpenGLContextSlots.hpp")
      RUNMOC("source\QtGui\QOpenGLDebugLoggerSlots.hpp")
      RUNMOC("source\QtGui\QRegularExpressionValidatorSlots.hpp")
      RUNMOC("source\QtGui\QScreenSlots.hpp")
      RUNMOC("source\QtGui\QStandardItemModelSlots.hpp")
      RUNMOC("source\QtGui\QTextDocumentSlots.hpp")
      RUNMOC("source\QtGui\QWindowSlots.hpp")
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
