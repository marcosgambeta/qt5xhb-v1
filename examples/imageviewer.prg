/*

  Qt5xHb Project - Example Program

  Copyright (C) 2019 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

  Users Groups:
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb    [ENGLISH]
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb-br [PORTUGUESE]

*/

/*
  Baseado no exemplo "Image Viewer" do Qt Framework
*/

#include "qt5xhb.ch"
#include "hbclass.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oImageViewer

   oApp := QApplication():new()

   oImageViewer := ImageViewer():new()

   oImageViewer:show()

   oApp:exec()

   oImageViewer:delete()

   oApp:delete()

RETURN

CLASS ImageViewer INHERIT QMainWindow

   DATA oImageLabel     // QLabel
   DATA oScrollArea     // QScrollArea
   DATA nScaleFactor    // double
   DATA oPrinter        // QPrinter
   DATA oOpenAct        // QAction
   DATA oPrintAct       // QAction
   DATA oExitAct        // QAction
   DATA oZoomInAct      // QAction
   DATA oZoomOutAct     // QAction
   DATA oNormalSizeAct  // QAction
   DATA oFitToWindowAct // QAction
   DATA oAboutAct       // QAction
   DATA oAboutQtAct     // QAction
   DATA oFileMenu       // QMenu
   DATA oViewMenu       // QMenu
   DATA oHelpMenu       // QMenu

   METHOD new ()
   METHOD delete ()
   METHOD open ()
   METHOD print ()
   METHOD zoomIn ()
   METHOD zoomOut ()
   METHOD normalSize ()
   METHOD fitToWindow ()
   METHOD about ()
   METHOD createActions ()
   METHOD createMenus ()
   METHOD updateActions ()
   METHOD scaleImage (nFactor)
   METHOD adjustScrollBar (oScrollBar, nFactor)

END CLASS

METHOD new () CLASS ImageViewer

   ::super:new()

   ::oImageLabel := QLabel():new()
   ::oImageLabel:setBackgroundRole(QPalette_Base)
   ::oImageLabel:setSizePolicy(QSizePolicy_Ignored, QSizePolicy_Ignored)
   ::oImageLabel:setScaledContents(.T.)

   ::oScrollArea := QScrollArea():new()
   ::oScrollArea:setBackgroundRole(QPalette_Dark)
   ::oScrollArea:setWidget(::oImageLabel)
   ::setCentralWidget(::oScrollArea)

   ::createActions()
   ::createMenus()

   ::setWindowTitle("Image Viewer")
   ::resize(500, 400)

   ::nScaleFactor := 0

RETURN SELF

METHOD delete () CLASS ImageViewer

   ::oOpenAct:onTriggered()
   ::oPrintAct:onTriggered()
   ::oExitAct:onTriggered()
   ::oZoomInAct:onTriggered()
   ::oZoomOutAct:onTriggered()
   ::oNormalSizeAct:onTriggered()
   ::oFitToWindowAct:OnTriggered()
   ::oAboutAct:onTriggered()
   ::oAboutQtAct:onTriggered()

   ::super:delete()

RETURN NIL

METHOD open () CLASS ImageViewer

   LOCAL cFileName
   LOCAL oImage

   cFileName := QFileDialog():getOpenFileName(SELF,"Open File",QDir():currentPath())

   IF !empty(cFileName)
      oImage := QImage():new(cFileName)
      IF oImage:isNull()
         QMessageBox():information(SELF,"Image Viewer","Cannot load "+cFileName+".")
         RETURN NIL
      ENDIF
      ::oImageLabel:setPixmap(QPixmap():fromImage(oImage))
      ::nScaleFactor := 1.0

      ::oPrintAct:setEnabled(.T.)
      ::oFitToWindowAct:setEnabled(.T.)
      ::updateActions()

      IF !::oFitToWindowAct:isChecked()
         ::oImageLabel:adjustSize()
      ENDIF
   ENDIF

RETURN NIL

METHOD print () CLASS ImageViewer

   LOCAL oDialog
   LOCAL oPainter
   LOCAL oRect
   LOCAL oSize

   IF ::oPrinter == NIL
      ::oPrinter := QPrinter():new()
   ENDIF

   oDialog := QPrintDialog():new(::oPrinter, SELF)

   IF oDialog:exec() <> 0
      oPainter := QPainter():new(::oPrinter)
      oRect := oPainter:viewport()
      oSize := ::oImageLabel:pixmap():size()
      oSize:scale(oRect:size(), Qt_KeepAspectRatio)
      oPainter:setViewport(oRect:x(), oRect:y(), oSize:width(), oSize:height())
      oPainter:setWindow(::oImageLabel:pixmap():rect())
      oPainter:drawPixmap(0, 0, ::oImageLabel:pixmap())
   ENDIF

   oDialog:delete()

RETURN NIL

METHOD zoomIn () CLASS ImageViewer

   ::scaleImage(1.25)

RETURN NIL

METHOD zoomOut () CLASS ImageViewer

   ::scaleImage(0.8)

RETURN NIL

METHOD normalSize () CLASS ImageViewer

   ::oImageLabel:adjustSize()
   ::nScaleFactor := 1.0

RETURN NIL

METHOD fitToWindow () CLASS ImageViewer

   LOCAL lFitToWindow

   lFitToWindow := ::oFitToWindowAct:isChecked()
   ::oScrollArea:setWidgetResizable(lFitToWindow)
   IF !lFitToWindow
      ::normalSize()
   ENDIF
   ::updateActions()

RETURN NIL

