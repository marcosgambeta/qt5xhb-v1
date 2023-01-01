/*

  Qt5xHb Project - Test Program

  Copyright (C) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb

*/

#include "qt5xhb.ch"

STATIC aEstados

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView

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

   oModel := myModel():new()

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
RETURN len(aEstados)

METHOD columnCount() CLASS myModel
RETURN 2 // coluna 1=imagem coluna 2=nome

METHOD data( pIndex, nRole ) CLASS myModel

   LOCAL oVariant := QVariant():new()
   LOCAL oIndex := QModelIndex():newFrom( pIndex )
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()

   IF oIndex:isValid()

      IF nRole == Qt_DisplayRole .AND. nColumn == 1
         oVariant := QVariant():new( aEstados[ nRow + 1, 2 ] )
      ELSEIF nRole == Qt_DecorationRole .AND. nColumn == 0
         oVariant := QVariant():new( QPixmap():new( aEstados[ nRow + 1, 1 ] ):toVariant() )
      ELSEIF nRole == Qt_SizeHintRole .AND. nColumn == 0
         oVariant := QVariant():new( QSize():new( 150, 107 ) )
      ENDIF

   ENDIF

RETURN oVariant

METHOD headerData( nSection, nOrientation, nRole ) CLASS myModel

   LOCAL oVariant := QVariant():new()

   IF nOrientation == Qt_Horizontal .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new( { "Bandeira", "Estado" }[ nSection + 1 ] )
   ELSEIF nOrientation == Qt_Vertical .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new( "Linha " + alltrim( str( nSection ) ) )
   ENDIF

RETURN oVariant
