$header

#include "hbclass.ch"

CLASS QTileRules

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTileRules(Qt::TileRule horizontalRule, Qt::TileRule verticalRule)
*/
$internalConstructor=|new1|Qt::TileRule,Qt::TileRule

/*
QTileRules(Qt::TileRule rule = Qt::StretchTile)
*/
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
