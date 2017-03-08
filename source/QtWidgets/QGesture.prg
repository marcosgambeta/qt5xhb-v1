/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QGesture INHERIT QObject

   DATA class_id INIT Class_Id_QGesture
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD gestureCancelPolicy
   METHOD gestureType
   METHOD hasHotSpot
   METHOD hotSpot
   METHOD setGestureCancelPolicy
   METHOD setHotSpot
   METHOD state
   METHOD unsetHotSpot
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGesture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGesture>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGesture>
#endif

/*
QGesture(QObject * parent = 0)
*/
HB_FUNC_STATIC( QGESTURE_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QGesture * o = new QGesture ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QGESTURE_DELETE )
{
  QGesture * obj = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
GestureCancelPolicy gestureCancelPolicy() const
*/
HB_FUNC_STATIC( QGESTURE_GESTURECANCELPOLICY )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->gestureCancelPolicy (  ) );
  }
}


/*
Qt::GestureType gestureType() const
*/
HB_FUNC_STATIC( QGESTURE_GESTURETYPE )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->gestureType (  ) );
  }
}


/*
bool hasHotSpot() const
*/
HB_FUNC_STATIC( QGESTURE_HASHOTSPOT )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasHotSpot (  ) );
  }
}


/*
QPointF hotSpot() const
*/
HB_FUNC_STATIC( QGESTURE_HOTSPOT )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->hotSpot (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
void setGestureCancelPolicy(GestureCancelPolicy policy)
*/
HB_FUNC_STATIC( QGESTURE_SETGESTURECANCELPOLICY )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setGestureCancelPolicy (  (QGesture::GestureCancelPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHotSpot(const QPointF & value)
*/
HB_FUNC_STATIC( QGESTURE_SETHOTSPOT )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->setHotSpot ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::GestureState state() const
*/
HB_FUNC_STATIC( QGESTURE_STATE )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state (  ) );
  }
}


/*
void unsetHotSpot()
*/
HB_FUNC_STATIC( QGESTURE_UNSETHOTSPOT )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->unsetHotSpot (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
