$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIATIMEINTERVAL
#endif

CLASS QMediaTimeRange

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD addInterval1
   METHOD addInterval2
   METHOD addInterval
   METHOD addTimeRange
   METHOD clear
   METHOD contains
   METHOD earliestTime
   METHOD intervals
   METHOD isContinuous
   METHOD isEmpty
   METHOD latestTime
   METHOD removeInterval1
   METHOD removeInterval2
   METHOD removeInterval
   METHOD removeTimeRange

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

#include <QList>

/*
QMediaTimeRange()
*/
$constructor=|new1|

/*
QMediaTimeRange(qint64 start, qint64 end)
*/
$constructor=|new2|qint64,qint64

/*
QMediaTimeRange(const QMediaTimeInterval & interval)
*/
$constructor=|new3|const QMediaTimeInterval &

/*
QMediaTimeRange(const QMediaTimeRange & range)
*/
$constructor=|new4|const QMediaTimeRange &

//[1]QMediaTimeRange()
//[2]QMediaTimeRange(qint64 start, qint64 end)
//[3]QMediaTimeRange(const QMediaTimeInterval & interval)
//[4]QMediaTimeRange(const QMediaTimeRange & range)

HB_FUNC_STATIC( QMEDIATIMERANGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQMEDIATIMEINTERVAL(1) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQMEDIATIMERANGE(1) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addInterval(const QMediaTimeInterval & interval)
*/
$method=|void|addInterval,addInterval1|const QMediaTimeInterval &

/*
void addInterval(qint64 start, qint64 end)
*/
$method=|void|addInterval,addInterval2|qint64,qint64

//[1]void addInterval(const QMediaTimeInterval & interval)
//[2]void addInterval(qint64 start, qint64 end)

HB_FUNC_STATIC( QMEDIATIMERANGE_ADDINTERVAL )
{
  if( ISNUMPAR(1) && ISQMEDIATIMEINTERVAL(1) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_ADDINTERVAL1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_ADDINTERVAL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addTimeRange(const QMediaTimeRange & range)
*/
$method=|void|addTimeRange|const QMediaTimeRange &

/*
void clear()
*/
$method=|void|clear|

/*
bool contains(qint64 time) const
*/
$method=|bool|contains|qint64

/*
qint64 earliestTime() const
*/
$method=|qint64|earliestTime|

/*
QList<QMediaTimeInterval> intervals() const
*/
$method=|QList<QMediaTimeInterval>|intervals|

/*
bool isContinuous() const
*/
$method=|bool|isContinuous|

/*
bool isEmpty() const
*/
$method=|bool|isEmpty|

/*
qint64 latestTime() const
*/
$method=|qint64|latestTime|

/*
void removeInterval(const QMediaTimeInterval & interval)
*/
$method=|void|removeInterval,removeInterval1|const QMediaTimeInterval &

/*
void removeInterval(qint64 start, qint64 end)
*/
$method=|void|removeInterval,removeInterval2|qint64,qint64

//[1]void removeInterval(const QMediaTimeInterval & interval)
//[2]void removeInterval(qint64 start, qint64 end)

HB_FUNC_STATIC( QMEDIATIMERANGE_REMOVEINTERVAL )
{
  if( ISNUMPAR(1) && ISQMEDIATIMEINTERVAL(1) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_REMOVEINTERVAL1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QMEDIATIMERANGE_REMOVEINTERVAL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void removeTimeRange(const QMediaTimeRange & range)
*/
$method=|void|removeTimeRange|const QMediaTimeRange &

$extraMethods

#pragma ENDDUMP
