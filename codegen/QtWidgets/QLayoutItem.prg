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

$prototype=Qt::Alignment alignment () const
$method=|Qt::Alignment|alignment|

$prototype=QSizePolicy::ControlTypes controlTypes () const
$method=|QSizePolicy::ControlTypes|controlTypes|

$prototype=virtual Qt::Orientations expandingDirections () const = 0
$method=|Qt::Orientations|expandingDirections|

$prototype=virtual QRect geometry () const = 0
$method=|QRect|geometry|

$prototype=virtual bool hasHeightForWidth () const
$method=|bool|hasHeightForWidth|

$prototype=virtual int heightForWidth ( int w ) const
$method=|int|heightForWidth|int

$prototype=virtual void invalidate ()
$method=|void|invalidate|

$prototype=virtual bool isEmpty () const = 0
$method=|bool|isEmpty|

$prototype=virtual QLayout * layout ()
$method=|QLayout *|layout|

$prototype=virtual QSize maximumSize () const = 0
$method=|QSize|maximumSize|

$prototype=virtual int minimumHeightForWidth ( int w ) const
$method=|int|minimumHeightForWidth|int

$prototype=virtual QSize minimumSize () const = 0
$method=|QSize|minimumSize|

$prototype=void setAlignment ( Qt::Alignment alignment )
$method=|void|setAlignment|Qt::Alignment

$prototype=virtual void setGeometry ( const QRect & r ) = 0
$method=|void|setGeometry|const QRect &

$prototype=virtual QSize sizeHint () const = 0
$method=|QSize|sizeHint|

$prototype=virtual QSpacerItem * spacerItem ()
$method=|QSpacerItem *|spacerItem|

$prototype=virtual QWidget * widget ()
$method=|QWidget *|widget|

$extraMethods

#pragma ENDDUMP
