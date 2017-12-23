$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QScrollArea INHERIT QAbstractScrollArea

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD ensureVisible
   METHOD ensureWidgetVisible
   METHOD setAlignment
   METHOD setWidget
   METHOD setWidgetResizable
   METHOD takeWidget
   METHOD widget
   METHOD widgetResizable
   METHOD focusNextPrevChild
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QScrollArea ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=Qt::Alignment alignment () const
$method=|Qt::Alignment|alignment|

$prototype=void ensureVisible ( int x, int y, int xmargin = 50, int ymargin = 50 )
$method=|void|ensureVisible|int,int,int=50,int=50

$prototype=void ensureWidgetVisible ( QWidget * childWidget, int xmargin = 50, int ymargin = 50 )
$method=|void|ensureWidgetVisible|QWidget *,int=50,int=50

$prototype=void setAlignment ( Qt::Alignment )
$method=|void|setAlignment|Qt::Alignment

$prototype=void setWidget ( QWidget * widget )
$method=|void|setWidget|QWidget *

$prototype=void setWidgetResizable ( bool resizable )
$method=|void|setWidgetResizable|bool

$prototype=QWidget * takeWidget ()
$method=|QWidget *|takeWidget|

$prototype=QWidget * widget () const
$method=|QWidget *|widget|

$prototype=bool widgetResizable () const
$method=|bool|widgetResizable|

$prototype=virtual bool focusNextPrevChild ( bool next )
$virtualMethod=|bool|focusNextPrevChild|bool

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
