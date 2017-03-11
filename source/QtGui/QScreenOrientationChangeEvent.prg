/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCREEN
#endif

CLASS QScreenOrientationChangeEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QScreenOrientationChangeEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD screen
   METHOD orientation
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScreenOrientationChangeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QScreenOrientationChangeEvent>
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
#include <QScreenOrientationChangeEvent>
#endif

/*
QScreenOrientationChangeEvent(QScreen *screen, Qt::ScreenOrientation orientation)
*/
HB_FUNC_STATIC( QSCREENORIENTATIONCHANGEEVENT_NEW )
{
  QScreen * par1 = (QScreen *) _qt5xhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QScreenOrientationChangeEvent * o = new QScreenOrientationChangeEvent ( par1,  (Qt::ScreenOrientation) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScreenOrientationChangeEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QSCREENORIENTATIONCHANGEEVENT_DELETE )
{
  QScreenOrientationChangeEvent * obj = (QScreenOrientationChangeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QScreen *screen() const
*/
HB_FUNC_STATIC( QSCREENORIENTATIONCHANGEEVENT_SCREEN )
{
  QScreenOrientationChangeEvent * obj = (QScreenOrientationChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScreen * ptr = obj->screen (  );
    _qt5xhb_createReturnClass ( ptr, "QSCREEN" );
  }
}


/*
Qt::ScreenOrientation orientation() const
*/
HB_FUNC_STATIC( QSCREENORIENTATIONCHANGEEVENT_ORIENTATION )
{
  QScreenOrientationChangeEvent * obj = (QScreenOrientationChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->orientation (  ) );
  }
}



#pragma ENDDUMP
