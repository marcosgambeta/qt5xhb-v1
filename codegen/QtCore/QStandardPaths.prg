%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QStandardPaths

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD writableLocation
   METHOD standardLocations
   METHOD locate
   METHOD locateAll
   METHOD displayName
   METHOD findExecutable
   METHOD setTestModeEnabled
   METHOD isTestModeEnabled

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
static QString writableLocation(StandardLocation type)
*/
$staticMethod=|QString|writableLocation|QStandardPaths::StandardLocation

/*
static QStringList standardLocations(StandardLocation type)
*/
$staticMethod=|QStringList|standardLocations|QStandardPaths::StandardLocation

/*
static QString locate(StandardLocation type, const QString &fileName, LocateOptions options = LocateFile)
*/
$staticMethod=|QString|locate|QStandardPaths::StandardLocation,const QString &,QStandardPaths::LocateOptions=QStandardPaths::LocateFile

/*
static QStringList locateAll(StandardLocation type, const QString &fileName, LocateOptions options = LocateFile)
*/
$staticMethod=|QStringList|locateAll|QStandardPaths::StandardLocation,const QString &,QStandardPaths::LocateOptions=QStandardPaths::LocateFile

/*
static QString displayName(StandardLocation type)
*/
$staticMethod=|QString|displayName|QStandardPaths::StandardLocation

/*
static QString findExecutable(const QString &executableName, const QStringList &paths = QStringList())
*/
$staticMethod=|QString|findExecutable|const QString &,const QStringList &=QStringList()

/*
static void setTestModeEnabled(bool testMode)
*/
$staticMethod=|void|setTestModeEnabled|bool

/*
static bool isTestModeEnabled()
*/
$staticMethod=|bool|isTestModeEnabled|

$extraMethods

#pragma ENDDUMP
