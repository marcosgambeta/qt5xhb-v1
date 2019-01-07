%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSplitterHandle ( Qt::Orientation orientation, QSplitter * parent )
$constructor=|new|Qt::Orientation,QSplitter *

$deleteMethod

$prototype=bool opaqueResize () const
$method=|bool|opaqueResize|

$prototype=Qt::Orientation orientation () const
$method=|Qt::Orientation|orientation|

$prototype=void setOrientation ( Qt::Orientation orientation )
$method=|void|setOrientation|Qt::Orientation

$prototype=QSplitter * splitter () const
$method=|QSplitter *|splitter|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
