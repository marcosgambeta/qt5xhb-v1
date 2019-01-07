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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QColor>

$prototype=QColormap ( const QColormap & colormap )
$constructor=|new|const QColormap &

$deleteMethod

$prototype=const QColor colorAt ( uint pixel ) const
$method=|const QColor|colorAt|uint

$prototype=const QVector<QColor> colormap () const
$method=|const QVector<QColor>|colormap|

$prototype=int depth () const
$method=|int|depth|

$prototype=Mode mode () const
$method=|QColormap::Mode|mode|

$prototype=uint pixel ( const QColor & color ) const
$method=|uint|pixel|const QColor &

$prototype=int size () const
$method=|int|size|

$prototype=static QColormap instance ( int screen = -1 )
$staticMethod=|QColormap|instance|int=-1

$extraMethods

#pragma ENDDUMP
