$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QSpacerItem INHERIT QLayoutItem

   METHOD new
   METHOD delete
   METHOD changeSize
   METHOD expandingDirections
   METHOD geometry
   METHOD isEmpty
   METHOD maximumSize
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD spacerItem

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSpacerItem(int w, int h, QSizePolicy::Policy hPolicy = QSizePolicy::Minimum, QSizePolicy::Policy vPolicy = QSizePolicy::Minimum)
$constructor=|new|int,int,QSizePolicy::Policy=QSizePolicy::Minimum,QSizePolicy::Policy=QSizePolicy::Minimum

$deleteMethod

$prototype=void changeSize(int w, int h, QSizePolicy::Policy hPolicy = QSizePolicy::Minimum, QSizePolicy::Policy vPolicy = QSizePolicy::Minimum)
$method=|void|changeSize|int,int,QSizePolicy::Policy=QSizePolicy::Minimum,QSizePolicy::Policy=QSizePolicy::Minimum

$prototype=virtual Qt::Orientations expandingDirections() const
$method=|Qt::Orientations|expandingDirections|

$prototype=virtual QRect geometry() const
$method=|QRect|geometry|

$prototype=virtual bool isEmpty() const
$method=|bool|isEmpty|

$prototype=virtual QSize maximumSize() const
$method=|QSize|maximumSize|

$prototype=virtual QSize minimumSize() const
$method=|QSize|minimumSize|

$prototype=virtual void setGeometry(const QRect & r)
$method=|void|setGeometry|const QRect &

$prototype=virtual QSize sizeHint() const
$method=|QSize|sizeHint|

$prototype=virtual QSpacerItem * spacerItem()
$method=|QSpacerItem *|spacerItem|

#pragma ENDDUMP
