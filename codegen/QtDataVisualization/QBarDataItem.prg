%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=QBarDataItem()
$internalConstructor=|new1|

$prototype=QBarDataItem(float value)
$internalConstructor=|new2|float

$prototype=QBarDataItem(float value, float angle)
$internalConstructor=|new3|float,float

$prototype=QBarDataItem(const QBarDataItem &other)
$internalConstructor=|new4|const QBarDataItem &

//[1]QBarDataItem()
//[2]QBarDataItem(float value)
//[3]QBarDataItem(float value, float angle)
//[4]QBarDataItem(const QBarDataItem &other)

HB_FUNC_STATIC( QBARDATAITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBarDataItem_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBarDataItem_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QBarDataItem_new3();
  }
  else if( ISNUMPAR(1) && ISQBARDATAITEM(1) )
  {
    QBarDataItem_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QBarDataItem()
$deleteMethod

$prototype=void setValue(float val)
$method=|void|setValue|float

$prototype=float value() const
$method=|float|value|

$prototype=void setRotation(float angle)
$method=|void|setRotation|float

$prototype=float rotation() const
$method=|float|rotation|

$prototype=void createExtraData() [protected]

$extraMethods

#pragma ENDDUMP
