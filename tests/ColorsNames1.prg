/*

  Qt5xHb Project - Test Program

  Copyright (c) 2023 Marcos Antonio Gambeta

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
   LOCAL aColorsNames
   LOCAL nIndex

   oApp := QApplication():new()

   aColorsNames := QColor():colorNames()

   ? valtype( aColorsNames )

   ? len( aColorsNames )

   FOR nIndex := 1 TO len( aColorsNames )
      ? nIndex
      ?? " = "
      ?? aColorsNames[ nIndex ]
   NEXT nIndex

   WAIT

   oApp:delete()

RETURN
