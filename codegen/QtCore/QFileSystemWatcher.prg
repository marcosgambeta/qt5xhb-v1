%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>

$prototype=QFileSystemWatcher(QObject * parent = 0)
$internalConstructor=|new1|QObject *=0

$prototype=QFileSystemWatcher(const QStringList & paths, QObject * parent = 0)
$internalConstructor=|new2|const QStringList &,QObject *=0

//[1]QFileSystemWatcher(QObject * parent = 0)
//[2]QFileSystemWatcher(const QStringList & paths, QObject * parent = 0)

HB_FUNC_STATIC( QFILESYSTEMWATCHER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QFileSystemWatcher_new1();
  }
  else if( ISBETWEEN(1,2) && ISARRAY(1) && ISOPTQOBJECT(2) )
  {
    QFileSystemWatcher_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool addPath(const QString & path)
$method=|bool|addPath|const QString &

$prototype=QStringList addPaths(const QStringList & paths)
$method=|QStringList|addPaths|const QStringList &

$prototype=QStringList directories() const
$method=|QStringList|directories|

$prototype=QStringList files() const
$method=|QStringList|files|

$prototype=bool removePath(const QString & path)
$method=|bool|removePath|const QString &

$prototype=QStringList removePaths(const QStringList & paths)
$method=|QStringList|removePaths|const QStringList &

$beginSignals
$signal=|directoryChanged(QString)
$signal=|fileChanged(QString)
$endSignals

#pragma ENDDUMP
