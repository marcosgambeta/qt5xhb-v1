%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractState

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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QAbstractTransition>

$prototype=QState ( QState * parent = 0 )
$internalConstructor=|new1|QState *=0

$prototype=QState ( ChildMode childMode, QState * parent = 0 )
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

$prototype=void addTransition ( QAbstractTransition * transition )
$internalMethod=|void|addTransition,addTransition1|QAbstractTransition *

$prototype=QSignalTransition * addTransition ( QObject * sender, const char * signal, QAbstractState * target )
$internalMethod=|QSignalTransition *|addTransition,addTransition2|QObject *,const char *,QAbstractState *

$prototype=QAbstractTransition * addTransition ( QAbstractState * target )
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

$prototype=void assignProperty ( QObject * object, const char * name, const QVariant & value )
$method=|void|assignProperty|QObject *,const char *,const QVariant &

$prototype=ChildMode childMode () const
$method=|QState::ChildMode|childMode|

$prototype=QAbstractState * errorState () const
$method=|QAbstractState *|errorState|

$prototype=QAbstractState * initialState () const
$method=|QAbstractState *|initialState|

$prototype=void removeTransition ( QAbstractTransition * transition )
$method=|void|removeTransition|QAbstractTransition *

$prototype=void setChildMode ( ChildMode mode )
$method=|void|setChildMode|QState::ChildMode

$prototype=void setErrorState ( QAbstractState * state )
$method=|void|setErrorState|QAbstractState *

$prototype=void setInitialState ( QAbstractState * state )
$method=|void|setInitialState|QAbstractState *

$prototype=QList<QAbstractTransition *> transitions () const
$method=|QList<QAbstractTransition *>|transitions|

$beginSignals
$signal=|finished()
$signal=|propertiesAssigned()
$endSignals

#pragma ENDDUMP
