$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVECTOR3D
#endif

CLASS QGraphicsScale INHERIT QGraphicsTransform

   METHOD new
   METHOD delete
   METHOD origin
   METHOD setOrigin
   METHOD setXScale
   METHOD setYScale
   METHOD setZScale
   METHOD xScale
   METHOD yScale
   METHOD zScale
   METHOD applyTo

   METHOD onOriginChanged
   METHOD onScaleChanged
   METHOD onXScaleChanged
   METHOD onYScaleChanged
   METHOD onZScaleChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGraphicsScale ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSSCALE_NEW )
{
  QGraphicsScale * o = new QGraphicsScale ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QVector3D origin () const
*/
HB_FUNC_STATIC( QGRAPHICSSCALE_ORIGIN )
{
  QGraphicsScale * obj = (QGraphicsScale *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->origin () );
    _qt5xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}


/*
void setOrigin ( const QVector3D & point )
*/
HB_FUNC_STATIC( QGRAPHICSSCALE_SETORIGIN )
{
  QGraphicsScale * obj = (QGraphicsScale *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOrigin ( *PQVECTOR3D(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setXScale ( qreal )
*/
HB_FUNC_STATIC( QGRAPHICSSCALE_SETXSCALE )
{
  QGraphicsScale * obj = (QGraphicsScale *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setXScale ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setYScale ( qreal )
*/
HB_FUNC_STATIC( QGRAPHICSSCALE_SETYSCALE )
{
  QGraphicsScale * obj = (QGraphicsScale *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setYScale ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setZScale ( qreal )
*/
HB_FUNC_STATIC( QGRAPHICSSCALE_SETZSCALE )
{
  QGraphicsScale * obj = (QGraphicsScale *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setZScale ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal xScale () const
*/
HB_FUNC_STATIC( QGRAPHICSSCALE_XSCALE )
{
  QGraphicsScale * obj = (QGraphicsScale *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->xScale () );
  }
}


/*
qreal yScale () const
*/
HB_FUNC_STATIC( QGRAPHICSSCALE_YSCALE )
{
  QGraphicsScale * obj = (QGraphicsScale *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->yScale () );
  }
}


/*
qreal zScale () const
*/
HB_FUNC_STATIC( QGRAPHICSSCALE_ZSCALE )
{
  QGraphicsScale * obj = (QGraphicsScale *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->zScale () );
  }
}


/*
virtual void applyTo ( QMatrix4x4 * matrix ) const
*/
HB_FUNC_STATIC( QGRAPHICSSCALE_APPLYTO )
{
  QGraphicsScale * obj = (QGraphicsScale *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->applyTo ( PQMATRIX4X4(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
