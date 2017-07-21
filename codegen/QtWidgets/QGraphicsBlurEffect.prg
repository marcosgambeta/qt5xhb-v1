$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
#endif

CLASS QGraphicsBlurEffect INHERIT QGraphicsWidget

   METHOD new
   METHOD delete
   METHOD blurHints
   METHOD blurRadius
   METHOD boundingRectFor
   METHOD setBlurHints
   METHOD setBlurRadius

   METHOD onBlurHintsChanged
   METHOD onBlurRadiusChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGraphicsBlurEffect ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_NEW )
{
  QGraphicsBlurEffect * o = new QGraphicsBlurEffect ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
BlurHints blurHints () const
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_BLURHINTS )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->blurHints () );
  }
}


/*
qreal blurRadius () const
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_BLURRADIUS )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->blurRadius () );
  }
}


/*
virtual QRectF boundingRectFor ( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_BOUNDINGRECTFOR )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRectFor ( *PQRECTF(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
void setBlurHints ( BlurHints hints )
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_SETBLURHINTS )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setBlurHints ( (QGraphicsBlurEffect::BlurHints) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBlurRadius ( qreal blurRadius )
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_SETBLURRADIUS )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBlurRadius ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
