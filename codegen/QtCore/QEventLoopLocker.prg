%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD new
   METHOD delete

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QEventLoopLocker()
$internalConstructor=|new1|

$prototype=QEventLoopLocker(QEventLoop * loop)
$internalConstructor=|new2|QEventLoop *

$prototype=QEventLoopLocker(QThread * thread)
$internalConstructor=|new3|QThread *

//[1]QEventLoopLocker()
//[2]QEventLoopLocker(QEventLoop * loop)
//[3]QEventLoopLocker(QThread * thread)

HB_FUNC_STATIC( QEVENTLOOPLOCKER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QEventLoopLocker_new1();
  }
  else if( ISNUMPAR(1) && ISQEVENTLOOP(1) )
  {
    QEventLoopLocker_new2();
  }
  else if( ISNUMPAR(1) && ISQTHREAD(1) )
  {
    QEventLoopLocker_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$extraMethods

#pragma ENDDUMP
