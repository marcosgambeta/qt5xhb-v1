$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QGraphicsColorizeEffect INHERIT QGraphicsEffect

   METHOD new
   METHOD delete
   METHOD color
   METHOD strength
   METHOD setColor
   METHOD setStrength

   METHOD onColorChanged
   METHOD onStrengthChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGraphicsColorizeEffect ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
QColor color () const
*/
$method=|QColor|color|

/*
qreal strength () const
*/
$method=|qreal|strength|

/*
void setColor ( const QColor & c )
*/
$method=|void|setColor|const QColor &

/*
void setStrength ( qreal strength )
*/
$method=|void|setStrength|qreal

#pragma ENDDUMP
