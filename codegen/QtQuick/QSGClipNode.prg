$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
#endif

CLASS QSGClipNode INHERIT QSGBasicGeometryNode

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clipRect
   METHOD isRectangular
   METHOD setClipRect
   METHOD setIsRectangular

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSGClipNode()
*/
HB_FUNC_STATIC( QSGCLIPNODE_NEW )
{
  QSGClipNode * o = new QSGClipNode ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QRectF clipRect() const
*/
HB_FUNC_STATIC( QSGCLIPNODE_CLIPRECT )
{
  QSGClipNode * obj = (QSGClipNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->clipRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
bool isRectangular() const
*/
HB_FUNC_STATIC( QSGCLIPNODE_ISRECTANGULAR )
{
  QSGClipNode * obj = (QSGClipNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isRectangular () );
  }
}


/*
void setClipRect(const QRectF & rect)
*/
HB_FUNC_STATIC( QSGCLIPNODE_SETCLIPRECT )
{
  QSGClipNode * obj = (QSGClipNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setClipRect ( *PQRECTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIsRectangular(bool rectHint)
*/
HB_FUNC_STATIC( QSGCLIPNODE_SETISRECTANGULAR )
{
  QSGClipNode * obj = (QSGClipNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIsRectangular ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
