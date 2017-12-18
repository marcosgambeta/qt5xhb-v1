$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QWidgetItem INHERIT QLayoutItem

   METHOD new
   METHOD delete
   METHOD controlTypes
   METHOD expandingDirections
   METHOD geometry
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD isEmpty
   METHOD maximumSize
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD widget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWidgetItem(QWidget * widget)
$constructor=|new|QWidget *

$deleteMethod

$prototype=virtual QSizePolicy::ControlTypes controlTypes() const
$method=|QSizePolicy::ControlTypes|controlTypes|

$prototype=virtual Qt::Orientations expandingDirections() const
$method=|Qt::Orientations|expandingDirections|

$prototype=virtual QRect geometry() const
$method=|QRect|geometry|

$prototype=virtual bool hasHeightForWidth() const
$method=|bool|hasHeightForWidth|

$prototype=virtual int heightForWidth(int w) const
$method=|int|heightForWidth|int

$prototype=virtual bool isEmpty() const
$method=|bool|isEmpty|

$prototype=virtual QSize maximumSize() const
$method=|QSize|maximumSize|

$prototype=virtual QSize minimumSize() const
$method=|QSize|minimumSize|

$prototype=virtual void setGeometry(const QRect & rect)
$method=|void|setGeometry|const QRect &

$prototype=virtual QSize sizeHint() const
$method=|QSize|sizeHint|

$prototype=virtual QWidget * widget()
$method=|QWidget *|widget|

#pragma ENDDUMP
