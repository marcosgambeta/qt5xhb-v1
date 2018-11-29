%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QVariantAnimation

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPropertyAnimation ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QPropertyAnimation ( QObject * target, const QByteArray & propertyName, QObject * parent = 0 )
$internalConstructor=|new2|QObject *,const QByteArray &,QObject *=0

//[1]QPropertyAnimation ( QObject * parent = 0 )
//[2]QPropertyAnimation ( QObject * target, const QByteArray & propertyName, QObject * parent = 0 )

HB_FUNC_STATIC( QPROPERTYANIMATION_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QPropertyAnimation_new1();
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISQBYTEARRAY(2) && ISOPTQOBJECT(3) )
  {
    QPropertyAnimation_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QByteArray propertyName () const
$method=|QByteArray|propertyName|

$prototype=void setPropertyName ( const QByteArray & propertyName )
$method=|void|setPropertyName|const QByteArray &

$prototype=void setTargetObject ( QObject * target )
$method=|void|setTargetObject|QObject *

$prototype=QObject * targetObject () const
$method=|QObject *|targetObject|

#pragma ENDDUMP
