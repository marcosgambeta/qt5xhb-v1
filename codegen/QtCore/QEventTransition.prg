%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QEventTransition INHERIT QAbstractTransition

   METHOD new
   METHOD delete
   METHOD eventSource
   METHOD eventType
   METHOD setEventSource
   METHOD setEventType

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QEventTransition(QState * sourceState = 0)
$internalConstructor=|new1|QState *=0

$prototype=QEventTransition(QObject * object, QEvent::Type type, QState * sourceState = 0)
$internalConstructor=|new2|QObject *,QEvent::Type,QState *=0

//[1]QEventTransition(QState * sourceState = 0)
//[2]QEventTransition(QObject * object, QEvent::Type type, QState * sourceState = 0)

HB_FUNC_STATIC( QEVENTTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    QEventTransition_new1();
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISNUM(2) && (ISQSTATE(3)||ISNIL(3)) )
  {
    QEventTransition_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QObject * eventSource() const
$method=|QObject *|eventSource|

$prototype=QEvent::Type eventType() const
$method=|QEvent::Type|eventType|

$prototype=void setEventSource(QObject * object)
$method=|void|setEventSource|QObject *

$prototype=void setEventType(QEvent::Type type)
$method=|void|setEventType|QEvent::Type

#pragma ENDDUMP
