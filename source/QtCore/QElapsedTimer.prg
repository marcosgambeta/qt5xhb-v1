/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QElapsedTimer

   DATA pointer
   DATA class_id INIT Class_Id_QElapsedTimer
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD elapsed
   METHOD hasExpired
   METHOD invalidate
   METHOD isValid
   METHOD msecsSinceReference
   METHOD msecsTo
   METHOD nsecsElapsed
   METHOD restart
   METHOD secsTo
   METHOD start
   METHOD clockType
   METHOD isMonotonic
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QElapsedTimer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QElapsedTimer>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QElapsedTimer>
#endif
#endif

/*
QElapsedTimer()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QElapsedTimer * o = new QElapsedTimer (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QElapsedTimer *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QELAPSEDTIMER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
qint64 elapsed() const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_ELAPSED )
{
  QElapsedTimer * obj = (QElapsedTimer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->elapsed (  ) );
  }
}


/*
bool hasExpired(qint64 timeout) const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_HASEXPIRED )
{
  QElapsedTimer * obj = (QElapsedTimer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasExpired ( (qint64) hb_parni(1) ) );
  }
}


/*
void invalidate()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_INVALIDATE )
{
  QElapsedTimer * obj = (QElapsedTimer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->invalidate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_ISVALID )
{
  QElapsedTimer * obj = (QElapsedTimer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
qint64 msecsSinceReference() const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_MSECSSINCEREFERENCE )
{
  QElapsedTimer * obj = (QElapsedTimer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->msecsSinceReference (  ) );
  }
}


/*
qint64 msecsTo(const QElapsedTimer & other) const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_MSECSTO )
{
  QElapsedTimer * obj = (QElapsedTimer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QElapsedTimer * par1 = (QElapsedTimer *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->msecsTo ( *par1 ) );
  }
}


/*
qint64 nsecsElapsed() const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_NSECSELAPSED )
{
  QElapsedTimer * obj = (QElapsedTimer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->nsecsElapsed (  ) );
  }
}


/*
qint64 restart()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_RESTART )
{
  QElapsedTimer * obj = (QElapsedTimer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->restart (  ) );
  }
}


/*
qint64 secsTo(const QElapsedTimer & other) const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_SECSTO )
{
  QElapsedTimer * obj = (QElapsedTimer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QElapsedTimer * par1 = (QElapsedTimer *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->secsTo ( *par1 ) );
  }
}


/*
void start()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_START )
{
  QElapsedTimer * obj = (QElapsedTimer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->start (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static ClockType clockType()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_CLOCKTYPE )
{
  int i = QElapsedTimer::clockType (  );
  hb_retni( i );
}


/*
static bool isMonotonic()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_ISMONOTONIC )
{
  hb_retl( QElapsedTimer::isMonotonic (  ) );
}



HB_FUNC_STATIC( QELAPSEDTIMER_NEWFROM )
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

HB_FUNC_STATIC( QELAPSEDTIMER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QELAPSEDTIMER_NEWFROM );
}

HB_FUNC_STATIC( QELAPSEDTIMER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QELAPSEDTIMER_NEWFROM );
}

HB_FUNC_STATIC( QELAPSEDTIMER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QELAPSEDTIMER_SETSELFDESTRUCTION )
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
