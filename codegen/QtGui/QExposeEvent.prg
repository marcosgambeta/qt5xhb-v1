$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QREGION
#endif

CLASS QExposeEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD region

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QExposeEvent(const QRegion & rgn)
*/
$constructor=|new|const QRegion &

$deleteMethod

/*
const QRegion & region() const
*/
$method=|const QRegion &|region|

#pragma ENDDUMP
