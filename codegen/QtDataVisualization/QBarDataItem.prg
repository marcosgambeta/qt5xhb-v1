%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QBarDataItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD rotation
   METHOD setRotation
   METHOD setValue
   METHOD value

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

$prototype=void createExtraData() (protected)

$extraMethods

#pragma ENDDUMP
