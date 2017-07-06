$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QTapGesture INHERIT QGesture

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD position
   METHOD setPosition

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
QPointF position() const
*/
HB_FUNC_STATIC( QTAPGESTURE_POSITION )
{
  QTapGesture * obj = (QTapGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->position () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
void setPosition(const QPointF & pos)
*/
HB_FUNC_STATIC( QTAPGESTURE_SETPOSITION )
{
  QTapGesture * obj = (QTapGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setPosition ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
