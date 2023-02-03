/*

  Qt5xHb Project - Example Program

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
   LOCAL oLineEdit1
   LOCAL oLineEdit2
   LOCAL oPushButtonCopy
   LOCAL oPushButtonPaste
   LOCAL oClipboard

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Exemplo de uso do objeto QClipboard")
   oWindow:resize(640, 480)

   oLineEdit1 := QLineEdit():new(oWindow)
   oLineEdit1:move(20, 20)
   oLineEdit1:setText("teste")

   oPushButtonCopy := QPushButton():new("Copiar", oWindow)
   oPushButtonCopy:move(20, 120)

   oLineEdit2 := QLineEdit():new(oWindow)
   oLineEdit2:move(20, 220)

   oPushButtonPaste := QPushButton():new("Colar", oWindow)
   oPushButtonPaste:move(20, 320)

   // Obtém o objeto QClipboard.
   oClipboard := oApp:clipboard()

   // Quando clicado, copia o texto do QLineEdit1 para o clipboard.
   // O texto é copiado para o clipboard através do método 'setText'.
   oPushButtonCopy:onClicked({||oClipboard:setText(oLineEdit1:text())})

   // Quando clicado, copia o texto do clipboard para o QLineEdit2.
   // O texto é copiado do clipboard através do método 'text'.
   oPushButtonPaste:onClicked({||oLineEdit2:setText(oClipboard:text())})

   // avisa se o dados no clipboard foram modificados
   oClipboard:onDataChanged({||qout("os dados no clipboard foram alterados"), qout("conteudo atual=" + oClipboard:text())})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
