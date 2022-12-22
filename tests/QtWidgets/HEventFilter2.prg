/*

  Qt5xHb Project - Test Program

  Copyright (C) 2022 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-v1

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
   LOCAL oEventFilter1
   LOCAL oEventFilter2

   oDialog := QDialog():new( oParent )
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

   oEventFilter1 := HEventFilter():new( oDialog )
   oEventFilter1:onDestroyed( {||qout( "oEventFilter1-destroyed" )} )
   oEventFilter1:setEventFilterCB( {|oObject,oEvent|
      LOCAL nType := oEvent:type()

      IF nType == QEvent_Resize
         ? "[1] evento QEvent::Resize no objeto " + oObject:objectName()
      ELSEIF nType == QEvent_FocusIn
         ? "[1] evento QEvent::FocusIn no objeto " + oObject:objectName()
      ELSEIF nType == QEvent_FocusOut
         ? "[1] evento QEvent::FocusOut no objeto " + oObject:objectName()
      ENDIF

      RETURN .F.
      })

   oEventFilter2 := HEventFilter():new( oDialog )
   oEventFilter2:onDestroyed( {||qout( "oEventFilter2-destroyed" )} )
   oEventFilter2:setEventFilterCB( {|oObject,oEvent|
      LOCAL nType := oEvent:type()

      IF nType == QEvent_KeyPress
         ? "[2] evento QEvent::KeyPress no objeto " + oObject:objectName()
      ELSEIF nType == QEvent_KeyRelease
         ? "[2] evento QEvent::KeyRelease no objeto " + oObject:objectName()
      ENDIF

      RETURN .F.
      })

   oDialog:installEventFilter( oEventFilter1 )
   oLineEdit1:installEventFilter( oEventFilter1 )
   oLineEdit2:installEventFilter( oEventFilter1 )
   oLineEdit3:installEventFilter( oEventFilter1 )

   oDialog:installEventFilter( oEventFilter2 )
   oLineEdit1:installEventFilter( oEventFilter2 )
   oLineEdit2:installEventFilter( oEventFilter2 )
   oLineEdit3:installEventFilter( oEventFilter2 )

   oDialog:exec()

   oDialog:delete()

RETURN NIL
