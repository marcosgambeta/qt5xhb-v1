/*

  Qt5xHb Project - Test Program

  Copyright (C) 2017 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oLabel
   LOCAL oMovie

   // cria o objeto QApplication
   oApp := QApplication():new()

   // cria uma janela
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640,480)
   oWindow:show()

   // cria um label
   oLabel := QLabel():new(oWindow)
   oLabel:move(20,20)
   oLabel:resize(120,90)
   oLabel:show()

   // cria um objeto da classe QMovie,
   // usando o arquivo impressora.gif
   // (GIF animado)
   oMovie := QMovie():new("images\impressora.gif")

   ? oMovie:isValid()

   // liga o objeto QLabel ao objeto QMovie
   oLabel:setMovie(oMovie)

   // inicia a animação
   oMovie:start()

   // inicia o loop de eventos
   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
