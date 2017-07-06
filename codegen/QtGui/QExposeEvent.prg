$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QREGION
#endif

CLASS QExposeEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD region

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QExposeEvent(const QRegion & rgn)
*/
HB_FUNC_STATIC( QEXPOSEEVENT_NEW )
{
  QExposeEvent * o = new QExposeEvent ( *PQREGION(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
const QRegion & region() const
*/
HB_FUNC_STATIC( QEXPOSEEVENT_REGION )
{
  QExposeEvent * obj = (QExposeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QRegion * ptr = &obj->region ();
    _qt5xhb_createReturnClass ( ptr, "QREGION" );
  }
}



#pragma ENDDUMP
