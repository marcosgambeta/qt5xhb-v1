%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDESIGNERCUSTOMWIDGETINTERFACE
#endif

CLASS QFormBuilder INHERIT QAbstractFormBuilder

   METHOD new
   METHOD delete
   METHOD addPluginPath
   METHOD clearPluginPaths
   METHOD customWidgets
   METHOD pluginPaths
   METHOD setPluginPath

   DESTRUCTOR destroyObject

END CLASS

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
