/*

  Qt5xHb Project - Test Program

  Copyright (c) 2024 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-v1-v1

*/

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 640, 480 )

   oButton := QPushButton():new( "dialog", oWindow )
   oButton:move( 20, 20 )
   oButton:onClicked( {||dialog( oWindow )} )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION dialog( oParent )

   LOCAL oDialog
   LOCAL oLineEdit1
   LOCAL oLineEdit2
   LOCAL oLineEdit3
   LOCAL oEventFilter

   oDialog := QDialog():new(oParent)
   oDialog:setObjectName( "oDialog" )
   oDialog:setWindowTitle( "Dialog" )
   oDialog:resize( 320, 240 )

   oLineEdit1 := QLineEdit():new( oDialog )
   oLineEdit1:setObjectName( "oLineEdit1" )
   oLineEdit1:move( 20, 20 )
   oLineEdit1:resize( 100, 30 )

   oLineEdit2 := QLineEdit():new( oDialog )
   oLineEdit2:setObjectName( "oLineEdit2" )
   oLineEdit2:move( 20, 80 )
   oLineEdit2:resize( 100, 30 )

   oLineEdit3 := QLineEdit():new( oDialog )
   oLineEdit3:setObjectName( "oLineEdit3" )
   oLineEdit3:move( 20, 140 )
   oLineEdit3:resize( 100, 30 )

   oEventFilter := HEventFilter():new( oDialog )
   oEventFilter:onDestroyed( {||qout( "oEventFilter-destroyed" )} )
   oEventFilter:setEventFilterCB( {|oObject,oEvent|
      LOCAL nType := oEvent:type()

      IF nType == QEvent_Resize
         ? "evento QEvent::Resize no objeto " + oObject:objectName()
      ELSEIF nType == QEvent_FocusIn
         ? "evento QEvent::FocusIn no objeto " + oObject:objectName()
      ELSEIF nType == QEvent_FocusOut
         ? "evento QEvent::FocusOut no objeto " + oObject:objectName()
      ELSEIF nType == QEvent_KeyPress
         ? "evento QEvent::KeyPress no objeto " + oObject:objectName()
      ELSEIF nType == QEvent_KeyRelease
         ? "evento QEvent::KeyRelease no objeto " + oObject:objectName()
      ENDIF

      RETURN .F.
      })

   oDialog:installEventFilter( oEventFilter )
   oLineEdit1:installEventFilter( oEventFilter )
   oLineEdit2:installEventFilter( oEventFilter )
   oLineEdit3:installEventFilter( oEventFilter )

   oDialog:exec()

   oDialog:delete()

RETURN NIL
