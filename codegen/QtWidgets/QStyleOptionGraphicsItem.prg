%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QStyleOption

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleOptionGraphicsItem()
$internalConstructor=|new1|

$prototype=QStyleOptionGraphicsItem(const QStyleOptionGraphicsItem &other)
$internalConstructor=|new2|const QStyleOptionGraphicsItem &

$prototype=QStyleOptionGraphicsItem(int version) [protected]

//[1]QStyleOptionGraphicsItem()
//[2]QStyleOptionGraphicsItem(const QStyleOptionGraphicsItem &other)
//[3]QStyleOptionGraphicsItem(int version) [protected]

HB_FUNC_STATIC( QSTYLEOPTIONGRAPHICSITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionGraphicsItem_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONGRAPHICSITEM(1) )
  {
    QStyleOptionGraphicsItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=static qreal levelOfDetailFromTransform(const QTransform &worldTransform)
$staticMethod=|qreal|levelOfDetailFromTransform|const QTransform &

$prototype=QRectF exposedRect
$variableMethod=|QRectF|exposedRect|
$variableMethod=|void|exposedRect,setExposedRect|QRectF

$prototype=QMatrix matrix
$variableMethod=|QMatrix|matrix|
$variableMethod=|void|matrix,setMatrix|QMatrix

$prototype=qreal levelOfDetail
$variableMethod=|qreal|levelOfDetail|
$variableMethod=|void|levelOfDetail,setLevelOfDetail|qreal

#pragma ENDDUMP
