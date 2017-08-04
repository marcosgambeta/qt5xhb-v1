$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVECTOR3D
#endif

CLASS QGraphicsRotation INHERIT QGraphicsTransform

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
$constructor=|new|QObject *=0

$deleteMethod

/*
qreal angle () const
*/
$method=|qreal|angle|

/*
QVector3D axis () const
*/
$method=|QVector3D|axis|

/*
QVector3D origin () const
*/
$method=|QVector3D|origin|

/*
void setAngle ( qreal )
*/
$method=|void|setAngle|qreal

/*
void setAxis ( const QVector3D & axis )
*/
$internalMethod=|void|setAxis,setAxis1|const QVector3D &

/*
void setAxis ( Qt::Axis axis )
*/
$internalMethod=|void|setAxis,setAxis2|Qt::Axis

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
$method=|void|setOrigin|const QVector3D &

/*
virtual void applyTo ( QMatrix4x4 * matrix ) const
*/
$method=|void|applyTo|QMatrix4x4 *

#pragma ENDDUMP
