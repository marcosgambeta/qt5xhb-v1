/*

  Qt5xHb Project - Test Program

  Copyright (C) 2017 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com
  marcosgambeta AT gmail DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   lOCAL oApp
   LOCAL oWindow
   LOCAL oRubberBand

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oRubberBand := QRubberBand():new(QRubberBand_Rectangle,oWindow)
   oRubberBand:move(20,20)
   oRubberBand:resize(100,100)
   oRubberBand:show()

   oWindow:show()

   oApp:exec()
   
   oWindow:delete()
   
   oApp:delete()

RETURN
