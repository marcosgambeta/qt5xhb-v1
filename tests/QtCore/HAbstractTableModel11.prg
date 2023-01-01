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
   LOCAL aEstados

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 800, 600 )

   aEstados := {}
   aadd( aEstados, { "..\images\estados\acre.png"            , "Acre"                })
   aadd( aEstados, { "..\images\estados\alagoas.png"         , "Alagoas"             })
   aadd( aEstados, { "..\images\estados\amapa.png"           , "Amapá"               })
   aadd( aEstados, { "..\images\estados\amazonas.png"        , "Amazonas"            })
   aadd( aEstados, { "..\images\estados\bahia.png"           , "Bahia"               })
   aadd( aEstados, { "..\images\estados\ceara.png"           , "Ceará"               })
   aadd( aEstados, { "..\images\estados\distritofederal.png" , "Distrito Federal"    })
   aadd( aEstados, { "..\images\estados\espiritosanto.png"   , "Espírito Santo"      })
   aadd( aEstados, { "..\images\estados\goias.png"           , "Goiás"               })
   aadd( aEstados, { "..\images\estados\maranhao.png"        , "Maranhão"            })
   aadd( aEstados, { "..\images\estados\matogrosso.png"      , "Mato Grosso"         })
   aadd( aEstados, { "..\images\estados\matogrossodosul.png" , "Mato Grosso do Sul"  })
   aadd( aEstados, { "..\images\estados\minasgerais.png"     , "Minas Gerais"        })
   aadd( aEstados, { "..\images\estados\para.png"            , "Pará"                })
   aadd( aEstados, { "..\images\estados\paraiba.png"         , "Paraíba"             })
   aadd( aEstados, { "..\images\estados\parana.png"          , "Paraná"              })
   aadd( aEstados, { "..\images\estados\pernambuco.png"      , "Pernambuco"          })
   aadd( aEstados, { "..\images\estados\piaui.png"           , "Piauí"               })
   aadd( aEstados, { "..\images\estados\riodejaneiro.png"    , "Rio de Janeiro"      })
   aadd( aEstados, { "..\images\estados\riograndedonorte.png", "Rio Grande do Norte" })
   aadd( aEstados, { "..\images\estados\riograndedosul.png"  , "Rio Grande do Sul"   })
   aadd( aEstados, { "..\images\estados\rondonia.png"        , "Rondônia"            })
   aadd( aEstados, { "..\images\estados\roraima.png"         , "Roraima"             })
   aadd( aEstados, { "..\images\estados\santacatarina.png"   , "Santa Catarina"      })
   aadd( aEstados, { "..\images\estados\saopaulo.png"        , "São Paulo"           })
   aadd( aEstados, { "..\images\estados\sergipe.png"         , "Sergipe"             })
   aadd( aEstados, { "..\images\estados\tocantins.png"       , "Tocantins"           })

   oModel := HAbstractTableModel():new()

   oModel:setRowCountCB( {||len(aEstados)} ) // total de linhas
   oModel:setColumnCountCB( {||2} ) // total de colunas (1=imagem 2=nome)

   oModel:setDisplayRoleCB( {|nRow,nCol|iif(nCol==1,aEstados[nRow+1,2],NIL)} ) // conteúdo da célula (coluna 2)
   oModel:setDecorationRoleCB( {|nRow,nCol|iif(nCol==0,QPixmap():new(aEstados[nRow+1,1]),NIL)} ) // conteúdo da célula (coluna 1)
   oModel:setSizeHintRoleCB( {|nRow,nCol|iif(nCol==0,QSize():new(150,107),NIL)} ) // tamanho da célula (coluna 1)

   oModel:setHorizontalHeaderDisplayRoleCB( {|nCol|{"Bandeira","Estado"}[nCol+1]} ) // títulos das colunas
   oModel:setVerticalHeaderDisplayRoleCB( {|nRow|alltrim(str(nRow))} ) // títulos das linhas

   oView := QTableView():new( oWindow )
   oView:move( 10, 10 )
   oView:resize( 800 - 20, 600 - 20 )
   oView:setModel( oModel )
   oView:resizeRowsToContents()
   oView:resizeColumnsToContents()

   oWindow:show()

   oApp:exec()

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN
