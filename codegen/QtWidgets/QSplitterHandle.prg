$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSPLITTER
REQUEST QSIZE
#endif

CLASS QSplitterHandle INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD opaqueResize
   METHOD orientation
   METHOD setOrientation
   METHOD splitter
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSplitterHandle ( Qt::Orientation orientation, QSplitter * parent )
*/
$constructor=|new|Qt::Orientation,QSplitter *

$deleteMethod

/*
bool opaqueResize () const
*/
$method=|bool|opaqueResize|

/*
Qt::Orientation orientation () const
*/
$method=|Qt::Orientation|orientation|

/*
void setOrientation ( Qt::Orientation orientation )
*/
$method=|void|setOrientation|Qt::Orientation

/*
QSplitter * splitter () const
*/
$method=|QSplitter *|splitter|

/*
virtual QSize sizeHint () const
*/
$method=|QSize|sizeHint|

#pragma ENDDUMP
