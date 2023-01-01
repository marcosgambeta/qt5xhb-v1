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
   LOCAL oModel
   LOCAL oView

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 800, 600 )

   oModel := myModel():new()

   oView := QTableView():new( oWindow )
   oView:move( 10, 10 )
   oView:resize( 800 - 20, 600 - 20 )
   oView:setModel( oModel )

   oWindow:show()

   oApp:exec()

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN

#include "hbclass.ch"

CLASS myModel INHERIT HAbstractTableModelV2

   METHOD new
   METHOD rowCount
   METHOD columnCount
   METHOD data
   METHOD headerData

END CLASS

METHOD new( ... ) CLASS myModel

   ::super:new( ... )

   ::setRowCountCB( {|...|::rowCount(...)} )
   ::setColumnCountCB( {|...|::columnCount(...)} )
   ::setDataCB( {|...|::data(...)} )
   ::setHeaderDataCB( {|...|::headerData(...)} )

RETURN self

METHOD rowCount() CLASS myModel
RETURN 1000000

METHOD columnCount() CLASS myModel
RETURN 10000

METHOD data( pIndex, nRole ) CLASS myModel

   LOCAL oVariant := QVariant():new()
   LOCAL oIndex := QModelIndex():newFrom( pIndex )
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()

   IF oIndex:isValid()

      IF nRole == Qt_DisplayRole
         oVariant := QVariant():new( "Célula " + alltrim( str( nRow ) ) + "," + alltrim( str( nColumn ) ) )
      ELSEIF nRole == Qt_BackgroundRole
         oVariant := iif( nRow / 2 == int( nRow / 2 ), QColor():new( "red" ):toVariant(), QColor():new( "yellow" ):toVariant() )
      ENDIF

   ENDIF

RETURN oVariant

METHOD headerData( nSection, nOrientation, nRole ) CLASS myModel

   LOCAL oVariant := QVariant():new()

   IF nOrientation == Qt_Horizontal .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new( "Coluna " + alltrim( str( nSection ) ) )
   ELSEIF nOrientation == Qt_Vertical .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new( "Linha " + alltrim( str( nSection ) ) )
   ENDIF

RETURN oVariant
