%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDBusAbstractInterface

   METHOD new
   METHOD delete
   METHOD metaObject
   METHOD qt_metacast
%%   METHOD qt_metacall

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDBusInterface(const QString &service, const QString &path, const QString &interface = QString(),const QDBusConnection &connection = QDBusConnection::sessionBus(),QObject *parent = 0)
$constructor=|new|const QString &,const QString &,const QString &=QString(),const QDBusConnection &=QDBusConnection::sessionBus(),QObject *=0

$deleteMethod

$prototype=virtual const QMetaObject *metaObject() const
$virtualMethod=|const QMetaObject *|metaObject|

$prototype=virtual void * qt_metacast ( const char * )
$virtualMethod=|void *|qt_metacast|const char *

$prototype=virtual int qt_metacall(QMetaObject::Call, int, void **)
%% TODO: implementar
%% $virtualMethod=|int|qt_metacall|QMetaObject::Call,int,void **

#pragma ENDDUMP
