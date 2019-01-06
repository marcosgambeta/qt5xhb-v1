%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSemaphore(int n = 0)
$constructor=|new|int=0

$deleteMethod

$prototype=void acquire(int n = 1)
$method=|void|acquire|int=1

$prototype=bool tryAcquire(int n = 1)
$internalMethod=|bool|tryAcquire,tryAcquire1|int=1

$prototype=bool tryAcquire(int n, int timeout)
$internalMethod=|bool|tryAcquire,tryAcquire2|int,int

//[1]bool tryAcquire(int n = 1)
//[2]bool tryAcquire(int n, int timeout)

HB_FUNC_STATIC( QSEMAPHORE_TRYACQUIRE )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QSemaphore_tryAcquire1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QSemaphore_tryAcquire2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=tryAcquire

$prototype=void release(int n = 1)
$method=|void|release|int=1

$prototype=int available() const
$method=|int|available|

$extraMethods

#pragma ENDDUMP
