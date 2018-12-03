%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidgetItem

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWidgetItemV2(QWidget *widget)
$constructor=|new|QWidget *

$deleteMethod

$prototype=QSize sizeHint() const
$method=|QSize|sizeHint|

$prototype=QSize minimumSize() const
$method=|QSize|minimumSize|

$prototype=QSize maximumSize() const
$method=|QSize|maximumSize|

$prototype=int heightForWidth(int width) const
$method=|int|heightForWidth|int

#pragma ENDDUMP
