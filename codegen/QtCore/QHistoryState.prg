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
   METHOD defaultState
   METHOD setDefaultState
   METHOD historyType
   METHOD setHistoryType

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QHistoryState(QState *parent = 0)
$internalConstructor=|new1|QState *=0

$prototype=QHistoryState(HistoryType type, QState *parent = 0)
$internalConstructor=|new2|QHistoryState::HistoryType,QState *=0

//[1]QHistoryState(QState *parent = 0)
//[2]QHistoryState(HistoryType type, QState *parent = 0)

HB_FUNC_STATIC( QHISTORYSTATE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    QHistoryState_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQSTATE(2)||ISNIL(2)) )
  {
    QHistoryState_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QAbstractState *defaultState() const
$method=|QAbstractState *|defaultState|

$prototype=void setDefaultState(QAbstractState *state)
$method=|void|setDefaultState|QAbstractState *

$prototype=HistoryType historyType() const
$method=|QHistoryState::HistoryType|historyType|

$prototype=void setHistoryType(HistoryType type)
$method=|void|setHistoryType|QHistoryState::HistoryType

#pragma ENDDUMP
