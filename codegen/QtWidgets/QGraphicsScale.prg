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
$constructor=|new|QObject *=0

$deleteMethod

/*
QVector3D origin () const
*/
$method=|QVector3D|origin|

/*
void setOrigin ( const QVector3D & point )
*/
$method=|void|setOrigin|const QVector3D &

/*
void setXScale ( qreal )
*/
$method=|void|setXScale|qreal

/*
void setYScale ( qreal )
*/
$method=|void|setYScale|qreal

/*
void setZScale ( qreal )
*/
$method=|void|setZScale|qreal

/*
qreal xScale () const
*/
$method=|qreal|xScale|

/*
qreal yScale () const
*/
$method=|qreal|yScale|

/*
qreal zScale () const
*/
$method=|qreal|zScale|

/*
virtual void applyTo ( QMatrix4x4 * matrix ) const
*/
$method=|void|applyTo|QMatrix4x4 *

#pragma ENDDUMP
