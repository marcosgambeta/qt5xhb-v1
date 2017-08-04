$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGRAPHICSITEM
REQUEST QMATRIX
REQUEST QPOINTF
REQUEST QTIMELINE
#endif

CLASS QGraphicsItemAnimation INHERIT QObject

   METHOD new
   METHOD delete
   METHOD clear
   METHOD horizontalScaleAt
   METHOD horizontalShearAt
   METHOD item
   METHOD matrixAt
   METHOD posAt
   METHOD rotationAt
   METHOD setItem
   METHOD setPosAt
   METHOD setRotationAt
   METHOD setScaleAt
   METHOD setShearAt
   METHOD setTimeLine
   METHOD setTranslationAt
   METHOD timeLine
   METHOD verticalScaleAt
   METHOD verticalShearAt
   METHOD xTranslationAt
   METHOD yTranslationAt
   METHOD setStep

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QMatrix>
#include <QPointF>

/*
QGraphicsItemAnimation ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
void clear ()
*/
$method=|void|clear|

/*
qreal horizontalScaleAt ( qreal step ) const
*/
$method=|qreal|horizontalScaleAt|qreal

/*
qreal horizontalShearAt ( qreal step ) const
*/
$method=|qreal|horizontalShearAt|qreal

/*
QGraphicsItem * item () const
*/
$method=|QGraphicsItem *|item|

/*
QMatrix matrixAt ( qreal step ) const
*/
$method=|QMatrix|matrixAt|qreal

/*
QPointF posAt ( qreal step ) const
*/
$method=|QPointF|posAt|qreal

/*
qreal rotationAt ( qreal step ) const
*/
$method=|qreal|rotationAt|qreal

/*
void setItem ( QGraphicsItem * item )
*/
$method=|void|setItem|QGraphicsItem *

/*
void setPosAt ( qreal step, const QPointF & point )
*/
$method=|void|setPosAt|qreal,const QPointF &

/*
void setRotationAt ( qreal step, qreal angle )
*/
$method=|void|setRotationAt|qreal,qreal

/*
void setScaleAt ( qreal step, qreal sx, qreal sy )
*/
$method=|void|setScaleAt|qreal,qreal,qreal

/*
void setShearAt ( qreal step, qreal sh, qreal sv )
*/
$method=|void|setShearAt|qreal,qreal,qreal

/*
void setTimeLine ( QTimeLine * timeLine )
*/
$method=|void|setTimeLine|QTimeLine *

/*
void setTranslationAt ( qreal step, qreal dx, qreal dy )
*/
$method=|void|setTranslationAt|qreal,qreal,qreal

/*
QTimeLine * timeLine () const
*/
$method=|QTimeLine *|timeLine|

/*
qreal verticalScaleAt ( qreal step ) const
*/
$method=|qreal|verticalScaleAt|qreal

/*
qreal verticalShearAt ( qreal step ) const
*/
$method=|qreal|verticalShearAt|qreal

/*
qreal xTranslationAt ( qreal step ) const
*/
$method=|qreal|xTranslationAt|

/*
qreal yTranslationAt ( qreal step ) const
*/
$method=|qreal|yTranslationAt|qreal

/*
void setStep ( qreal step )
*/
$method=|void|setStep|qreal

#pragma ENDDUMP
