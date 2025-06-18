//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

STATIC s_aColorsNames

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView

   oApp := QApplication():new()

   s_aColorsNames := QColor():colorNames()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Tabela de cores")
   oWindow:resize(800, 600)

   oModel := myModel():new()

   oView := QTableView():new(oWindow)
   oView:move(10, 10)
   oView:resize(800 - 20, 600 - 20)
   oView:setModel(oModel)
   // ajusta a largura da coluna que exibe o nome da cor
   oView:resizeColumnToContents(0)
   // ajusta a largura da coluna que exibe a cor
   oView:horizontalHeader():setStretchLastSection(.T.)

   oWindow:show()

   oApp:exec()

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN NIL

#include "hbclass.ch"

CLASS myModel INHERIT HAbstractTableModelV2

   METHOD new
   METHOD rowCount
   METHOD columnCount
   METHOD data
   METHOD headerData

END CLASS

METHOD new(...) CLASS myModel

   ::super:new(...)

   ::setRowCountCB({|...|::rowCount(...)})
   ::setColumnCountCB({|...|::columnCount(...)})
   ::setDataCB({|...|::data(...)})
   ::setHeaderDataCB({|...|::headerData(...)})

RETURN self

METHOD rowCount() CLASS myModel
RETURN Len(s_aColorsNames)

METHOD columnCount() CLASS myModel
RETURN 2

METHOD data(pIndex, nRole) CLASS myModel

   LOCAL oVariant := QVariant():new()
   LOCAL oIndex := QModelIndex():newFrom(pIndex)
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()

   IF oIndex:isValid()

      IF nRole == Qt_DisplayRole
         IF nColumn == 0
            oVariant := QVariant():new(s_aColorsNames[nRow + 1])
         ENDIF
      ELSEIF nRole == Qt_FontRole
         IF nColumn == 0
            oVariant := QFont():new("Arial Black", 12):toVariant()
         ENDIF
      ELSEIF nRole == Qt_BackgroundRole
         IF nColumn == 1
            oVariant := QColor():new(s_aColorsNames[nRow + 1]):toVariant()
         ENDIF
      ENDIF

   ENDIF

RETURN oVariant

METHOD headerData(nSection, nOrientation, nRole) CLASS myModel

   LOCAL oVariant := QVariant():new()

   IF nOrientation == Qt_Horizontal .AND. nRole == Qt_DisplayRole
      IF nSection == 0
         oVariant := QVariant():new("Nome")
      ELSEIF nSection == 1
         oVariant := QVariant():new("Cor")
      ENDIF
   ELSEIF nOrientation == Qt_Vertical .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new(AllTrim(Str(nSection + 1)))
   ENDIF

RETURN oVariant
