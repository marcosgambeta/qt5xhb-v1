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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=explicit QWinThumbnailToolButton(QObject *parent = 0)
$constructor=5,2,0|new|QObject *=0

$deleteMethod=5,2,0

$prototype=QString toolTip() const
$method=5,2,0|QString|toolTip|

$prototype=void setToolTip(const QString &toolTip)
$method=5,2,0|void|setToolTip|const QString &

$prototype=QIcon icon() const
$method=5,2,0|QIcon|icon|

$prototype=void setIcon(const QIcon &icon)
$method=5,2,0|void|setIcon|const QIcon &

$prototype=bool isEnabled() const
$method=5,2,0|bool|isEnabled|

$prototype=void setEnabled(bool enabled)
$method=5,2,0|void|setEnabled|bool

$prototype=bool isInteractive() const
$method=5,2,0|bool|isInteractive|

$prototype=void setInteractive(bool interactive)
$method=5,2,0|void|setInteractive|bool

$prototype=bool isVisible() const
$method=5,2,0|bool|isVisible|

$prototype=void setVisible(bool visible)
$method=5,2,0|void|setVisible|bool

$prototype=bool dismissOnClick() const
$method=5,2,0|bool|dismissOnClick|

$prototype=void setDismissOnClick(bool dismiss)
$method=5,2,0|void|setDismissOnClick|bool

$prototype=bool isFlat() const
$method=5,2,0|bool|isFlat|

$prototype=void setFlat(bool flat)
$method=5,2,0|void|setFlat|bool

$prototype=void click()
$method=5,2,0|void|click|

$beginSignals
$signal=5,2,0|clicked()
$signal=5,2,0|changed()
$endSignals

#pragma ENDDUMP
