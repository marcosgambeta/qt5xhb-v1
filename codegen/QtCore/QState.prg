$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIGNALTRANSITION
REQUEST QABSTRACTTRANSITION
REQUEST QABSTRACTSTATE
#endif

CLASS QState INHERIT QAbstractState

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addTransition
   METHOD assignProperty
   METHOD childMode
   METHOD errorState
   METHOD initialState
   METHOD removeTransition
   METHOD setChildMode
   METHOD setErrorState
   METHOD setInitialState
   METHOD transitions

   METHOD onFinished
   METHOD onPropertiesAssigned

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QState ( QState * parent = 0 )
*/
$internalConstructor=|new1|QState *=0

/*
QState ( ChildMode childMode, QState * parent = 0 )
*/
$internalConstructor=|new2|QState::ChildMode,QState *=0

//[1]QState ( QState * parent = 0 )
//[2]QState ( ChildMode childMode, QState * parent = 0 )

HB_FUNC_STATIC( QSTATE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    QState_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQSTATE(2)||ISNIL(2)) )
  {
    QState_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addTransition ( QAbstractTransition * transition )
*/
$internalMethod=|void|addTransition,addTransition1|QAbstractTransition *

/*
QSignalTransition * addTransition ( QObject * sender, const char * signal, QAbstractState * target )
*/
$internalMethod=|QSignalTransition *|addTransition,addTransition2|QObject *,const char *,QAbstractState *

/*
QAbstractTransition * addTransition ( QAbstractState * target )
*/
$internalMethod=|QAbstractTransition *|addTransition,addTransition3|QAbstractState *

//[1]void addTransition ( QAbstractTransition * transition )
//[2]QSignalTransition * addTransition ( QObject * sender, const char * signal, QAbstractState * target )
//[3]QAbstractTransition * addTransition ( QAbstractState * target )

HB_FUNC_STATIC( QSTATE_ADDTRANSITION )
{
  if( ISNUMPAR(1) && ISQABSTRACTTRANSITION(1) )
  {
    QState_addTransition1();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQABSTRACTSTATE(3) )
  {
    QState_addTransition2();
  }
  else if( ISNUMPAR(1) && ISQABSTRACTSTATE(1) )
  {
    QState_addTransition3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void assignProperty ( QObject * object, const char * name, const QVariant & value )
*/
$method=|void|assignProperty|QObject *,const char *,const QVariant &

/*
ChildMode childMode () const
*/
$method=|QState::ChildMode|childMode|

/*
QAbstractState * errorState () const
*/
$method=|QAbstractState *|errorState|

/*
QAbstractState * initialState () const
*/
$method=|QAbstractState *|initialState|

/*
void removeTransition ( QAbstractTransition * transition )
*/
$method=|void|removeTransition|QAbstractTransition *

/*
void setChildMode ( ChildMode mode )
*/
$method=|void|setChildMode|QState::ChildMode

/*
void setErrorState ( QAbstractState * state )
*/
$method=|void|setErrorState|QAbstractState *

/*
void setInitialState ( QAbstractState * state )
*/
$method=|void|setInitialState|QAbstractState *

/*
QList<QAbstractTransition *> transitions () const
*/
$method=|QList<QAbstractTransition *>|transitions|

#pragma ENDDUMP
