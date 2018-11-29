%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=static QString writableLocation(StandardLocation type)
$staticMethod=|QString|writableLocation|QStandardPaths::StandardLocation

$prototype=static QStringList standardLocations(StandardLocation type)
$staticMethod=|QStringList|standardLocations|QStandardPaths::StandardLocation

$prototype=static QString locate(StandardLocation type, const QString &fileName, LocateOptions options = LocateFile)
$staticMethod=|QString|locate|QStandardPaths::StandardLocation,const QString &,QStandardPaths::LocateOptions=QStandardPaths::LocateFile

$prototype=static QStringList locateAll(StandardLocation type, const QString &fileName, LocateOptions options = LocateFile)
$staticMethod=|QStringList|locateAll|QStandardPaths::StandardLocation,const QString &,QStandardPaths::LocateOptions=QStandardPaths::LocateFile

$prototype=static QString displayName(StandardLocation type)
$staticMethod=|QString|displayName|QStandardPaths::StandardLocation

$prototype=static QString findExecutable(const QString &executableName, const QStringList &paths = QStringList())
$staticMethod=|QString|findExecutable|const QString &,const QStringList &=QStringList()

$prototype=static void setTestModeEnabled(bool testMode)
$staticMethod=|void|setTestModeEnabled|bool

$prototype=static bool isTestModeEnabled()
$staticMethod=|bool|isTestModeEnabled|

$extraMethods

#pragma ENDDUMP
