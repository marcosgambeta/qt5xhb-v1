$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVECTOR3D
#endif

CLASS QGraphicsRotation INHERIT QGraphicsTransform

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD angle
   METHOD axis
   METHOD origin
   METHOD setAngle
   METHOD setAxis
   METHOD setOrigin
   METHOD applyTo

   METHOD onAngleChanged
   METHOD onAxisChanged
   METHOD onOriginChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGraphicsRotation ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_NEW )
{
  QGraphicsRotation * o = new QGraphicsRotation ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
qreal angle () const
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_ANGLE )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->angle () );
  }
}


/*
QVector3D axis () const
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_AXIS )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->axis () );
    _qt5xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}


/*
QVector3D origin () const
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_ORIGIN )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->origin () );
    _qt5xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}


/*
void setAngle ( qreal )
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_SETANGLE )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAngle ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAxis ( const QVector3D & axis )
*/
void QGraphicsRotation_setAxis1 ()
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAxis ( *PQVECTOR3D(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAxis ( Qt::Axis axis )
*/
void QGraphicsRotation_setAxis2 ()
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAxis ( (Qt::Axis) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setAxis ( const QVector3D & axis )
//[2]void setAxis ( Qt::Axis axis )

HB_FUNC_STATIC( QGRAPHICSROTATION_SETAXIS )
{
  if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    QGraphicsRotation_setAxis1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGraphicsRotation_setAxis2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setOrigin ( const QVector3D & point )
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_SETORIGIN )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOrigin ( *PQVECTOR3D(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void applyTo ( QMatrix4x4 * matrix ) const
*/
HB_FUNC_STATIC( QGRAPHICSROTATION_APPLYTO )
{
  QGraphicsRotation * obj = (QGraphicsRotation *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->applyTo ( PQMATRIX4X4(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
