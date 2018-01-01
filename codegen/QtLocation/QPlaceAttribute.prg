%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QPlaceAttribute

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD label
   METHOD setLabel
   METHOD text
   METHOD setText
   METHOD isEmpty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=QPlaceAttribute()
$internalConstructor=5,4,0|new1|

$prototype=QPlaceAttribute(const QPlaceAttribute &other)
$internalConstructor=5,4,0|new2|const QPlaceAttribute &

//[1]QPlaceAttribute()
//[2]QPlaceAttribute(const QPlaceAttribute &other)

HB_FUNC_STATIC( QPLACEATTRIBUTE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceAttribute_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACEATTRIBUTE(1) )
  {
    QPlaceAttribute_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

$prototype=QString label() const
$method=5,4,0|QString|label|

$prototype=void setLabel(const QString &label)
$method=5,4,0|void|setLabel|const QString &

$prototype=QString text() const
$method=5,4,0|QString|text|

$prototype=void setText(const QString &text)
$method=5,4,0|void|setText|const QString &

$prototype=bool isEmpty() const
$method=5,4,0|bool|isEmpty|

$extraMethods

#pragma ENDDUMP
