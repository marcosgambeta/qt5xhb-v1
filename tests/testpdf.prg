/*

  Exemplo de criação de arquivos PDF com Qt5xHb

  Data: 08/02/2015 08:26:03

  Copyright (C) 2012-2017 Marcos Antonio Gambeta

  E-mail: marcosgambeta@uol.com.br

  Website: https://github.com/marcosgambeta/Qt5xHb

  Grupo de usuários: http://br.groups.yahoo.com/neo/groups/qt4xhb/info

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oLabel
   LOCAL oPrinter
   LOCAL oPainter
   LOCAL nPage

   oApp := QApplication():new()

   oLabel := QLabel():new("Exemplo de criação de arquivo PDF"):show()

   oPrinter := QPrinter():new(QPrinter_HighResolution)

   oPrinter:setOutputFileName("testpdf.pdf")

   oPainter := QPainter():new()

   oPainter:begin(oPrinter)

   FOR nPage := 1 TO 5

      oPainter:drawText(10,10,"Página "+strzero(nPage,3))

      oPainter:drawRect(0+100,0+100,oPrinter:width()-100,oPrinter:height()-100)

      oPainter:drawEllipse(0+100,0+100,oPrinter:width()-100,oPrinter:height()-100)

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
