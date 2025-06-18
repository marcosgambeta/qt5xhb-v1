//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

STATIC s_aEstados

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(800, 600)

   s_aEstados := {}
   AAdd(s_aEstados, {"..\images\estados\acre.png"            , "Acre"               })
   AAdd(s_aEstados, {"..\images\estados\alagoas.png"         , "Alagoas"            })
   AAdd(s_aEstados, {"..\images\estados\amapa.png"           , "Amapá"              })
   AAdd(s_aEstados, {"..\images\estados\amazonas.png"        , "Amazonas"           })
   AAdd(s_aEstados, {"..\images\estados\bahia.png"           , "Bahia"              })
   AAdd(s_aEstados, {"..\images\estados\ceara.png"           , "Ceará"              })
   AAdd(s_aEstados, {"..\images\estados\distritofederal.png" , "Distrito Federal"   })
   AAdd(s_aEstados, {"..\images\estados\espiritosanto.png"   , "Espírito Santo"     })
   AAdd(s_aEstados, {"..\images\estados\goias.png"           , "Goiás"              })
   AAdd(s_aEstados, {"..\images\estados\maranhao.png"        , "Maranhão"           })
   AAdd(s_aEstados, {"..\images\estados\matogrosso.png"      , "Mato Grosso"        })
   AAdd(s_aEstados, {"..\images\estados\matogrossodosul.png" , "Mato Grosso do Sul" })
   AAdd(s_aEstados, {"..\images\estados\minasgerais.png"     , "Minas Gerais"       })
   AAdd(s_aEstados, {"..\images\estados\para.png"            , "Pará"               })
   AAdd(s_aEstados, {"..\images\estados\paraiba.png"         , "Paraíba"            })
   AAdd(s_aEstados, {"..\images\estados\parana.png"          , "Paraná"             })
   AAdd(s_aEstados, {"..\images\estados\pernambuco.png"      , "Pernambuco"         })
   AAdd(s_aEstados, {"..\images\estados\piaui.png"           , "Piauí"              })
   AAdd(s_aEstados, {"..\images\estados\riodejaneiro.png"    , "Rio de Janeiro"     })
   AAdd(s_aEstados, {"..\images\estados\riograndedonorte.png", "Rio Grande do Norte"})
   AAdd(s_aEstados, {"..\images\estados\riograndedosul.png"  , "Rio Grande do Sul"  })
   AAdd(s_aEstados, {"..\images\estados\rondonia.png"        , "Rondônia"           })
   AAdd(s_aEstados, {"..\images\estados\roraima.png"         , "Roraima"            })
   AAdd(s_aEstados, {"..\images\estados\santacatarina.png"   , "Santa Catarina"     })
   AAdd(s_aEstados, {"..\images\estados\saopaulo.png"        , "São Paulo"          })
   AAdd(s_aEstados, {"..\images\estados\sergipe.png"         , "Sergipe"            })
   AAdd(s_aEstados, {"..\images\estados\tocantins.png"       , "Tocantins"          })

   oModel := myModel():new()

   oView := QTableView():new(oWindow)
   oView:move(10, 10)
   oView:resize(800 - 20, 600 - 20)
   oView:setModel(oModel)
   oView:resizeRowsToContents()
   oView:resizeColumnsToContents()

   oWindow:show()

   oApp:exec()

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN NIL

#include <hbclass.ch>

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
RETURN Len(s_aEstados)

METHOD columnCount() CLASS myModel
RETURN 2 // coluna 1=imagem coluna 2=nome

METHOD data(pIndex, nRole) CLASS myModel

   LOCAL oVariant := QVariant():new()
   LOCAL oIndex := QModelIndex():newFrom(pIndex)
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()

   IF oIndex:isValid()

      IF nRole == Qt_DisplayRole .AND. nColumn == 1
         oVariant := QVariant():new(s_aEstados[nRow + 1, 2])
      ELSEIF nRole == Qt_DecorationRole .AND. nColumn == 0
         oVariant := QVariant():new(QPixmap():new(s_aEstados[nRow + 1, 1]):toVariant())
      ELSEIF nRole == Qt_SizeHintRole .AND. nColumn == 0
         oVariant := QVariant():new(QSize():new(150, 107))
      ENDIF

   ENDIF

RETURN oVariant

METHOD headerData(nSection, nOrientation, nRole) CLASS myModel

   LOCAL oVariant := QVariant():new()

   IF nOrientation == Qt_Horizontal .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new({"Bandeira", "Estado"}[nSection + 1])
   ELSEIF nOrientation == Qt_Vertical .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new("Linha " + AllTrim(Str(nSection)))
   ENDIF

RETURN oVariant
