$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QMoveEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD oldPos
   METHOD pos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QMoveEvent ( const QPoint & pos, const QPoint & oldPos )
*/
HB_FUNC_STATIC( QMOVEEVENT_NEW )
{
  QMoveEvent * o = new QMoveEvent ( *PQPOINT(1), *PQPOINT(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
const QPoint & oldPos () const
*/
HB_FUNC_STATIC( QMOVEEVENT_OLDPOS )
{
  QMoveEvent * obj = (QMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPoint * ptr = &obj->oldPos ();
    _qt5xhb_createReturnClass ( ptr, "QPOINT" );
  }
}


/*
const QPoint & pos () const
*/
HB_FUNC_STATIC( QMOVEEVENT_POS )
{
  QMoveEvent * obj = (QMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPoint * ptr = &obj->pos ();
    _qt5xhb_createReturnClass ( ptr, "QPOINT" );
  }
}



#pragma ENDDUMP
