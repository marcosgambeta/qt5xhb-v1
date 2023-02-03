/*

  Qt5xHb Project - Test Program

  Copyright (c) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-v1

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oRubberBand

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oRubberBand := QRubberBand():new( QRubberBand_Rectangle, oWindow )
   oRubberBand:move( 20, 20 )
   oRubberBand:resize( 100, 100 )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
