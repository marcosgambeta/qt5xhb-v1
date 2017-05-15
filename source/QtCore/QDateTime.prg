/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDATE
REQUEST QTIME
#endif

CLASS QDateTime

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addDays
   METHOD addMSecs
   METHOD addMonths
   METHOD addSecs
   METHOD addYears
   METHOD date
   METHOD daysTo
   METHOD isNull
   METHOD isValid
   METHOD msecsTo
   METHOD secsTo
   METHOD setDate
   METHOD setMSecsSinceEpoch
   METHOD setTime
   METHOD setTimeSpec
   METHOD setTime_t
   METHOD time
   METHOD timeSpec
   METHOD toLocalTime
   METHOD toMSecsSinceEpoch
   METHOD toString
   METHOD toTimeSpec
   METHOD toTime_t
   METHOD toUTC
   METHOD currentDateTime
   METHOD currentDateTimeUtc
   METHOD currentMSecsSinceEpoch
   METHOD fromMSecsSinceEpoch
   METHOD fromString
   METHOD fromTime_t

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDateTime
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDateTime>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDateTime>
#endif

/*
QDateTime ()
*/
void QDateTime_new1 ()
{
  QDateTime * o = new QDateTime ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDateTime ( const QDate & date )
*/
void QDateTime_new2 ()
{
  QDate * par1 = (QDate *) _qt5xhb_itemGetPtr(1);
  QDateTime * o = new QDateTime ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDateTime ( const QDate & date, const QTime & time, Qt::TimeSpec spec = Qt::LocalTime )
*/
void QDateTime_new3 ()
{
  QDate * par1 = (QDate *) _qt5xhb_itemGetPtr(1);
  QTime * par2 = (QTime *) _qt5xhb_itemGetPtr(2);
  int par3 = ISNIL(3)? (int) Qt::LocalTime : hb_parni(3);
  QDateTime * o = new QDateTime ( *par1, *par2,  (Qt::TimeSpec) par3 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDateTime ( const QDateTime & other )
*/
void QDateTime_new4 ()
{
  QDateTime * par1 = (QDateTime *) _qt5xhb_itemGetPtr(1);
  QDateTime * o = new QDateTime ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QDateTime ()
//[2]QDateTime ( const QDate & date )
//[3]QDateTime ( const QDate & date, const QTime & time, Qt::TimeSpec spec = Qt::LocalTime )
//[4]QDateTime ( const QDateTime & other )

HB_FUNC_STATIC( QDATETIME_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDateTime_new1();
  }
  else if( ISNUMPAR(1) && ISQDATE(1) )
  {
    QDateTime_new2();
  }
  else if( ISBETWEEN(2,3) && ISQDATE(1) && ISQTIME(2) && ISOPTNUM(3) )
  {
    QDateTime_new3();
  }
  else if( ISNUMPAR(1) && ISQDATETIME(1) )
  {
    QDateTime_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDATETIME_DELETE )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDateTime addDays ( int ndays ) const
*/
HB_FUNC_STATIC( QDATETIME_ADDDAYS )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QDateTime * ptr = new QDateTime( obj->addDays ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDateTime addMSecs ( qint64 msecs ) const
*/
HB_FUNC_STATIC( QDATETIME_ADDMSECS )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QDateTime * ptr = new QDateTime( obj->addMSecs ( (qint64) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDateTime addMonths ( int nmonths ) const
*/
HB_FUNC_STATIC( QDATETIME_ADDMONTHS )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QDateTime * ptr = new QDateTime( obj->addMonths ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDateTime addSecs ( int s ) const
*/
HB_FUNC_STATIC( QDATETIME_ADDSECS )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QDateTime * ptr = new QDateTime( obj->addSecs ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDateTime addYears ( int nyears ) const
*/
HB_FUNC_STATIC( QDATETIME_ADDYEARS )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QDateTime * ptr = new QDateTime( obj->addYears ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDate date () const
*/
HB_FUNC_STATIC( QDATETIME_DATE )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDate * ptr = new QDate( obj->date () );
    _qt5xhb_createReturnClass ( ptr, "QDATE", true );
  }
}

/*
int daysTo ( const QDateTime & other ) const
*/
HB_FUNC_STATIC( QDATETIME_DAYSTO )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDATETIME(1) )
    {
      QDateTime * par1 = (QDateTime *) _qt5xhb_itemGetPtr(1);
      hb_retni( obj->daysTo ( *par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isNull () const
*/
HB_FUNC_STATIC( QDATETIME_ISNULL )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isNull () );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QDATETIME_ISVALID )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isValid () );
  }
}

/*
qint64 msecsTo ( const QDateTime & other ) const
*/
HB_FUNC_STATIC( QDATETIME_MSECSTO )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDATETIME(1) )
    {
      QDateTime * par1 = (QDateTime *) _qt5xhb_itemGetPtr(1);
      hb_retni( obj->msecsTo ( *par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int secsTo ( const QDateTime & other ) const
*/
HB_FUNC_STATIC( QDATETIME_SECSTO )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDATETIME(1) )
    {
      QDateTime * par1 = (QDateTime *) _qt5xhb_itemGetPtr(1);
      hb_retni( obj->secsTo ( *par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setDate ( const QDate & date )
*/
HB_FUNC_STATIC( QDATETIME_SETDATE )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDATE(1) )
    {
      QDate * par1 = (QDate *) _qt5xhb_itemGetPtr(1);
      obj->setDate ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMSecsSinceEpoch ( qint64 msecs )
*/
HB_FUNC_STATIC( QDATETIME_SETMSECSSINCEEPOCH )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setMSecsSinceEpoch ( (qint64) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTime ( const QTime & time )
*/
HB_FUNC_STATIC( QDATETIME_SETTIME )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTIME(1) )
    {
      QTime * par1 = (QTime *) _qt5xhb_itemGetPtr(1);
      obj->setTime ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTimeSpec ( Qt::TimeSpec spec )
*/
HB_FUNC_STATIC( QDATETIME_SETTIMESPEC )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setTimeSpec (  (Qt::TimeSpec) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTime_t ( uint seconds )
*/
HB_FUNC_STATIC( QDATETIME_SETTIME_T )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setTime_t ( (uint) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QTime time () const
*/
HB_FUNC_STATIC( QDATETIME_TIME )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTime * ptr = new QTime( obj->time () );
    _qt5xhb_createReturnClass ( ptr, "QTIME", true );
  }
}

/*
Qt::TimeSpec timeSpec () const
*/
HB_FUNC_STATIC( QDATETIME_TIMESPEC )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->timeSpec () );
  }
}

/*
QDateTime toLocalTime () const
*/
HB_FUNC_STATIC( QDATETIME_TOLOCALTIME )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->toLocalTime () );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}

/*
qint64 toMSecsSinceEpoch () const
*/
HB_FUNC_STATIC( QDATETIME_TOMSECSSINCEEPOCH )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->toMSecsSinceEpoch () );
  }
}

/*
QString toString ( const QString & format ) const
*/
void QDateTime_toString1 ()
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->toString ( PQSTRING(1) ).toLatin1().data() );
  }
}