METHOD about () CLASS ImageViewer

   QMessageBox():about(SELF,"About Image Viewer",;
                "<p>The <b>Image Viewer</b> example shows how to combine QLabel "+;
                "and QScrollArea to display an image. QLabel is typically used "+;
                "for displaying a text, but it can also display an image. "+;
                "QScrollArea provides a scrolling view around another widget. "+;
                "If the child widget exceeds the size of the frame, QScrollArea "+;
                "automatically provides scroll bars. </p><p>The example "+;
                "demonstrates how QLabel's ability to scale its contents "+;
                "(QLabel::scaledContents), and QScrollArea's ability to "+;
                "automatically resize its contents "+;
                "(QScrollArea::widgetResizable), can be used to implement "+;
                "zooming and scaling features. </p><p>In addition the example "+;
                "shows how to use QPainter to print an image.</p>")

RETURN NIL

METHOD createActions () CLASS ImageViewer

   ::oOpenAct := QAction():new("&Open...", SELF)
   ::oOpenAct:setShortcut(QKeySequence():new("Ctrl+O"))
   ::oOpenAct:onTriggered({||::open()})

   ::oPrintAct := QAction():new("&Print...", SELF)
   ::oPrintAct:setShortcut(QKeySequence():new("Ctrl+P"))
   ::oPrintAct:setEnabled(.f.)
   ::oPrintAct:onTriggered({||::print()})

   ::oExitAct := QAction():new("E&xit", SELF)
   ::oExitAct:setShortcut(QKeySequence():new("Ctrl+Q"))
   ::oExitAct:onTriggered({||::close()})

   ::oZoomInAct := QAction():new("Zoom &In (25%)", SELF)
   ::oZoomInAct:setShortcut(QKeySequence():new("Ctrl++"))
   ::oZoomInAct:setEnabled(.f.)
   ::oZoomInAct:onTriggered({||::zoomIn()})

   ::oZoomOutAct := QAction():new("Zoom &Out (25%)", SELF)
   ::oZoomOutAct:setShortcut(QKeySequence():new("Ctrl+-"))
   ::oZoomOutAct:setEnabled(.f.)
   ::oZoomOutAct:onTriggered({||::zoomOut()})

   ::oNormalSizeAct := QAction():new("&Normal Size", SELF)
   ::oNormalSizeAct:setShortcut(QKeySequence():new("Ctrl+S"))
   ::oNormalSizeAct:setEnabled(.f.)
   ::oNormalSizeAct:onTriggered({||::normalSize()})

   ::oFitToWindowAct := QAction():new("&Fit to Window", SELF)
   ::oFitToWindowAct:setEnabled(.f.)
   ::oFitToWindowAct:setCheckable(.t.)
   ::oFitToWindowAct:setShortcut(QKeySequence():new("Ctrl+F"))
   ::oFitToWindowAct:OnTriggered({||::fitToWindow()})

   ::oAboutAct := QAction():new("&About", SELF)
   ::oAboutAct:onTriggered({||::about()})

   ::oAboutQtAct := QAction():new("About &Qt", SELF)
   ::oAboutQtAct:onTriggered({||QApplication():newFrom(QApplication():instance()):aboutQt()})

RETURN NIL

METHOD createMenus () CLASS ImageViewer

   ::oFileMenu := QMenu():new("&File", SELF)
   ::oFileMenu:addAction(::oOpenAct)
   ::oFileMenu:addAction(::oPrintAct)
   ::oFileMenu:addSeparator()
   ::oFileMenu:addAction(::oExitAct)

   ::oViewMenu := QMenu():new("&View", SELF)
   ::oViewMenu:addAction(::oZoomInAct)
   ::oViewMenu:addAction(::oZoomOutAct)
   ::oViewMenu:addAction(::oNormalSizeAct)
   ::oViewMenu:addSeparator()
   ::oViewMenu:addAction(::oFitToWindowAct)

   ::oHelpMenu := QMenu():new("&Help", SELF)
   ::oHelpMenu:addAction(::oAboutAct)
   ::oHelpMenu:addAction(::oAboutQtAct)

   ::menuBar():addMenu(::oFileMenu)
   ::menuBar():addMenu(::oViewMenu)
   ::menuBar():addMenu(::oHelpMenu)

RETURN NIL

METHOD updateActions () CLASS ImageViewer

   ::oZoomInAct:setEnabled(!::oFitToWindowAct:isChecked())
   ::oZoomOutAct:setEnabled(!::oFitToWindowAct:isChecked())
   ::oNormalSizeAct:setEnabled(!::oFitToWindowAct:isChecked())

RETURN NIL

METHOD scaleImage (nFactor) CLASS ImageViewer

   ::nScaleFactor := ::nScaleFactor * nFactor
   ::oImageLabel:resize(::nScaleFactor * ::oImageLabel:pixmap():size():width(),::nScaleFactor * ::oImageLabel:pixmap():size():height())

   ::adjustScrollBar(::oScrollArea:horizontalScrollBar(), nFactor)
   ::adjustScrollBar(::oScrollArea:verticalScrollBar(), nFactor)

   ::oZoomInAct:setEnabled(::nScaleFactor < 3.0)
   ::oZoomOutAct:setEnabled(::nScaleFactor > 0.333)

RETURN NIL

METHOD adjustScrollBar (oScrollBar, nFactor) CLASS ImageViewer

   oScrollBar:setValue(int(nFactor * oScrollBar:value() + ((nFactor - 1) * oScrollBar:pageStep()/2)))

RETURN NIL
