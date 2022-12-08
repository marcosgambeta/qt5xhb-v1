/*

  Qt5xHb Project - Test Program

  Copyright (C) 2022 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oList

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste com a classe HAbstractListModel" )
   oWindow:resize( 400, 600 )

   oModel := HAbstractListModel():new()
   oModel:setRowCountCB( {||100000} ) // total de linhas: 100 mil
   oModel:setDisplayRoleCB( {|nRow|"Linha "+alltrim(str(nRow))} )

   oList := QListView():new(oWindow)
   oList:move( 10, 10 )
   oList:resize( 400 - 20, 600 - 20 )
   oList:setModel( oModel )

   oWindow:show()

   oApp:exec()

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN
