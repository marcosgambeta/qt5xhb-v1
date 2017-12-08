$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMETAOBJECT
#endif

CLASS QDBusInterface INHERIT QDBusAbstractInterface

   METHOD new
   METHOD delete
   METHOD metaObject
   METHOD qt_metacast
   METHOD qt_metacall

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDBusInterface(const QString &service, const QString &path, const QString &interface = QString(),const QDBusConnection &connection = QDBusConnection::sessionBus(),QObject *parent = 0)
$constructor=|new|const QString &,const QString &,const QString &=QString(),const QDBusConnection &=QDBusConnection::sessionBus(),QObject *=0

$deleteMethod

$prototype=virtual const QMetaObject *metaObject() const
$method=|const QMetaObject *|metaObject|

$prototype=virtual void * qt_metacast ( const char * )
$method=|void *|qt_metacast|const char *

$prototype=virtual int qt_metacall(QMetaObject::Call, int, void **)
$method=|int|qt_metacall|QMetaObject::Call,int,void **

#pragma ENDDUMP
