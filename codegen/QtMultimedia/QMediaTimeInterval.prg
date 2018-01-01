%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QMediaTimeInterval

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD contains
   METHOD end
   METHOD isNormal
   METHOD normalized
   METHOD start
   METHOD translated

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

$prototype=QMediaTimeInterval()
$constructor=|new1|

$prototype=QMediaTimeInterval(qint64 start, qint64 end)
$constructor=|new2|qint64,qint64

$prototype=QMediaTimeInterval(const QMediaTimeInterval & other)
$constructor=|new3|const QMediaTimeInterval &

//[1]QMediaTimeInterval()
//[2]QMediaTimeInterval(qint64 start, qint64 end)
//[3]QMediaTimeInterval(const QMediaTimeInterval & other)

HB_FUNC_STATIC( QMEDIATIMEINTERVAL_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMEDIATIMEINTERVAL_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QMEDIATIMEINTERVAL_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQMEDIATIMEINTERVAL(1) )
  {
    HB_FUNC_EXEC( QMEDIATIMEINTERVAL_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool contains(qint64 time) const
$method=|bool|contains|qint64

$prototype=qint64 end() const
$method=|qint64|end|

$prototype=bool isNormal() const
$method=|bool|isNormal|

$prototype=QMediaTimeInterval normalized() const
$method=|QMediaTimeInterval|normalized|

$prototype=qint64 start() const
$method=|qint64|start|

$prototype=QMediaTimeInterval translated(qint64 offset) const
$method=|QMediaTimeInterval|translated|qint64

$extraMethods

#pragma ENDDUMP
