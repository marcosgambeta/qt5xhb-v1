/*

  Qt5xHb Project - Test Program

  Copyright (C) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oTree
   LOCAL oItem_001
   LOCAL oItem_001_001
   LOCAL oItem_001_002
   LOCAL oItem_001_003
   LOCAL oItem_001_003_001
   LOCAL oItem_001_003_002
   LOCAL oItem_002
   LOCAL oItem_002_001
   LOCAL oItem_002_002

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste com a classe QTreeWidget" )
   oWindow:resize( 800, 600 )

   // cria um objeto da classe QTreeWidget
   oTree := QTreeWidget():new( oWindow )
   oTree:move( 10, 10 )
   oTree:resize( 800 - 20, 600 - 20 )

   // define o total de colunas
   oTree:setColumnCount( 3 )

   // define o título de cada coluna
   oTree:setHeaderLabels( { "Código", "Descrição", "Valor" } )

   // define o tamanho das colunas
   oTree:setColumnWidth( 0, 200 )
   oTree:setColumnWidth( 1, 200 )
   oTree:setColumnWidth( 2, 200 )

   // mostra linhas zebradas
   oTree:setAlternatingRowColors( .T. )

   // usa animação quando abrir e fechar itens
   oTree:setAnimated( .T. )

   // cria um item no primeiro nível (tem o objeto oTree como parent)
   oItem_001 := QTreeWidgetItem():new( oTree, { "001", "Item 001", "R$ 600,00" } )

   // cria três itens no segundo nível (tem o objeto oItem_001 como parent)
   oItem_001_001 := QTreeWidgetItem():new( oItem_001, { "001.001", "Item 001.001", "R$ 100,00" } )
   oItem_001_002 := QTreeWidgetItem():new( oItem_001, { "001.002", "Item 001.002", "R$ 200,00" } )
   oItem_001_003 := QTreeWidgetItem():new( oItem_001, { "001.003", "Item 001.003", "R$ 300,00" } )

   // cria dois itens no terceiro nível (tem o objeto oItem_001_003 como parent)
   oItem_001_003_001 := QTreeWidgetItem():new( oItem_001_003, { "001.003.001", "Item 001.003.001", "R$ 200,00" } )
   oItem_001_003_002 := QTreeWidgetItem():new( oItem_001_003, { "001.003.002", "Item 001.003.002", "R$ 100,00" } )

   // cria um item no primeiro nível (tem o objeto oTree como parent)
   oItem_002 := QTreeWidgetItem():new( oTree, { "002", "Item 002", "R$ 500,00" } )

   // cria dois itens no segundo nível (tem o objeto oItem_002 como parent)
   oItem_002_001 := QTreeWidgetItem():new( oItem_002, { "002.001", "Item 002.001", "R$ 300,00" } )
   oItem_002_002 := QTreeWidgetItem():new( oItem_002, { "002.002", "Item 002.002", "R$ 200,00" } )

   // abre todos os itens
   oTree:expandAll()

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
