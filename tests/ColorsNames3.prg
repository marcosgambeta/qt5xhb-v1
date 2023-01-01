/*

  Qt5xHb Project - Test Program

  Copyright (C) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb

*/

#include "qt5xhb.ch"

STATIC aColorsNames

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView

   oApp := QApplication():new()

   aColorsNames := QColor():colorNames()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Tabela de cores" )
   oWindow:resize( 800, 600 )

   oModel := myModel():new()

   oView := QTableView():new( oWindow )
   oView:move( 10, 10 )
   oView:resize( 800 - 20, 600 - 20 )
   oView:setModel( oModel )
   oView:resizeColumnToContents( 0 ) // ajusta a largura da coluna que exibe o nome da cor
   oView:horizontalHeader():setStretchLastSection( .T. ) // ajusta a largura da coluna que exibe a cor

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

   ::setRowCountCB( {|...|::rowCount( ... )} )
   ::setColumnCountCB( {|...|::columnCount( ... )} )
   ::setDataCB( {|...|::data( ... )} )
   ::setHeaderDataCB( {|...|::headerData( ... )} )

RETURN self

METHOD rowCount() CLASS myModel
RETURN len( aColorsNames )

METHOD columnCount() CLASS myModel
RETURN 2

METHOD data( pIndex, nRole ) CLASS myModel

   LOCAL oVariant := QVariant():new()
   LOCAL oIndex := QModelIndex():newFrom( pIndex )
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()

   IF oIndex:isValid()

      IF nRole == Qt_DisplayRole
         IF nColumn == 0
            oVariant := QVariant():new( aColorsNames[ nRow + 1 ] )
         ENDIF
      ELSEIF nRole == Qt_FontRole
         IF nColumn == 0
            oVariant := QFont():new( "Arial Black", 12 ):toVariant()
         ENDIF
      ELSEIF nRole == Qt_BackgroundRole
         IF nColumn == 1
            oVariant := QColor():new( aColorsNames[ nRow + 1 ] ):toVariant()
         ENDIF
      ENDIF

   ENDIF

RETURN oVariant

METHOD headerData( nSection, nOrientation, nRole ) CLASS myModel

   LOCAL oVariant := QVariant():new()

   IF nOrientation == Qt_Horizontal .AND. nRole == Qt_DisplayRole
      IF nSection == 0
         oVariant := QVariant():new( "Nome" )
      ELSEIF nSection == 1
         oVariant := QVariant():new( "Cor" )
      ENDIF
   ELSEIF nOrientation == Qt_Vertical .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new( alltrim( str( nSection + 1 ) ) )
   ENDIF

RETURN oVariant
