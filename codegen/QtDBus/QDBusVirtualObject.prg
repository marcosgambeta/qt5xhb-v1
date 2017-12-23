$header

#include "hbclass.ch"

CLASS QDBusVirtualObject INHERIT QObject

   METHOD new
   METHOD delete
   METHOD introspect
   METHOD handleMessage

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QDBusVirtualObject(QObject *parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=virtual QString introspect(const QString &path) const = 0
$virtualMethod=|QString|introspect|const QString &

$prototype=virtual bool handleMessage(const QDBusMessage &message, const QDBusConnection &connection) = 0
$virtualMethod=|bool|handleMessage|const QDBusMessage &,const QDBusConnection &

#pragma ENDDUMP
