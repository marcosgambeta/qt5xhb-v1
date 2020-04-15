%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QList>

$prototype=QMediaTimeRange()
$internalConstructor=|new1|

$prototype=QMediaTimeRange(qint64 start, qint64 end)
$internalConstructor=|new2|qint64,qint64

$prototype=QMediaTimeRange(const QMediaTimeInterval & interval)
$internalConstructor=|new3|const QMediaTimeInterval &

$prototype=QMediaTimeRange(const QMediaTimeRange & range)
$internalConstructor=|new4|const QMediaTimeRange &

/*
[1]QMediaTimeRange()
[2]QMediaTimeRange(qint64 start, qint64 end)
[3]QMediaTimeRange(const QMediaTimeInterval & interval)
[4]QMediaTimeRange(const QMediaTimeRange & range)
*/

HB_FUNC_STATIC( QMEDIATIMERANGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMediaTimeRange_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QMediaTimeRange_new2();
  }
  else if( ISNUMPAR(1) && ISQMEDIATIMEINTERVAL(1) )
  {
    QMediaTimeRange_new3();
  }
  else if( ISNUMPAR(1) && ISQMEDIATIMERANGE(1) )
  {
    QMediaTimeRange_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QMediaTimeRange()
$deleteMethod

$prototype=void addInterval(const QMediaTimeInterval & interval)
$internalMethod=|void|addInterval,addInterval1|const QMediaTimeInterval &

$prototype=void addInterval(qint64 start, qint64 end)
$internalMethod=|void|addInterval,addInterval2|qint64,qint64

/*
[1]void addInterval(const QMediaTimeInterval & interval)
[2]void addInterval(qint64 start, qint64 end)
*/

HB_FUNC_STATIC( QMEDIATIMERANGE_ADDINTERVAL )
{
  if( ISNUMPAR(1) && ISQMEDIATIMEINTERVAL(1) )
  {
    QMediaTimeRange_addInterval1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QMediaTimeRange_addInterval2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addInterval

$prototype=void addTimeRange(const QMediaTimeRange & range)
$method=|void|addTimeRange|const QMediaTimeRange &

$prototype=void clear()
$method=|void|clear|

$prototype=bool contains(qint64 time) const
$method=|bool|contains|qint64

$prototype=qint64 earliestTime() const
$method=|qint64|earliestTime|

$prototype=QList<QMediaTimeInterval> intervals() const
$method=|QList<QMediaTimeInterval>|intervals|

$prototype=bool isContinuous() const
$method=|bool|isContinuous|

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$prototype=qint64 latestTime() const
$method=|qint64|latestTime|

$prototype=void removeInterval(const QMediaTimeInterval & interval)
$internalMethod=|void|removeInterval,removeInterval1|const QMediaTimeInterval &

$prototype=void removeInterval(qint64 start, qint64 end)
$internalMethod=|void|removeInterval,removeInterval2|qint64,qint64

/*
[1]void removeInterval(const QMediaTimeInterval & interval)
[2]void removeInterval(qint64 start, qint64 end)
*/

HB_FUNC_STATIC( QMEDIATIMERANGE_REMOVEINTERVAL )
{
  if( ISNUMPAR(1) && ISQMEDIATIMEINTERVAL(1) )
  {
    QMediaTimeRange_removeInterval1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QMediaTimeRange_removeInterval2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=removeInterval

$prototype=void removeTimeRange(const QMediaTimeRange & range)
$method=|void|removeTimeRange|const QMediaTimeRange &

$extraMethods

#pragma ENDDUMP
