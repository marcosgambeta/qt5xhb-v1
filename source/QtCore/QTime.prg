/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

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

PROCEDURE destroyObject() CLASS QTime
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QTime>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtCore/QTime>
#endif

/*
QTime()
*/
void QTime_new1()
{
  QTime * obj = new QTime();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QTime( int h, int m, int s = 0, int ms = 0 )
*/
void QTime_new2()
{
  QTime * obj = new QTime( PINT(1), PINT(2), OPINT(3,0), OPINT(4,0) );
  Qt5xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QTIME_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTime_new1();
  }
  else if( ISBETWEEN(2,4) && HB_ISNUM(1) && HB_ISNUM(2) && ( HB_ISNUM(3)||HB_ISNIL(3)) && ( HB_ISNUM(4)||HB_ISNIL(4)) )
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
  QTime * obj = (QTime *) Qt5xHb::itemGetPtrStackSelfItem();

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
QTime addMSecs( int ms ) const
*/
HB_FUNC_STATIC( QTIME_ADDMSECS )
{
  QTime * obj = (QTime *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QTime * ptr = new QTime( obj->addMSecs( PINT(1) ) );
      Qt5xHb::createReturnClass( ptr, "QTIME", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QTime addSecs( int s ) const
*/
HB_FUNC_STATIC( QTIME_ADDSECS )
{
  QTime * obj = (QTime *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QTime * ptr = new QTime( obj->addSecs( PINT(1) ) );
      Qt5xHb::createReturnClass( ptr, "QTIME", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int elapsed() const
*/
HB_FUNC_STATIC( QTIME_ELAPSED )
{
  QTime * obj = (QTime *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->elapsed() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int hour() const
*/
HB_FUNC_STATIC( QTIME_HOUR )
{
  QTime * obj = (QTime *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->hour() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QTIME_ISNULL )
{
  QTime * obj = (QTime *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isValid() const
*/
void QTime_isValid1()
{
  QTime * obj = (QTime *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isValid() );
  }
}

/*
static bool isValid( int h, int m, int s, int ms = 0 )
*/
void QTime_isValid2()
{

  RBOOL( QTime::isValid( PINT(1), PINT(2), PINT(3), OPINT(4,0) ) );
}

HB_FUNC_STATIC( QTIME_ISVALID )
{
  if( ISNUMPAR(0) )
  {
    QTime_isValid1();
  }
  else if( ISBETWEEN(3,4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && ( HB_ISNUM(4)||HB_ISNIL(4)) )
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
  QTime * obj = (QTime *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->minute() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int msec() const
*/
HB_FUNC_STATIC( QTIME_MSEC )
{
  QTime * obj = (QTime *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->msec() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int msecsTo( const QTime & t ) const
*/
HB_FUNC_STATIC( QTIME_MSECSTO )
{
  QTime * obj = (QTime *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTIME(1) )
    {
#endif
      RINT( obj->msecsTo( *PQTIME(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int restart()
*/
HB_FUNC_STATIC( QTIME_RESTART )
{
  QTime * obj = (QTime *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->restart() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int second() const
*/
HB_FUNC_STATIC( QTIME_SECOND )
{
  QTime * obj = (QTime *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->second() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int secsTo( const QTime & t ) const
*/
HB_FUNC_STATIC( QTIME_SECSTO )
{
  QTime * obj = (QTime *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTIME(1) )
    {
#endif
      RINT( obj->secsTo( *PQTIME(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool setHMS( int h, int m, int s, int ms = 0 )
*/
HB_FUNC_STATIC( QTIME_SETHMS )
{
  QTime * obj = (QTime *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && (HB_ISNUM(4)||HB_ISNIL(4)) )
    {
#endif
      RBOOL( obj->setHMS( PINT(1), PINT(2), PINT(3), OPINT(4,0) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void start()
*/
HB_FUNC_STATIC( QTIME_START )
{
  QTime * obj = (QTime *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->start();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString toString( const QString & format ) const
*/
void QTime_toString1()
{
  QTime * obj = (QTime *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->toString( PQSTRING(1) ) );
  }
}

/*
QString toString( Qt::DateFormat format = Qt::TextDate ) const
*/
void QTime_toString2()
{
  QTime * obj = (QTime *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->toString( HB_ISNIL(1)? (Qt::DateFormat) Qt::TextDate : (Qt::DateFormat) hb_parni(1) ) );
  }
}

HB_FUNC_STATIC( QTIME_TOSTRING )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    QTime_toString1();
  }
  else if( ISBETWEEN(0,1) && ( HB_ISNUM(1)||HB_ISNIL(1)) )
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QTime * ptr = new QTime( QTime::currentTime() );
    Qt5xHb::createReturnClass( ptr, "QTIME", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QTime fromString( const QString & string, Qt::DateFormat format = Qt::TextDate )
*/
void QTime_fromString1()
{

  QTime * ptr = new QTime( QTime::fromString( PQSTRING(1), HB_ISNIL(2)? (Qt::DateFormat) Qt::TextDate : (Qt::DateFormat) hb_parni(2) ) );
  Qt5xHb::createReturnClass( ptr, "QTIME", true );
}

/*
static QTime fromString( const QString & string, const QString & format )
*/
void QTime_fromString2()
{

  QTime * ptr = new QTime( QTime::fromString( PQSTRING(1), PQSTRING(2) ) );
  Qt5xHb::createReturnClass( ptr, "QTIME", true );
}

HB_FUNC_STATIC( QTIME_FROMSTRING )
{
  if( ISBETWEEN(1,2) && HB_ISCHAR(1) && ( HB_ISNUM(2)||HB_ISNIL(2)) )
  {
    QTime_fromString1();
  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
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

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
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

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
