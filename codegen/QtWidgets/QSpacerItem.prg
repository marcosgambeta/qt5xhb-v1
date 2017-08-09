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

/*
QSpacerItem(int w, int h, QSizePolicy::Policy hPolicy = QSizePolicy::Minimum, QSizePolicy::Policy vPolicy = QSizePolicy::Minimum)
*/
$constructor=|new|int,int,QSizePolicy::Policy=QSizePolicy::Minimum,QSizePolicy::Policy=QSizePolicy::Minimum

$deleteMethod

/*
void changeSize(int w, int h, QSizePolicy::Policy hPolicy = QSizePolicy::Minimum, QSizePolicy::Policy vPolicy = QSizePolicy::Minimum)
*/
$method=|void|changeSize|int,int,QSizePolicy::Policy=QSizePolicy::Minimum,QSizePolicy::Policy=QSizePolicy::Minimum

/*
virtual Qt::Orientations expandingDirections() const
*/
$method=|Qt::Orientations|expandingDirections|

/*
virtual QRect geometry() const
*/
$method=|QRect|geometry|

/*
virtual bool isEmpty() const
*/
$method=|bool|isEmpty|

/*
virtual QSize maximumSize() const
*/
$method=|QSize|maximumSize|

/*
virtual QSize minimumSize() const
*/
$method=|QSize|minimumSize|

/*
virtual void setGeometry(const QRect & r)
*/
$method=|void|setGeometry|const QRect &

/*
virtual QSize sizeHint() const
*/
$method=|QSize|sizeHint|

/*
virtual QSpacerItem * spacerItem()
*/
$method=|QSpacerItem *|spacerItem|

#pragma ENDDUMP