/*
QString toString ( Qt::DateFormat format = Qt::TextDate ) const
*/
void QDateTime_toString2 ()
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = ISNIL(1)? (int) Qt::TextDate : hb_parni(1);
    hb_retc( (const char *) obj->toString (  (Qt::DateFormat) par1 ).toLatin1().data() );
  }
}

//[1]QString toString ( const QString & format ) const
//[2]QString toString ( Qt::DateFormat format = Qt::TextDate ) const

HB_FUNC_STATIC( QDATETIME_TOSTRING )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QDateTime_toString1();
  }
  else if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QDateTime_toString2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QDateTime toTimeSpec ( Qt::TimeSpec specification ) const
*/
HB_FUNC_STATIC( QDATETIME_TOTIMESPEC )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      QDateTime * ptr = new QDateTime( obj->toTimeSpec (  (Qt::TimeSpec) par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
uint toTime_t () const
*/
HB_FUNC_STATIC( QDATETIME_TOTIME_T )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->toTime_t () );
  }
}

/*
QDateTime toUTC () const
*/
HB_FUNC_STATIC( QDATETIME_TOUTC )
{
  QDateTime * obj = (QDateTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->toUTC () );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}

/*
static QDateTime currentDateTime ()
*/
HB_FUNC_STATIC( QDATETIME_CURRENTDATETIME )
{
  QDateTime * ptr = new QDateTime( QDateTime::currentDateTime () );
  _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
}

/*
static QDateTime currentDateTimeUtc ()
*/
HB_FUNC_STATIC( QDATETIME_CURRENTDATETIMEUTC )
{
  QDateTime * ptr = new QDateTime( QDateTime::currentDateTimeUtc () );
  _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
}

/*
static qint64 currentMSecsSinceEpoch ()
*/
HB_FUNC_STATIC( QDATETIME_CURRENTMSECSSINCEEPOCH )
{
  hb_retni( QDateTime::currentMSecsSinceEpoch () );
}

/*
static QDateTime fromMSecsSinceEpoch ( qint64 msecs )
*/
HB_FUNC_STATIC( QDATETIME_FROMMSECSSINCEEPOCH )
{
  if( ISNUM(1) )
  {
    QDateTime * ptr = new QDateTime( QDateTime::fromMSecsSinceEpoch ( (qint64) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QDateTime fromString ( const QString & string, Qt::DateFormat format = Qt::TextDate )
*/
void QDateTime_fromString1 ()
{
  int par2 = ISNIL(2)? (int) Qt::TextDate : hb_parni(2);
  QDateTime * ptr = new QDateTime( QDateTime::fromString ( PQSTRING(1),  (Qt::DateFormat) par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
}

/*
static QDateTime fromString ( const QString & string, const QString & format )
*/
void QDateTime_fromString2 ()
{
  QDateTime * ptr = new QDateTime( QDateTime::fromString ( PQSTRING(1), PQSTRING(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
}

//[1]QDateTime fromString ( const QString & string, Qt::DateFormat format = Qt::TextDate )
//[2]QDateTime fromString ( const QString & string, const QString & format )

HB_FUNC_STATIC( QDATETIME_FROMSTRING )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QDateTime_fromString1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QDateTime_fromString2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QDateTime fromTime_t ( uint seconds )
*/
HB_FUNC_STATIC( QDATETIME_FROMTIME_T )
{
  if( ISNUM(1) )
  {
    QDateTime * ptr = new QDateTime( QDateTime::fromTime_t ( (uint) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDATETIME_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QDATETIME_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDATETIME_NEWFROM );
}

HB_FUNC_STATIC( QDATETIME_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDATETIME_NEWFROM );
}

HB_FUNC_STATIC( QDATETIME_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDATETIME_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
