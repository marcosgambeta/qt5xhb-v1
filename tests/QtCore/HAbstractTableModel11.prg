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
   AAdd(aEstados, {"..\images\estados\amapa.png"           , "Amap�"              })
   AAdd(aEstados, {"..\images\estados\amazonas.png"        , "Amazonas"           })
   AAdd(aEstados, {"..\images\estados\bahia.png"           , "Bahia"              })
   AAdd(aEstados, {"..\images\estados\ceara.png"           , "Cear�"              })
   AAdd(aEstados, {"..\images\estados\distritofederal.png" , "Distrito Federal"   })
   AAdd(aEstados, {"..\images\estados\espiritosanto.png"   , "Esp�rito Santo"     })
   AAdd(aEstados, {"..\images\estados\goias.png"           , "Goi�s"              })
   AAdd(aEstados, {"..\images\estados\maranhao.png"        , "Maranh�o"           })
   AAdd(aEstados, {"..\images\estados\matogrosso.png"      , "Mato Grosso"        })
   AAdd(aEstados, {"..\images\estados\matogrossodosul.png" , "Mato Grosso do Sul" })
   AAdd(aEstados, {"..\images\estados\minasgerais.png"     , "Minas Gerais"       })
   AAdd(aEstados, {"..\images\estados\para.png"            , "Par�"               })
   AAdd(aEstados, {"..\images\estados\paraiba.png"         , "Para�ba"            })
   AAdd(aEstados, {"..\images\estados\parana.png"          , "Paran�"             })
   AAdd(aEstados, {"..\images\estados\pernambuco.png"      , "Pernambuco"         })
   AAdd(aEstados, {"..\images\estados\piaui.png"           , "Piau�"              })
   AAdd(aEstados, {"..\images\estados\riodejaneiro.png"    , "Rio de Janeiro"     })
   AAdd(aEstados, {"..\images\estados\riograndedonorte.png", "Rio Grande do Norte"})
   AAdd(aEstados, {"..\images\estados\riograndedosul.png"  , "Rio Grande do Sul"  })
   AAdd(aEstados, {"..\images\estados\rondonia.png"        , "Rond�nia"           })
   AAdd(aEstados, {"..\images\estados\roraima.png"         , "Roraima"            })
   AAdd(aEstados, {"..\images\estados\santacatarina.png"   , "Santa Catarina"     })
   AAdd(aEstados, {"..\images\estados\saopaulo.png"        , "S�o Paulo"          })
   AAdd(aEstados, {"..\images\estados\sergipe.png"         , "Sergipe"            })
   AAdd(aEstados, {"..\images\estados\tocantins.png"       , "Tocantins"          })

   oModel := HAbstractTableModel():new()

   // total de linhas
   oModel:setRowCountCB({||Len(aEstados)})
   // total de colunas (1=imagem 2=nome)
   oModel:setColumnCountCB({||2})

   // conte�do da c�lula (coluna 2)
   oModel:setDisplayRoleCB({|nRow, nCol|IIf(nCol == 1, aEstados[nRow + 1, 2], NIL)})
   // conte�do da c�lula (coluna 1)
   oModel:setDecorationRoleCB({|nRow, nCol|IIf(nCol == 0, QPixmap():new(aEstados[nRow + 1, 1]), NIL)})
   // tamanho da c�lula (coluna 1)
   oModel:setSizeHintRoleCB({|nRow, nCol|IIf(nCol == 0, QSize():new(150, 107), NIL)})

   // t�tulos das colunas
   oModel:setHorizontalHeaderDisplayRoleCB({|nCol|{"Bandeira", "Estado"}[nCol + 1]})
   // t�tulos das linhas
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
