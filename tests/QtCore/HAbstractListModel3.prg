/*

  Qt5xHb Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt5xhb

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oComboBox
   LOCAL aEstados

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste com a classe HAbstractListModel" )
   oWindow:resize( 640, 480 )

   aEstados := {}

   aadd( aEstados, { "..\images\estados\acre.png"            , "Acre"                } )
   aadd( aEstados, { "..\images\estados\alagoas.png"         , "Alagoas"             } )
   aadd( aEstados, { "..\images\estados\amapa.png"           , "Amapá"               } )
   aadd( aEstados, { "..\images\estados\amazonas.png"        , "Amazonas"            } )
   aadd( aEstados, { "..\images\estados\bahia.png"           , "Bahia"               } )
   aadd( aEstados, { "..\images\estados\ceara.png"           , "Ceará"               } )
   aadd( aEstados, { "..\images\estados\distritofederal.png" , "Distrito Federal"    } )
   aadd( aEstados, { "..\images\estados\espiritosanto.png"   , "Espírito Santo"      } )
   aadd( aEstados, { "..\images\estados\goias.png"           , "Goiás"               } )
   aadd( aEstados, { "..\images\estados\maranhao.png"        , "Maranhão"            } )
   aadd( aEstados, { "..\images\estados\matogrosso.png"      , "Mato Grosso"         } )
   aadd( aEstados, { "..\images\estados\matogrossodosul.png" , "Mato Grosso do Sul"  } )
   aadd( aEstados, { "..\images\estados\minasgerais.png"     , "Minas Gerais"        } )
   aadd( aEstados, { "..\images\estados\para.png"            , "Pará"                } )
   aadd( aEstados, { "..\images\estados\paraiba.png"         , "Paraíba"             } )
   aadd( aEstados, { "..\images\estados\parana.png"          , "Paraná"              } )
   aadd( aEstados, { "..\images\estados\pernambuco.png"      , "Pernambuco"          } )
   aadd( aEstados, { "..\images\estados\piaui.png"           , "Piauí"               } )
   aadd( aEstados, { "..\images\estados\riodejaneiro.png"    , "Rio de Janeiro"      } )
   aadd( aEstados, { "..\images\estados\riograndedonorte.png", "Rio Grande do Norte" } )
   aadd( aEstados, { "..\images\estados\riograndedosul.png"  , "Rio Grande do Sul"   } )
   aadd( aEstados, { "..\images\estados\rondonia.png"        , "Rondônia"            } )
   aadd( aEstados, { "..\images\estados\roraima.png"         , "Roraima"             } )
   aadd( aEstados, { "..\images\estados\santacatarina.png"   , "Santa Catarina"      } )
   aadd( aEstados, { "..\images\estados\saopaulo.png"        , "São Paulo"           } )
   aadd( aEstados, { "..\images\estados\sergipe.png"         , "Sergipe"             } )
   aadd( aEstados, { "..\images\estados\tocantins.png"       , "Tocantins"           } )

   oModel := HAbstractListModel():new( oWindow )
   oModel:setRowCountCB( {||len(aEstados)} )
   oModel:setDisplayRoleCB( {|nRow|aEstados[nRow+1,2]} )
   oModel:setDecorationRoleCB( {|nRow|aEstados[nRow+1,1]} )

   oComboBox := QComboBox():new( oWindow )
   oComboBox:move( 10, 10 )
   oComboBox:resize( 200, 20 )
   oComboBox:setModel( oModel )
   ? oComboBox:onActivated( {|oSender,nIndex|qout(strzero(nIndex,4)),qout(aEstados[nIndex+1,2])} )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
