$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QBYTEARRAY
#endif

CLASS QSignalTransition INHERIT QAbstractTransition

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD senderObject
   METHOD setSenderObject
   METHOD signal
   METHOD setSignal

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSignalTransition(QState *sourceState = 0)
*/
$internalConstructor=|new1|QState *=0

/*
QSignalTransition(const QObject *sender, const char *signal,QState *sourceState = 0)
*/
$internalConstructor=|new2|const QObject *,const char *,QState *=0

//[1]QSignalTransition(QState *sourceState = 0)
//[2]QSignalTransition(const QObject *sender, const char *signal,QState *sourceState = 0)

HB_FUNC_STATIC( QSIGNALTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    QSignalTransition_new1();
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISCHAR(2) && (ISQSTATE(3)||ISNIL(3)) )
  {
    QSignalTransition_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QObject *senderObject() const
*/
$method=|QObject *|senderObject|

/*
void setSenderObject(const QObject *sender)
*/
$method=|void|setSenderObject|const QObject *

/*
QByteArray signal() const
*/
$method=|QByteArray|signal|

/*
void setSignal(const QByteArray &signal)
*/
$method=|void|setSignal|const QByteArray &

#pragma ENDDUMP
