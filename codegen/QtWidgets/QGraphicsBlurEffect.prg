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
$constructor=|new|QObject *=0

$deleteMethod

/*
BlurHints blurHints () const
*/
$method=|QGraphicsBlurEffect::BlurHints|blurHints|

/*
qreal blurRadius () const
*/
$method=|qreal|blurRadius|

/*
virtual QRectF boundingRectFor ( const QRectF & rect ) const
*/
$method=|QRectF|boundingRectFor|const QRectF &

/*
void setBlurHints ( BlurHints hints )
*/
$method=|void|setBlurHints|QGraphicsBlurEffect::BlurHints

/*
void setBlurRadius ( qreal blurRadius )
*/
$method=|void|setBlurRadius|qreal

#pragma ENDDUMP
