%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

#include <QWindow>

$prototype=explicit QWinThumbnailToolBar(QObject *parent = 0)
$constructor=5,2,0|new|QObject *=0

$deleteMethod=5,2,0

$prototype=QWindow *window() const
$method=5,2,0|QWindow *|window|

$prototype=void setWindow(QWindow *window)
$method=5,2,0|void|setWindow|QWindow *

$prototype=void addButton(QWinThumbnailToolButton *button)
$method=5,2,0|void|addButton|QWinThumbnailToolButton *

$prototype=void removeButton(QWinThumbnailToolButton *button)
$method=5,2,0|void|removeButton|QWinThumbnailToolButton *

$prototype=void setButtons(const QList<QWinThumbnailToolButton *> &buttons)
$method=5,2,0|void|setButtons|const QList<QWinThumbnailToolButton *> &

$prototype=QList<QWinThumbnailToolButton *> buttons() const
$method=5,2,0|QList<QWinThumbnailToolButton *>|buttons|

$prototype=int count() const
$method=5,2,0|int|count|

$prototype=void clear()
$method=5,2,0|void|clear|

#pragma ENDDUMP
