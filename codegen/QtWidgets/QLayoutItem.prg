%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QLAYOUT
REQUEST QSIZE
REQUEST QSPACERITEM
REQUEST QWIDGET
#endif

$beginClass

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QLayout>

$deleteMethod

$prototype=Qt::Alignment alignment () const
$method=|Qt::Alignment|alignment|

$prototype=QSizePolicy::ControlTypes controlTypes () const
$method=|QSizePolicy::ControlTypes|controlTypes|

$prototype=virtual Qt::Orientations expandingDirections () const = 0
$virtualMethod=|Qt::Orientations|expandingDirections|

$prototype=virtual QRect geometry () const = 0
$virtualMethod=|QRect|geometry|

$prototype=virtual bool hasHeightForWidth () const
$virtualMethod=|bool|hasHeightForWidth|

$prototype=virtual int heightForWidth ( int w ) const
$virtualMethod=|int|heightForWidth|int

$prototype=virtual void invalidate ()
$virtualMethod=|void|invalidate|

$prototype=virtual bool isEmpty () const = 0
$virtualMethod=|bool|isEmpty|

$prototype=virtual QLayout * layout ()
$virtualMethod=|QLayout *|layout|

$prototype=virtual QSize maximumSize () const = 0
$virtualMethod=|QSize|maximumSize|

$prototype=virtual int minimumHeightForWidth ( int w ) const
$virtualMethod=|int|minimumHeightForWidth|int

$prototype=virtual QSize minimumSize () const = 0
$virtualMethod=|QSize|minimumSize|

$prototype=void setAlignment ( Qt::Alignment alignment )
$method=|void|setAlignment|Qt::Alignment

$prototype=virtual void setGeometry ( const QRect & r ) = 0
$virtualMethod=|void|setGeometry|const QRect &

$prototype=virtual QSize sizeHint () const = 0
$virtualMethod=|QSize|sizeHint|

$prototype=virtual QSpacerItem * spacerItem ()
$virtualMethod=|QSpacerItem *|spacerItem|

$prototype=virtual QWidget * widget ()
$virtualMethod=|QWidget *|widget|

$extraMethods

#pragma ENDDUMP
