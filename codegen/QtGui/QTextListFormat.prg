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

$beginClassFrom=QTextFormat

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextListFormat()
$constructor=|new|

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=void setStyle(Style style)
$method=|void|setStyle|QTextListFormat::Style

$prototype=Style style() const
$method=|QTextListFormat::Style|style|

$prototype=void setIndent(int indent)
$method=|void|setIndent|int

$prototype=int indent() const
$method=|int|indent|

$prototype=void setNumberPrefix(const QString &numberPrefix)
$method=|void|setNumberPrefix|const QString &

$prototype=QString numberPrefix() const
$method=|QString|numberPrefix|

$prototype=void setNumberSuffix(const QString &numberSuffix)
$method=|void|setNumberSuffix|const QString &

$prototype=QString numberSuffix() const
$method=|QString|numberSuffix|

#pragma ENDDUMP
