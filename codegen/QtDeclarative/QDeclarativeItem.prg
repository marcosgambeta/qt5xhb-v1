$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSCRIPTVALUE
#endif

CLASS QDeclarativeItem INHERIT QGraphicsObject,QDeclarativeParserStatus

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD baselineOffset
   METHOD childAt
   METHOD childrenRect
   METHOD clip
   METHOD forceActiveFocus
   METHOD implicitHeight
   METHOD implicitWidth
   METHOD keepMouseGrab
   METHOD mapFromItem
   METHOD mapToItem
   METHOD parentItem
   METHOD setBaselineOffset
   METHOD setClip
   METHOD setKeepMouseGrab
   METHOD setParentItem
   METHOD setSmooth
   METHOD setTransformOrigin
   METHOD smooth
   METHOD transformOrigin

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDeclarativeItem ( QDeclarativeItem * parent = 0 )
*/
$constructor=|new|QDeclarativeItem *=0

$deleteMethod

/*
qreal baselineOffset () const
*/
$method=|qreal|baselineOffset|

/*
QDeclarativeItem * childAt ( qreal x, qreal y ) const
*/
$method=|QDeclarativeItem *|childAt|qreal,qreal

/*
QRectF childrenRect ()
*/
$method=|QRectF|childrenRect|

/*
bool clip () const
*/
$method=|bool|clip|

/*
void forceActiveFocus ()
*/
$method=|void|forceActiveFocus|

/*
qreal implicitHeight () const
*/
$method=|qreal|implicitHeight|

/*
qreal implicitWidth () const
*/
$method=|qreal|implicitWidth|

/*
bool keepMouseGrab () const
*/
$method=|bool|keepMouseGrab|

/*
QScriptValue mapFromItem ( const QScriptValue & item, qreal x, qreal y ) const
*/
$method=|QScriptValue|mapFromItem|const QScriptValue &,qreal,qreal

/*
QScriptValue mapToItem ( const QScriptValue & item, qreal x, qreal y ) const
*/
$method=|QScriptValue|mapToItem|const QScriptValue &,qreal,qreal

/*
QDeclarativeItem * parentItem () const
*/
$method=|QDeclarativeItem *|parentItem|

/*
void setBaselineOffset ( qreal )
*/
$method=|void|setBaselineOffset|qreal

/*
void setClip ( bool )
*/
$method=|void|setClip|bool

/*
void setKeepMouseGrab ( bool keep )
*/
$method=|void|setKeepMouseGrab|bool

/*
void setParentItem ( QDeclarativeItem * parent )
*/
$method=|void|setParentItem|QDeclarativeItem *

/*
void setSmooth ( bool smooth )
*/
$method=|void|setSmooth|bool

/*
void setTransformOrigin ( TransformOrigin origin )
*/
$method=|void|setTransformOrigin|QDeclarativeItem::TransformOrigin

/*
bool smooth () const
*/
$method=|bool|smooth|

/*
TransformOrigin transformOrigin () const
*/
$method=|QDeclarativeItem::TransformOrigin|transformOrigin|

#pragma ENDDUMP
