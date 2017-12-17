$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
#endif

CLASS QGraphicsEffect INHERIT QObject

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

$prototype=QRectF boundingRect () const
$method=|QRectF|boundingRect|

$prototype=virtual QRectF boundingRectFor ( const QRectF & rect ) const
$method=|QRectF|boundingRectFor|const QRectF &

$prototype=bool isEnabled () const
$method=|bool|isEnabled|

$prototype=void setEnabled ( bool enable )
$method=|void|setEnabled|bool

$prototype=void update ()
$method=|void|update|

#pragma ENDDUMP
