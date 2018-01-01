%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QWebPluginFactory INHERIT QObject

   METHOD delete
   METHOD create
   METHOD refreshPlugins

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QObject * create ( const QString & mimeType, const QUrl & url, const QStringList & argumentNames, const QStringList & argumentValues ) const = 0
$virtualMethod=|QObject *|create|const QString &,const QUrl &,const QStringList &,const QStringList &

$prototype=virtual void refreshPlugins ()
$virtualMethod=|void|refreshPlugins|

#pragma ENDDUMP
