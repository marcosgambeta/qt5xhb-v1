%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWinExtras

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

#include <QtGui/QWindow>
#include <QtWinExtras/QWinTaskbarProgress>

$prototype=explicit QWinTaskbarButton(QObject *parent = 0)
$constructor=5,2,0|new|QObject *=0

$deleteMethod=5,2,0

$prototype=QWindow *window() const
$method=5,2,0|QWindow *|window|

$prototype=void setWindow(QWindow *window)
$method=5,2,0|void|setWindow|QWindow *

$prototype=QIcon overlayIcon() const
$method=5,2,0|QIcon|overlayIcon|

$prototype=void setOverlayIcon(const QIcon &icon)
$method=5,2,0|void|setOverlayIcon|const QIcon &

$prototype=void clearOverlayIcon()
$method=5,2,0|void|clearOverlayIcon|

$prototype=QString overlayAccessibleDescription() const
$method=5,2,0|QString|overlayAccessibleDescription|

$prototype=void setOverlayAccessibleDescription(const QString &description)
$method=5,2,0|void|setOverlayAccessibleDescription|const QString &

$prototype=QWinTaskbarProgress *progress() const
$method=5,2,0|QWinTaskbarProgress *|progress|

$prototype=bool eventFilter(QObject *, QEvent *)
$method=5,2,0|bool|eventFilter|QObject *,QEvent *

#pragma ENDDUMP
