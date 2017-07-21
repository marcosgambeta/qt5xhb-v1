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

/*
QWidgetItem(QWidget * widget)
*/
$constructor=|new|QWidget *

$deleteMethod

/*
virtual QSizePolicy::ControlTypes controlTypes() const
*/
$method=|QSizePolicy::ControlTypes|controlTypes|

/*
virtual Qt::Orientations expandingDirections() const
*/
$method=|Qt::Orientations|expandingDirections|

/*
virtual QRect geometry() const
*/
$method=|QRect|geometry|

/*
virtual bool hasHeightForWidth() const
*/
$method=|bool|hasHeightForWidth|

/*
virtual int heightForWidth(int w) const
*/
$method=|int|heightForWidth|int

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
virtual void setGeometry(const QRect & rect)
*/
$method=|void|setGeometry|const QRect &

/*
virtual QSize sizeHint() const
*/
$method=|QSize|sizeHint|

/*
virtual QWidget * widget()
*/
$method=|QWidget *|widget|

#pragma ENDDUMP
