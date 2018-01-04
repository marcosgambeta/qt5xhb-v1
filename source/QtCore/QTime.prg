/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QTime

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addMSecs
   METHOD addSecs
   METHOD elapsed
   METHOD hour
   METHOD isNull
   METHOD isValid
   METHOD minute
   METHOD msec
   METHOD msecsTo
   METHOD restart
   METHOD second
   METHOD secsTo
   METHOD setHMS
   METHOD start
   METHOD toString
   METHOD currentTime
   METHOD fromString

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTime
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTime>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTime>
#endif

/*
QTime()
*/
void QTime_new1 ()
{
  QTime * o = new QTime ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QTime(int h, int m, int s = 0, int ms = 0)
*/
void QTime_new2 ()
{
  QTime * o = new QTime ( PINT(1), PINT(2), OPINT(3,0), OPINT(4,0) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QTime()
//[2]QTime(int h, int m, int s = 0, int ms = 0)

HB_FUNC_STATIC( QTIME_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTime_new1();
  }
  else if( ISBETWEEN(2,4) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    QTime_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTIME_DELETE )
{
  QTime * obj = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QTime addMSecs(int ms) const
*/
HB_FUNC_STATIC( QTIME_ADDMSECS )
{
  QTime * obj = (QTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QTime * ptr = new QTime( obj->addMSecs ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QTIME", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTime addSecs(int s) const
*/
HB_FUNC_STATIC( QTIME_ADDSECS )
{
  QTime * obj = (QTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QTime * ptr = new QTime( obj->addSecs ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QTIME", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int elapsed() const
*/
HB_FUNC_STATIC( QTIME_ELAPSED )
{
  QTime * obj = (QTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->elapsed () );
  }
}

/*
int hour() const
*/
HB_FUNC_STATIC( QTIME_HOUR )
{
  QTime * obj = (QTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->hour () );
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QTIME_ISNULL )
{
  QTime * obj = (QTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}

/*
bool isValid() const
*/
void QTime_isValid1 ()
{
  QTime * obj = (QTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
static bool isValid(int h, int m, int s, int ms = 0)
*/
void QTime_isValid2 ()
{
  RBOOL( QTime::isValid ( PINT(1), PINT(2), PINT(3), OPINT(4,0) ) );
}

//[1]bool isValid() const
//[2]bool isValid(int h, int m, int s, int ms = 0)

HB_FUNC_STATIC( QTIME_ISVALID )
{
  if( ISNUMPAR(0) )
  {
    QTime_isValid1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QTime_isValid2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int minute() const
*/
HB_FUNC_STATIC( QTIME_MINUTE )
{
  QTime * obj = (QTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->minute () );
  }
}

/*
int msec() const
*/
HB_FUNC_STATIC( QTIME_MSEC )
{
  QTime * obj = (QTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->msec () );
  }
}

/*
int msecsTo(const QTime & t) const
*/
HB_FUNC_STATIC( QTIME_MSECSTO )
{
  QTime * obj = (QTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTIME(1) )
    {
      RINT( obj->msecsTo ( *PQTIME(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int restart()
*/
HB_FUNC_STATIC( QTIME_RESTART )
{
  QTime * obj = (QTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->restart () );
  }
}

/*
int second() const
*/
HB_FUNC_STATIC( QTIME_SECOND )
{
  QTime * obj = (QTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->second () );
  }
}

/*
int secsTo(const QTime & t) const
*/
HB_FUNC_STATIC( QTIME_SECSTO )
{
  QTime * obj = (QTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTIME(1) )
    {
      RINT( obj->secsTo ( *PQTIME(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool setHMS(int h, int m, int s, int ms = 0)
*/
HB_FUNC_STATIC( QTIME_SETHMS )
{
  QTime * obj = (QTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
    {
      RBOOL( obj->setHMS ( PINT(1), PINT(2), PINT(3), OPINT(4,0) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void start()
*/
HB_FUNC_STATIC( QTIME_START )
{
  QTime * obj = (QTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->start ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString toString(const QString & format) const
*/
void QTime_toString1 ()
{
  QTime * obj = (QTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->toString ( PQSTRING(1) ) );
  }
}

/*
QString toString(Qt::DateFormat format = Qt::TextDate) const
*/
void QTime_toString2 ()
{
  QTime * obj = (QTime *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = ISNIL(1)? (int) Qt::TextDate : hb_parni(1);
    RQSTRING( obj->toString ( (Qt::DateFormat) par1 ) );
  }
}

//[1]QString toString(const QString & format) const
//[2]QString toString(Qt::DateFormat format = Qt::TextDate) const

HB_FUNC_STATIC( QTIME_TOSTRING )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTime_toString1();
  }
  else if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QTime_toString2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QTime currentTime()
*/
HB_FUNC_STATIC( QTIME_CURRENTTIME )
{
  QTime * ptr = new QTime( QTime::currentTime () );
  _qt5xhb_createReturnClass ( ptr, "QTIME", true );
}

/*
static QTime fromString(const QString & string, Qt::DateFormat format = Qt::TextDate)
*/
void QTime_fromString1 ()
{
  int par2 = ISNIL(2)? (int) Qt::TextDate : hb_parni(2);
  QTime * ptr = new QTime( QTime::fromString ( PQSTRING(1), (Qt::DateFormat) par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QTIME", true );
}

/*
static QTime fromString(const QString & string, const QString & format)
*/
void QTime_fromString2 ()
{
  QTime * ptr = new QTime( QTime::fromString ( PQSTRING(1), PQSTRING(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QTIME", true );
}

//[1]QTime fromString(const QString & string, Qt::DateFormat format = Qt::TextDate)
//[2]QTime fromString(const QString & string, const QString & format)

HB_FUNC_STATIC( QTIME_FROMSTRING )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QTime_fromString1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QTime_fromString2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTIME_NEWFROM )
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

HB_FUNC_STATIC( QTIME_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTIME_NEWFROM );
}

HB_FUNC_STATIC( QTIME_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTIME_NEWFROM );
}

HB_FUNC_STATIC( QTIME_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTIME_SETSELFDESTRUCTION )
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
