/*

  Qt5xHb Project - Test Program

  Copyright (c) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-v1

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oLabel
   LOCAL oPrinter
   LOCAL oPainter
   LOCAL nPage

   oApp := QApplication():new()

   oLabel := QLabel():new( "Exemplo de criação de arquivo PDF" ):show()

   oPrinter := QPrinter():new( QPrinter_HighResolution )

   oPrinter:setOutputFileName( "testpdf.pdf" )

   oPainter := QPainter():new()

   oPainter:begin( oPrinter )

   FOR nPage := 1 TO 5

      oPainter:drawText( 10, 10, "Página " + strzero( nPage, 3 ) )

      oPainter:drawRect( 0 + 100, 0 + 100, oPrinter:width() - 100, oPrinter:height() - 100 )

      oPainter:drawEllipse( 0 + 100, 0 + 100, oPrinter:width() - 100, oPrinter:height() - 100 )

      IF nPage <> 5
         oPrinter:newPage()
      ENDIF

   NEXT nPage

   oPainter:end()

   oPainter:delete()

   oPrinter:delete()

   oApp:exec()

   oLabel:delete()

   oApp:delete()

RETURN
