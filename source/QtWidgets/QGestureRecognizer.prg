/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGESTURE
#endif

CLASS QGestureRecognizer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD recognize
   METHOD reset
   METHOD registerRecognizer
   METHOD unregisterRecognizer

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGestureRecognizer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGestureRecognizer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGestureRecognizer>
#endif


HB_FUNC_STATIC( QGESTURERECOGNIZER_DELETE )
{
  QGestureRecognizer * obj = (QGestureRecognizer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QGesture * create(QObject * target)
*/
HB_FUNC_STATIC( QGESTURERECOGNIZER_CREATE )
{
  QGestureRecognizer * obj = (QGestureRecognizer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGesture * ptr = obj->create ( PQOBJECT(1) );
    _qt5xhb_createReturnClass ( ptr, "QGESTURE" );
  }
}


/*
virtual Result recognize(QGesture * gesture, QObject * watched, QEvent * event) = 0
*/
HB_FUNC_STATIC( QGESTURERECOGNIZER_RECOGNIZE )
{
  QGestureRecognizer * obj = (QGestureRecognizer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->recognize ( PQGESTURE(1), PQOBJECT(2), PQEVENT(3) ) );
  }
}


/*
virtual void reset(QGesture * gesture)
*/
HB_FUNC_STATIC( QGESTURERECOGNIZER_RESET )
{
  QGestureRecognizer * obj = (QGestureRecognizer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset ( PQGESTURE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static Qt::GestureType registerRecognizer(QGestureRecognizer * recognizer)
*/
HB_FUNC_STATIC( QGESTURERECOGNIZER_REGISTERRECOGNIZER )
{
  hb_retni( QGestureRecognizer::registerRecognizer ( PQGESTURERECOGNIZER(1) ) );
}


/*
static void unregisterRecognizer(Qt::GestureType type)
*/
HB_FUNC_STATIC( QGESTURERECOGNIZER_UNREGISTERRECOGNIZER )
{
  QGestureRecognizer::unregisterRecognizer ( (Qt::GestureType) hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QGESTURERECOGNIZER_NEWFROM )
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

HB_FUNC_STATIC( QGESTURERECOGNIZER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGESTURERECOGNIZER_NEWFROM );
}

HB_FUNC_STATIC( QGESTURERECOGNIZER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGESTURERECOGNIZER_NEWFROM );
}

HB_FUNC_STATIC( QGESTURERECOGNIZER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGESTURERECOGNIZER_SETSELFDESTRUCTION )
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