$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
#endif

CLASS QGraphicsEffect INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD boundingRect
   METHOD boundingRectFor
   METHOD isEnabled
   METHOD setEnabled
   METHOD update

   METHOD onEnabledChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSEFFECT_BOUNDINGRECT )
{
  QGraphicsEffect * obj = (QGraphicsEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
virtual QRectF boundingRectFor ( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSEFFECT_BOUNDINGRECTFOR )
{
  QGraphicsEffect * obj = (QGraphicsEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRectFor ( *PQRECTF(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
bool isEnabled () const
*/
$method=|bool|isEnabled|

/*
void setEnabled ( bool enable )
*/
$method=|void|setEnabled|bool

/*
void update ()
*/
$method=|void|update|

#pragma ENDDUMP
