%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QWEBPAGE
#endif

$beginClassFrom=QWidget

   METHOD new
   METHOD delete

   METHOD event
   METHOD page
   METHOD setPage
   METHOD sizeHint

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWebInspector ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$prototype=~QWebInspector()
$deleteMethod

$prototype=QWebPage * page () const
$method=|QWebPage *|page|

$prototype=void setPage ( QWebPage * page )
$method=|void|setPage|QWebPage *

%% TODO: is virtual ?
$prototype=virtual bool event ( QEvent * ev )
$virtualMethod=|bool|event|QEvent *

%% TODO: is virtual ?
$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
