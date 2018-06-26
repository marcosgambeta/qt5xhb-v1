%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD new
   METHOD delete

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTileRules(Qt::TileRule horizontalRule, Qt::TileRule verticalRule)
$internalConstructor=|new1|Qt::TileRule,Qt::TileRule

$prototype=QTileRules(Qt::TileRule rule = Qt::StretchTile)
$internalConstructor=|new2|Qt::TileRule=Qt::StretchTile

//[1]QTileRules(Qt::TileRule horizontalRule, Qt::TileRule verticalRule)
//[2]QTileRules(Qt::TileRule rule = Qt::StretchTile)

HB_FUNC_STATIC( QTILERULES_NEW )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTileRules_new1();
  }
  else if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QTileRules_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$extraMethods

#pragma ENDDUMP
