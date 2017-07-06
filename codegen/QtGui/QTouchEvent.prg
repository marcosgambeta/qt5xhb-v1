$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINDOW
REQUEST QOBJECT
REQUEST QTOUCHDEVICE
#endif

CLASS QTouchEvent INHERIT QInputEvent

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD window
   METHOD target
   METHOD touchPointStates
   METHOD device

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QList>

$deleteMethod

/*
QWindow *window() const
*/
HB_FUNC_STATIC( QTOUCHEVENT_WINDOW )
{
  QTouchEvent * obj = (QTouchEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * ptr = obj->window ();
    _qt5xhb_createReturnClass ( ptr, "QWINDOW" );
  }
}


/*
QObject *target() const
*/
HB_FUNC_STATIC( QTOUCHEVENT_TARGET )
{
  QTouchEvent * obj = (QTouchEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->target ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}



/*
Qt::TouchPointStates touchPointStates() const
*/
HB_FUNC_STATIC( QTOUCHEVENT_TOUCHPOINTSTATES )
{
  QTouchEvent * obj = (QTouchEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->touchPointStates () );
  }
}



/*
QTouchDevice *device() const
*/
HB_FUNC_STATIC( QTOUCHEVENT_DEVICE )
{
  QTouchEvent * obj = (QTouchEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTouchDevice * ptr = obj->device ();
    _qt5xhb_createReturnClass ( ptr, "QTOUCHDEVICE" );
  }
}



#pragma ENDDUMP
