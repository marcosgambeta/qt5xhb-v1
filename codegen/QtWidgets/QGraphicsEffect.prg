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

/*
QRectF boundingRect () const
*/
$method=|QRectF|boundingRect|

/*
virtual QRectF boundingRectFor ( const QRectF & rect ) const
*/
$method=|QRectF|boundingRectFor|const QRectF &

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
