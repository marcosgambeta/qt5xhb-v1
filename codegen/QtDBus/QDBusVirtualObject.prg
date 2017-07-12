$header

#include "hbclass.ch"

CLASS QDBusVirtualObject INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD introspect
   METHOD handleMessage

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QDBusVirtualObject(QObject *parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
virtual QString introspect(const QString &path) const = 0
*/
$method=|QString|introspect|const QString &

/*
virtual bool handleMessage(const QDBusMessage &message, const QDBusConnection &connection) = 0
*/
$method=|bool|handleMessage|const QDBusMessage &,const QDBusConnection &

#pragma ENDDUMP
