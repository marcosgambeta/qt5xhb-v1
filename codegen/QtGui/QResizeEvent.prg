$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QResizeEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD size
   METHOD oldSize

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QResizeEvent(const QSize &size, const QSize &oldSize)
*/
HB_FUNC_STATIC( QRESIZEEVENT_NEW )
{
  QResizeEvent * o = new QResizeEvent ( *PQSIZE(1), *PQSIZE(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
const QSize &size() const
*/
HB_FUNC_STATIC( QRESIZEEVENT_SIZE )
{
  QResizeEvent * obj = (QResizeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QSize * ptr = &obj->size ();
    _qt5xhb_createReturnClass ( ptr, "QSIZE" );
  }
}


/*
const QSize &oldSize() const
*/
HB_FUNC_STATIC( QRESIZEEVENT_OLDSIZE )
{
  QResizeEvent * obj = (QResizeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QSize * ptr = &obj->oldSize ();
    _qt5xhb_createReturnClass ( ptr, "QSIZE" );
  }
}



#pragma ENDDUMP
