$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QGraphicsColorizeEffect INHERIT QGraphicsEffect

   METHOD new
   METHOD delete
   METHOD color
   METHOD strength
   METHOD setColor
   METHOD setStrength

   METHOD onColorChanged
   METHOD onStrengthChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGraphicsColorizeEffect ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_NEW )
{
  QGraphicsColorizeEffect * o = new QGraphicsColorizeEffect ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QColor color () const
*/
HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_COLOR )
{
  QGraphicsColorizeEffect * obj = (QGraphicsColorizeEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->color () );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
qreal strength () const
*/
HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_STRENGTH )
{
  QGraphicsColorizeEffect * obj = (QGraphicsColorizeEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->strength () );
  }
}


/*
void setColor ( const QColor & c )
*/
HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_SETCOLOR )
{
  QGraphicsColorizeEffect * obj = (QGraphicsColorizeEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->setColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStrength ( qreal strength )
*/
HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_SETSTRENGTH )
{
  QGraphicsColorizeEffect * obj = (QGraphicsColorizeEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStrength ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
