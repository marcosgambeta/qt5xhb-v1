%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStatusBar ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=void addPermanentWidget ( QWidget * widget, int stretch = 0 )
$method=|void|addPermanentWidget|QWidget *,int=0

$prototype=void addWidget ( QWidget * widget, int stretch = 0 )
$method=|void|addWidget|QWidget *,int=0

$prototype=QString currentMessage () const
$method=|QString|currentMessage|

$prototype=int insertPermanentWidget ( int index, QWidget * widget, int stretch = 0 )
$method=|int|insertPermanentWidget|int,QWidget *,int=0

$prototype=int insertWidget ( int index, QWidget * widget, int stretch = 0 )
$method=|int|insertWidget|int,QWidget *,int=0

$prototype=bool isSizeGripEnabled () const
$method=|bool|isSizeGripEnabled|

$prototype=void removeWidget ( QWidget * widget )
$method=|void|removeWidget|QWidget *

$prototype=void setSizeGripEnabled ( bool )
$method=|void|setSizeGripEnabled|bool

$prototype=void clearMessage ()
$method=|void|clearMessage|

$prototype=void showMessage ( const QString & message, int timeout = 0 )
$method=|void|showMessage|const QString &,int=0

$beginSignals
$signal=|messageChanged(QString)
$endSignals

#pragma ENDDUMP
