//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oLabel
   LOCAL oMovie

   // cria o objeto QApplication
   oApp := QApplication():new()

   // cria uma janela
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   // cria um label
   oLabel := QLabel():new(oWindow)
   oLabel:move(20, 20)
   oLabel:resize(120, 90)

   // cria um objeto da classe QMovie,
   // usando o arquivo impressora.gif
   // (GIF animado)
   oMovie := QMovie():new("..\images\impressora.gif")

   ? oMovie:isValid()

   // liga o objeto QLabel ao objeto QMovie
   oLabel:setMovie(oMovie)

   // inicia a anima��o
   oMovie:start()

   // mostra a janela
   oWindow:show()

   // inicia o loop de eventos
   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL
