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

$prototype=QFrame ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

$prototype=QRect frameRect () const
$method=|QRect|frameRect|

$prototype=Shadow frameShadow () const
$method=|QFrame::Shadow|frameShadow|

$prototype=Shape frameShape () const
$method=|QFrame::Shape|frameShape|

$prototype=int frameStyle () const
$method=|int|frameStyle|

$prototype=int frameWidth () const
$method=|int|frameWidth|

$prototype=int lineWidth () const
$method=|int|lineWidth|

$prototype=int midLineWidth () const
$method=|int|midLineWidth|

$prototype=void setFrameRect ( const QRect & )
$method=|void|setFrameRect|const QRect &

$prototype=void setFrameShadow ( Shadow )
$method=|void|setFrameShadow|QFrame::Shadow

$prototype=void setFrameShape ( Shape )
$method=|void|setFrameShape|QFrame::Shape

$prototype=void setFrameStyle ( int style )
$method=|void|setFrameStyle|int

$prototype=void setLineWidth ( int )
$method=|void|setLineWidth|int

$prototype=void setMidLineWidth ( int )
$method=|void|setMidLineWidth|int

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
