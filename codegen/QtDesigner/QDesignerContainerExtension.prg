%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDesigner

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void addWidget ( QWidget * page ) = 0
$virtualMethod=|void|addWidget|QWidget *

$prototype=virtual int count () const = 0
$virtualMethod=|int|count|

$prototype=virtual int currentIndex () const = 0
$virtualMethod=|int|currentIndex|

$prototype=virtual void insertWidget ( int index, QWidget * page ) = 0
$virtualMethod=|void|insertWidget|int,QWidget *

$prototype=virtual void remove ( int index ) = 0
$virtualMethod=|void|remove|int

$prototype=virtual void setCurrentIndex ( int index ) = 0
$virtualMethod=|void|setCurrentIndex|int

$prototype=virtual QWidget * widget ( int index ) const = 0
$virtualMethod=|QWidget *|widget|int

$extraMethods

#pragma ENDDUMP
