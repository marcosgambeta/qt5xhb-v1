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

$prototype=QProgressBar ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=Qt::Alignment alignment () const
$method=|Qt::Alignment|alignment|

$prototype=QString format () const
$method=|QString|format|

$prototype=bool invertedAppearance ()
$method=|bool|invertedAppearance|

$prototype=bool isTextVisible () const
$method=|bool|isTextVisible|

$prototype=int maximum () const
$method=|int|maximum|

$prototype=int minimum () const
$method=|int|minimum|

$prototype=Qt::Orientation orientation () const
$method=|Qt::Orientation|orientation|

$prototype=void setAlignment ( Qt::Alignment alignment )
$method=|void|setAlignment|Qt::Alignment

$prototype=void setFormat ( const QString & format )
$method=|void|setFormat|const QString &

$prototype=void setInvertedAppearance ( bool invert )
$method=|void|setInvertedAppearance|bool

$prototype=void setTextDirection ( QProgressBar::Direction textDirection )
$method=|void|setTextDirection|QProgressBar::Direction

$prototype=void setTextVisible ( bool visible )
$method=|void|setTextVisible|bool

$prototype=virtual QString text () const
$virtualMethod=|QString|text|

$prototype=QProgressBar::Direction textDirection ()
$method=|QProgressBar::Direction|textDirection|

$prototype=int value () const
$method=|int|value|

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void reset ()
$method=|void|reset|

$prototype=void setMaximum ( int maximum )
$method=|void|setMaximum|int

$prototype=void setMinimum ( int minimum )
$method=|void|setMinimum|int

$prototype=void setOrientation ( Qt::Orientation )
$method=|void|setOrientation|Qt::Orientation

$prototype=void setRange ( int minimum, int maximum )
$method=|void|setRange|int,int

$prototype=void setValue ( int value )
$method=|void|setValue|int

$beginSignals
$signal=|valueChanged(int)
$endSignals

#pragma ENDDUMP
