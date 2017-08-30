$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QSGFlatColorMaterial INHERIT QSGMaterial

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD color
   METHOD setColor

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSGFlatColorMaterial()
*/
$constructor=|new|

$deleteMethod

/*
const QColor & color() const
*/
$method=|const QColor &|color|

/*
void setColor(const QColor & color)
*/
$method=|void|setColor|const QColor &

#pragma ENDDUMP
