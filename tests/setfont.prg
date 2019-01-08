/*

  Qt5xHb Project - Test Program

  Copyright (C) 2019 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oMainWindow
   LOCAL oMenuBar
   LOCAL oMenuA
   LOCAL oActionA1
   LOCAL oActionA2
   LOCAL oActionA3
   LOCAL oMenuB
   LOCAL oActionB1
   LOCAL oActionB2
   LOCAL oMenuC
   LOCAL oActionC1
   LOCAL oLabel

   oApp := QApplication():new()

   oApp:setFont(QFont():new("Helvetica",12))

   oMainWindow := QMainWindow():new()
   oMainWindow:setWindowTitle("Exemplo")
   oMainWindow:resize(640,480)

   oMenuBar := oMainWindow:menuBar()

   oMenuA := oMenuBar:addMenu("Menu &A")

   oActionA1 := oMenuA:addAction("Opção A1")
   ? oActionA1:onTriggered({||QMessageBox():information(oMainWindow,"Aviso","Você escolheu a opção A1")})

   oActionA2 := oMenuA:addAction("Opção A2")
   ? oActionA2:onTriggered({||QMessageBox():information(oMainWindow,"Aviso","Você escolheu a opção A2")})

   oActionA3 := oMenuA:addAction("Opção A3")
   ? oActionA3:onTriggered({||QMessageBox():information(oMainWindow,"Aviso","Você escolheu a opção A3")})

   oMenuB := oMenuBar:addMenu("Menu &B")

   oActionB1 := oMenuB:addAction("Opção B1")
   ? oActionB1:onTriggered({||QMessageBox():information(oMainWindow,"Aviso","Você escolheu a opção B1")})

   oActionB2 := oMenuB:addAction("Opção B2")
   ? oActionB2:onTriggered({||QMessageBox():information(oMainWindow,"Aviso","Você escolheu a opção B2")})

   oMenuC := oMenuBar:addMenu("Menu &C")

   oActionC1 := oMenuC:addAction("Opção C1")
   ? oActionC1:onTriggered({||QMessageBox():information(oMainWindow,"Aviso","Você escolheu a opção C1")})

   oMainWindow:Show()

   oLabel := QLabel():new("<center><font color=red>Exemplo de como definir uma fonte para a aplicação inteira</font></center>")

   oMainWindow:setCentralWidget(oLabel)

   oApp:exec()
   
   oMainWindow:delete()
   
   oApp:delete()

RETURN
