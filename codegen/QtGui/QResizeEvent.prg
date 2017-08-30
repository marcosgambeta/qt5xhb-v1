$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QResizeEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD size
   METHOD oldSize

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QResizeEvent(const QSize &size, const QSize &oldSize)
*/
$constructor=|new|const QSize &,const QSize &

$deleteMethod

/*
const QSize &size() const
*/
$method=|const QSize &|size|

/*
const QSize &oldSize() const
*/
$method=|const QSize &|oldSize|

#pragma ENDDUMP
