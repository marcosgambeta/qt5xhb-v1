%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QFrame

   METHOD new
   METHOD delete
   METHOD addWidget
   METHOD count
   METHOD currentIndex
   METHOD currentWidget
   METHOD indexOf
   METHOD insertWidget
   METHOD removeWidget
   METHOD widget
   METHOD setCurrentIndex
   METHOD setCurrentWidget

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStackedWidget ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=int addWidget ( QWidget * widget )
$method=|int|addWidget|QWidget *

$prototype=int count () const
$method=|int|count|

$prototype=int currentIndex () const
$method=|int|currentIndex|

$prototype=QWidget * currentWidget () const
$method=|QWidget *|currentWidget|

$prototype=int indexOf ( QWidget * widget ) const
$method=|int|indexOf|QWidget *

$prototype=int insertWidget ( int index, QWidget * widget )
$method=|int|insertWidget|int,QWidget *

$prototype=void removeWidget ( QWidget * widget )
$method=|void|removeWidget|QWidget *

$prototype=QWidget * widget ( int index ) const
$method=|QWidget *|widget|int

$prototype=void setCurrentIndex ( int index )
$method=|void|setCurrentIndex|int

$prototype=void setCurrentWidget ( QWidget * widget )
$method=|void|setCurrentWidget|QWidget *

$beginSignals
$signal=|currentChanged(int)
$signal=|widgetRemoved(int)
$endSignals

#pragma ENDDUMP
