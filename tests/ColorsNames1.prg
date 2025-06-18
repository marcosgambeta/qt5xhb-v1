//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

FUNCTION Main()

   LOCAL oApp
   LOCAL aColorsNames
   LOCAL nIndex

   oApp := QApplication():new()

   aColorsNames := QColor():colorNames()

   ? ValType(aColorsNames)

   ? Len(aColorsNames)

   FOR nIndex := 1 TO Len(aColorsNames)
      ? nIndex
      ?? " = "
      ?? aColorsNames[nIndex]
   NEXT nIndex

   WAIT

   oApp:delete()

RETURN NIL
