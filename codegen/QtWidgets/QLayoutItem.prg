$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QLAYOUT
REQUEST QSIZE
REQUEST QSPACERITEM
REQUEST QWIDGET
#endif

CLASS QLayoutItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD alignment
   METHOD controlTypes
   METHOD expandingDirections
   METHOD geometry
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD invalidate
   METHOD isEmpty
   METHOD layout
   METHOD maximumSize
   METHOD minimumHeightForWidth
   METHOD minimumSize
   METHOD setAlignment
   METHOD setGeometry
   METHOD sizeHint
   METHOD spacerItem
   METHOD widget

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
Qt::Alignment alignment () const
*/
$method=|Qt::Alignment|alignment|

/*
QSizePolicy::ControlTypes controlTypes () const
*/
$method=|QSizePolicy::ControlTypes|controlTypes|

/*
virtual Qt::Orientations expandingDirections () const = 0
*/
$method=|Qt::Orientations|expandingDirections|

/*
virtual QRect geometry () const = 0
*/
$method=|QRect|geometry|

/*
virtual bool hasHeightForWidth () const
*/
$method=|bool|hasHeightForWidth|

/*
virtual int heightForWidth ( int w ) const
*/
$method=|int|heightForWidth|int

/*
virtual void invalidate ()
*/
$method=|void|invalidate|

/*
virtual bool isEmpty () const = 0
*/
$method=|bool|isEmpty|

/*
virtual QLayout * layout ()
*/
$method=|QLayout *|layout|

/*
virtual QSize maximumSize () const = 0
*/
$method=|QSize|maximumSize|

/*
virtual int minimumHeightForWidth ( int w ) const
*/
$method=|int|minimumHeightForWidth|int

/*
virtual QSize minimumSize () const = 0
*/
$method=|QSize|minimumSize|

/*
void setAlignment ( Qt::Alignment alignment )
*/
$method=|void|setAlignment|Qt::Alignment

/*
virtual void setGeometry ( const QRect & r ) = 0
*/
$method=|void|setGeometry|const QRect &

/*
virtual QSize sizeHint () const = 0
*/
$method=|QSize|sizeHint|

/*
virtual QSpacerItem * spacerItem ()
*/
$method=|QSpacerItem *|spacerItem|

/*
virtual QWidget * widget ()
*/
$method=|QWidget *|widget|

$extraMethods

#pragma ENDDUMP
