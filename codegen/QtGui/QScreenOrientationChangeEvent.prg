$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCREEN
#endif

CLASS QScreenOrientationChangeEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD screen
   METHOD orientation

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QScreenOrientationChangeEvent(QScreen *screen, Qt::ScreenOrientation orientation)
*/
HB_FUNC_STATIC( QSCREENORIENTATIONCHANGEEVENT_NEW )
{
  QScreenOrientationChangeEvent * o = new QScreenOrientationChangeEvent ( PQSCREEN(1), (Qt::ScreenOrientation) hb_parni(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QScreen *screen() const
*/
HB_FUNC_STATIC( QSCREENORIENTATIONCHANGEEVENT_SCREEN )
{
  QScreenOrientationChangeEvent * obj = (QScreenOrientationChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScreen * ptr = obj->screen ();
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
    hb_retni( obj->orientation () );
  }
}



#pragma ENDDUMP
