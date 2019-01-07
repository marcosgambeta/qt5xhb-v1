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

$beginClassFrom=QStyleOptionComplex

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleOptionSizeGrip()
$internalConstructor=|new1|

$prototype=QStyleOptionSizeGrip(const QStyleOptionSizeGrip &other)
$internalConstructor=|new2|const QStyleOptionSizeGrip &

$prototype=QStyleOptionSizeGrip(int version) [protected]

//[1]QStyleOptionSizeGrip()
//[2]QStyleOptionSizeGrip(const QStyleOptionSizeGrip &other)
//[3]QStyleOptionSizeGrip(int version) [protected]

HB_FUNC_STATIC( QSTYLEOPTIONSIZEGRIP_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionSizeGrip_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONSIZEGRIP(1) )
  {
    QStyleOptionSizeGrip_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=Qt::Corner corner
$variableMethod=|Qt::Corner|corner|
$variableMethod=|void|corner,setCorner|Qt::Corner

#pragma ENDDUMP
