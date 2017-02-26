/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QSwipeGesture INHERIT QGesture

   DATA class_id INIT Class_Id_QSwipeGesture
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD horizontalDirection
   METHOD setSwipeAngle
   METHOD swipeAngle
   METHOD verticalDirection
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSwipeGesture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSwipeGesture>
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
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSwipeGesture>
#endif
#endif

HB_FUNC_STATIC( QSWIPEGESTURE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSwipeGesture * obj = (QSwipeGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
SwipeDirection horizontalDirection() const
*/
HB_FUNC_STATIC( QSWIPEGESTURE_HORIZONTALDIRECTION )
{
  QSwipeGesture * obj = (QSwipeGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->horizontalDirection (  ) );
  }
}


/*
void setSwipeAngle(qreal value)
*/
HB_FUNC_STATIC( QSWIPEGESTURE_SETSWIPEANGLE )
{
  QSwipeGesture * obj = (QSwipeGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setSwipeAngle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal swipeAngle() const
*/
HB_FUNC_STATIC( QSWIPEGESTURE_SWIPEANGLE )
{
  QSwipeGesture * obj = (QSwipeGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->swipeAngle (  ) );
  }
}


/*
SwipeDirection verticalDirection() const
*/
HB_FUNC_STATIC( QSWIPEGESTURE_VERTICALDIRECTION )
{
  QSwipeGesture * obj = (QSwipeGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->verticalDirection (  ) );
  }
}



#pragma ENDDUMP
