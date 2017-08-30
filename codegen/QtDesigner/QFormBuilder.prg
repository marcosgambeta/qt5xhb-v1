$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDESIGNERCUSTOMWIDGETINTERFACE
#endif

CLASS QFormBuilder INHERIT QAbstractFormBuilder

   DATA self_destruction INIT .F.

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

/*
QFormBuilder ()
*/
$constructor=|new|

$deleteMethod

/*
void addPluginPath ( const QString & pluginPath )
*/
$method=|void|addPluginPath|const QString &

/*
void clearPluginPaths ()
*/
$method=|void|clearPluginPaths|

/*
QList<QDesignerCustomWidgetInterface *> customWidgets () const
*/
$method=|QList<QDesignerCustomWidgetInterface *>|customWidgets|

/*
QStringList pluginPaths () const
*/
$method=|QStringList|pluginPaths|

/*
void setPluginPath ( const QStringList & pluginPaths )
*/
$method=|void|setPluginPath|const QStringList &

#pragma ENDDUMP
