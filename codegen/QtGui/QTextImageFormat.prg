%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QTextCharFormat

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextImageFormat()
$constructor=|new|

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=void setName(const QString &name)
$method=|void|setName|const QString &

$prototype=QString name() const
$method=|QString|name|

$prototype=void setWidth(qreal width)
$method=|void|setWidth|qreal

$prototype=qreal width() const
$method=|qreal|width|

$prototype=void setHeight(qreal height)
$method=|void|setHeight|qreal

$prototype=qreal height() const
$method=|qreal|height|

$prototype=int QTextImageFormat::quality() const
$method=5,12,0|int|quality|

$prototype=void QTextImageFormat::setQuality(int quality = ...)
$method=5,12,0|void|setQuality|int=100

#pragma ENDDUMP
