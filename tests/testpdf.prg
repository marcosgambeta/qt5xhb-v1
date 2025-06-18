//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oLabel
   LOCAL oPrinter
   LOCAL oPainter
   LOCAL nPage

   oApp := QApplication():new()

   oLabel := QLabel():new("Exemplo de cria��o de arquivo PDF"):show()

   oPrinter := QPrinter():new(QPrinter_HighResolution)

   oPrinter:setOutputFileName("testpdf.pdf")

   oPainter := QPainter():new()

   oPainter:begin(oPrinter)

   FOR nPage := 1 TO 5

      oPainter:drawText(10, 10, "P�gina " + StrZero(nPage, 3))

      oPainter:drawRect(0 + 100, 0 + 100, oPrinter:width() - 100, oPrinter:height() - 100)

      oPainter:drawEllipse(0 + 100, 0 + 100, oPrinter:width() - 100, oPrinter:height() - 100)

      IF nPage != 5
         oPrinter:newPage()
      ENDIF

   NEXT nPage

   oPainter:end()

   oPainter:delete()

   oPrinter:delete()

   oApp:exec()

   oLabel:delete()

   oApp:delete()

RETURN NIL
