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

$prototype=QSplitterHandle ( Qt::Orientation orientation, QSplitter * parent )
$constructor=|new|Qt::Orientation,QSplitter *

$deleteMethod

$prototype=bool opaqueResize () const
$method=|bool|opaqueResize|

$prototype=Qt::Orientation orientation () const
$method=|Qt::Orientation|orientation|

$prototype=void setOrientation ( Qt::Orientation orientation )
$method=|void|setOrientation|Qt::Orientation

$prototype=QSplitter * splitter () const
$method=|QSplitter *|splitter|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
