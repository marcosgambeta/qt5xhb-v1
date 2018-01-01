%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QEXTENSIONMANAGER
REQUEST QOBJECT
#endif

CLASS QExtensionFactory INHERIT QObject,QAbstractExtensionFactory

   METHOD new
   METHOD delete
   METHOD extensionManager
   METHOD extension

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QExtensionFactory ( QExtensionManager * parent = 0 )
$constructor=|new|QExtensionManager *=0

$deleteMethod

$prototype=QExtensionManager * extensionManager () const
$method=|QExtensionManager *|extensionManager|

$prototype=virtual QObject * extension ( QObject * object, const QString & iid ) const
$virtualMethod=|QObject *|extension|QObject *,const QString &

#pragma ENDDUMP
