%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDesigner

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractFormBuilder

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QFormBuilder ()
$constructor=|new|

$deleteMethod

$prototype=void addPluginPath ( const QString & pluginPath )
$method=|void|addPluginPath|const QString &

$prototype=void clearPluginPaths ()
$method=|void|clearPluginPaths|

$prototype=QList<QDesignerCustomWidgetInterface *> customWidgets () const
$method=|QList<QDesignerCustomWidgetInterface *>|customWidgets|

$prototype=QStringList pluginPaths () const
$method=|QStringList|pluginPaths|

$prototype=void setPluginPath ( const QStringList & pluginPaths )
$method=|void|setPluginPath|const QStringList &

#pragma ENDDUMP
