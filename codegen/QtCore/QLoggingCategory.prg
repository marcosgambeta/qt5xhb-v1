%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QLoggingCategory(const char *category)
$constructor=|new|const char *

$deleteMethod

$prototype=bool isEnabled(QtMsgType type) const
$method=|bool|isEnabled|QtMsgType

$prototype=void setEnabled(QtMsgType type, bool enable)
$method=|void|setEnabled|QtMsgType,bool

$prototype=bool isDebugEnabled() const
$method=|bool|isDebugEnabled|

$prototype=bool isWarningEnabled() const
$method=|bool|isWarningEnabled|

$prototype=bool isCriticalEnabled() const
$method=|bool|isCriticalEnabled|

$prototype=const char *categoryName() const
$method=|const char *|categoryName|

$prototype=static QLoggingCategory *defaultCategory()
$staticMethod=|QLoggingCategory *|defaultCategory|

$prototype=static void setFilterRules(const QString &rules)
$staticMethod=|void|setFilterRules|const QString &

$extraMethods

#pragma ENDDUMP
