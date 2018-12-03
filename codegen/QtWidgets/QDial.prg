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

$beginClassFrom=QAbstractSlider

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDial ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=int notchSize () const
$method=|int|notchSize|

$prototype=qreal notchTarget () const
$method=|qreal|notchTarget|

$prototype=bool notchesVisible () const
$method=|bool|notchesVisible|

$prototype=void setNotchTarget ( double target )
$method=|void|setNotchTarget|double

$prototype=bool wrapping () const
$method=|bool|wrapping|

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void setNotchesVisible ( bool visible )
$method=|void|setNotchesVisible|bool

$prototype=void setWrapping ( bool on )
$method=|void|setWrapping|bool

#pragma ENDDUMP
