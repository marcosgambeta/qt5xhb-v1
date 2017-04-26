/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QTime

   DATA pointer
   DATA class_flags INIT 0
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
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTime>
#endif

/*
QTime()
*/
void QTime_new1 ()
{
  QTime * o = new QTime (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QTime(int h, int m, int s = 0, int ms = 0)
*/
void QTime_new2 ()
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = ISNIL(3)? 0 : hb_parni(3);
  int par4 = ISNIL(4)? 0 : hb_parni(4);
  QTime * o = new QTime ( par1, par2, par3, par4 );
  _qt5xhb_storePointerAndFlag( o, true );
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
      QTime * ptr = new QTime( obj->addMSecs ( (int) hb_parni(1) ) );
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
      QTime * ptr = new QTime( obj->addSecs ( (int) hb_parni(1) ) );
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
    hb_retni( obj->elapsed (  ) );
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
    hb_retni( obj->hour (  ) );
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
    hb_retl( obj->isNull (  ) );
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
    hb_retl( obj->isValid (  ) );
  }
}

/*
static bool isValid(int h, int m, int s, int ms = 0)
*/
void QTime_isValid2 ()
{
  hb_retl( QTime::isValid ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) ISNIL(4)? 0 : hb_parni(4) ) );
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
    hb_retni( obj->minute (  ) );
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
    hb_retni( obj->msec (  ) );
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
      QTime * par1 = (QTime *) _qt5xhb_itemGetPtr(1);
      hb_retni( obj->msecsTo ( *par1 ) );
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
    hb_retni( obj->restart (  ) );
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
    hb_retni( obj->second (  ) );
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
      QTime * par1 = (QTime *) _qt5xhb_itemGetPtr(1);
      hb_retni( obj->secsTo ( *par1 ) );
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
      hb_retl( obj->setHMS ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) ISNIL(4)? 0 : hb_parni(4) ) );
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
    obj->start (  );
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
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->toString ( par1 ).toLatin1().data() );
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
    hb_retc( (const char *) obj->toString (  (Qt::DateFormat) par1 ).toLatin1().data() );
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
  QTime * ptr = new QTime( QTime::currentTime (  ) );
  _qt5xhb_createReturnClass ( ptr, "QTIME", true );
}

/*
static QTime fromString(const QString & string, Qt::DateFormat format = Qt::TextDate)
*/
void QTime_fromString1 ()
{
  QString par1 = QLatin1String( hb_parc(1) );
  int par2 = ISNIL(2)? (int) Qt::TextDate : hb_parni(2);
  QTime * ptr = new QTime( QTime::fromString ( par1,  (Qt::DateFormat) par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QTIME", true );
}

/*
static QTime fromString(const QString & string, const QString & format)
*/
void QTime_fromString2 ()
{
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = QLatin1String( hb_parc(2) );
  QTime * ptr = new QTime( QTime::fromString ( par1, par2 ) );
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
