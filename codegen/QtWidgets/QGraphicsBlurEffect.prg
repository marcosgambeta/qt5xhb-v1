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

$prototype=QGraphicsBlurEffect ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=BlurHints blurHints () const
$method=|QGraphicsBlurEffect::BlurHints|blurHints|

$prototype=qreal blurRadius () const
$method=|qreal|blurRadius|

$prototype=virtual QRectF boundingRectFor ( const QRectF & rect ) const
$virtualMethod=|QRectF|boundingRectFor|const QRectF &

$prototype=void setBlurHints ( BlurHints hints )
$method=|void|setBlurHints|QGraphicsBlurEffect::BlurHints

$prototype=void setBlurRadius ( qreal blurRadius )
$method=|void|setBlurRadius|qreal

#pragma ENDDUMP
