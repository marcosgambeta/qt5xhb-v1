%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QFrame

   METHOD delete
   METHOD addScrollBarWidget
   METHOD horizontalScrollBarPolicy
   METHOD setHorizontalScrollBarPolicy
   METHOD maximumViewportSize
   METHOD scrollBarWidgets
   METHOD cornerWidget
   METHOD setCornerWidget
   METHOD horizontalScrollBar
   METHOD setHorizontalScrollBar
   METHOD setViewport
   METHOD verticalScrollBar
   METHOD setVerticalScrollBar
   METHOD verticalScrollBarPolicy
   METHOD setVerticalScrollBarPolicy
   METHOD viewport
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setupViewport
   METHOD sizeAdjustPolicy
   METHOD setSizeAdjustPolicy

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QScrollBar>

$deleteMethod

$prototype=void addScrollBarWidget ( QWidget * widget, Qt::Alignment alignment )
$method=|void|addScrollBarWidget|QWidget *,Qt::Alignment

$prototype=Qt::ScrollBarPolicy horizontalScrollBarPolicy () const
$method=|Qt::ScrollBarPolicy|horizontalScrollBarPolicy|

$prototype=void setHorizontalScrollBarPolicy ( Qt::ScrollBarPolicy )
$method=|void|setHorizontalScrollBarPolicy|Qt::ScrollBarPolicy

$prototype=QSize maximumViewportSize () const
$method=|QSize|maximumViewportSize|

$prototype=QWidgetList scrollBarWidgets ( Qt::Alignment alignment )
$method=|QWidgetList|scrollBarWidgets|Qt::Alignment

$prototype=QWidget * cornerWidget () const
$method=|QWidget *|cornerWidget|

$prototype=void setCornerWidget ( QWidget * widget )
$method=|void|setCornerWidget|QWidget *

$prototype=QScrollBar * horizontalScrollBar () const
$method=|QScrollBar *|horizontalScrollBar|

$prototype=void setHorizontalScrollBar ( QScrollBar * scrollBar )
$method=|void|setHorizontalScrollBar|QScrollBar *

$prototype=void setViewport ( QWidget * widget )
$method=|void|setViewport|QWidget *

$prototype=QScrollBar * verticalScrollBar () const
$method=|QScrollBar *|verticalScrollBar|

$prototype=void setVerticalScrollBar ( QScrollBar * scrollBar )
$method=|void|setVerticalScrollBar|QScrollBar *

$prototype=Qt::ScrollBarPolicy verticalScrollBarPolicy () const
$method=|Qt::ScrollBarPolicy|verticalScrollBarPolicy|

$prototype=void setVerticalScrollBarPolicy ( Qt::ScrollBarPolicy )
$method=|void|setVerticalScrollBarPolicy|Qt::ScrollBarPolicy

$prototype=QWidget * viewport () const
$method=|QWidget *|viewport|

$prototype=QSize minimumSizeHint () const
$method=|QSize|minimumSizeHint|

$prototype=QSize sizeHint () const
$method=|QSize|sizeHint|

$prototype=virtual void setupViewport(QWidget *viewport)
$virtualMethod=|void|setupViewport|QWidget *

$prototype=SizeAdjustPolicy sizeAdjustPolicy() const
$method=|QAbstractScrollArea::SizeAdjustPolicy|sizeAdjustPolicy|

$prototype=void setSizeAdjustPolicy(SizeAdjustPolicy policy)
$method=|void|setSizeAdjustPolicy|QAbstractScrollArea::SizeAdjustPolicy

#pragma ENDDUMP
