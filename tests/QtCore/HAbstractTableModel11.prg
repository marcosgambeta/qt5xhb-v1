//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView
   LOCAL aEstados

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(800, 600)

   aEstados := {}
   AAdd(aEstados, {"..\images\estados\acre.png"            , "Acre"               })
   AAdd(aEstados, {"..\images\estados\alagoas.png"         , "Alagoas"            })
   AAdd(aEstados, {"..\images\estados\amapa.png"           , "Amapá"              })
   AAdd(aEstados, {"..\images\estados\amazonas.png"        , "Amazonas"           })
   AAdd(aEstados, {"..\images\estados\bahia.png"           , "Bahia"              })
   AAdd(aEstados, {"..\images\estados\ceara.png"           , "Ceará"              })
   AAdd(aEstados, {"..\images\estados\distritofederal.png" , "Distrito Federal"   })
   AAdd(aEstados, {"..\images\estados\espiritosanto.png"   , "Espírito Santo"     })
   AAdd(aEstados, {"..\images\estados\goias.png"           , "Goiás"              })
   AAdd(aEstados, {"..\images\estados\maranhao.png"        , "Maranhão"           })
   AAdd(aEstados, {"..\images\estados\matogrosso.png"      , "Mato Grosso"        })
   AAdd(aEstados, {"..\images\estados\matogrossodosul.png" , "Mato Grosso do Sul" })
   AAdd(aEstados, {"..\images\estados\minasgerais.png"     , "Minas Gerais"       })
   AAdd(aEstados, {"..\images\estados\para.png"            , "Pará"               })
   AAdd(aEstados, {"..\images\estados\paraiba.png"         , "Paraíba"            })
   AAdd(aEstados, {"..\images\estados\parana.png"          , "Paraná"             })
   AAdd(aEstados, {"..\images\estados\pernambuco.png"      , "Pernambuco"         })
   AAdd(aEstados, {"..\images\estados\piaui.png"           , "Piauí"              })
   AAdd(aEstados, {"..\images\estados\riodejaneiro.png"    , "Rio de Janeiro"     })
   AAdd(aEstados, {"..\images\estados\riograndedonorte.png", "Rio Grande do Norte"})
   AAdd(aEstados, {"..\images\estados\riograndedosul.png"  , "Rio Grande do Sul"  })
   AAdd(aEstados, {"..\images\estados\rondonia.png"        , "Rondônia"           })
   AAdd(aEstados, {"..\images\estados\roraima.png"         , "Roraima"            })
   AAdd(aEstados, {"..\images\estados\santacatarina.png"   , "Santa Catarina"     })
   AAdd(aEstados, {"..\images\estados\saopaulo.png"        , "São Paulo"          })
   AAdd(aEstados, {"..\images\estados\sergipe.png"         , "Sergipe"            })
   AAdd(aEstados, {"..\images\estados\tocantins.png"       , "Tocantins"          })

   oModel := HAbstractTableModel():new()

   // total de linhas
   oModel:setRowCountCB({||Len(aEstados)})
   // total de colunas (1=imagem 2=nome)
   oModel:setColumnCountCB({||2})

   // conteúdo da célula (coluna 2)
   oModel:setDisplayRoleCB({|nRow, nCol|IIf(nCol == 1, aEstados[nRow + 1, 2], NIL)})
   // conteúdo da célula (coluna 1)
   oModel:setDecorationRoleCB({|nRow, nCol|IIf(nCol == 0, QPixmap():new(aEstados[nRow + 1, 1]), NIL)})
   // tamanho da célula (coluna 1)
   oModel:setSizeHintRoleCB({|nRow, nCol|IIf(nCol == 0, QSize():new(150, 107), NIL)})

   // títulos das colunas
   oModel:setHorizontalHeaderDisplayRoleCB({|nCol|{"Bandeira", "Estado"}[nCol + 1]})
   // títulos das linhas
   oModel:setVerticalHeaderDisplayRoleCB({|nRow|AllTrim(Str(nRow))})

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
