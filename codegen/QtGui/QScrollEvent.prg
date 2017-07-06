$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QScrollEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD contentPos
   METHOD overshootDistance
   METHOD scrollState

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QScrollEvent(const QPointF &contentPos, const QPointF &overshoot, ScrollState scrollState)
*/
HB_FUNC_STATIC( QSCROLLEVENT_NEW )
{
  QScrollEvent * o = new QScrollEvent ( *PQPOINTF(1), *PQPOINTF(2), (QScrollEvent::ScrollState) hb_parni(3) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QPointF contentPos() const
*/
HB_FUNC_STATIC( QSCROLLEVENT_CONTENTPOS )
{
  QScrollEvent * obj = (QScrollEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->contentPos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF overshootDistance() const
*/
HB_FUNC_STATIC( QSCROLLEVENT_OVERSHOOTDISTANCE )
{
  QScrollEvent * obj = (QScrollEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->overshootDistance () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
ScrollState scrollState() const
*/
HB_FUNC_STATIC( QSCROLLEVENT_SCROLLSTATE )
{
  QScrollEvent * obj = (QScrollEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->scrollState () );
  }
}



#pragma ENDDUMP
