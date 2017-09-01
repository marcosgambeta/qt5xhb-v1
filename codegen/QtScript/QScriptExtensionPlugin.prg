$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCRIPTVALUE
#endif

CLASS QScriptExtensionPlugin INHERIT QObject

   METHOD delete
   METHOD setupPackage
   METHOD initialize
   METHOD keys

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QScriptValue>

$deleteMethod

/*
QScriptValue setupPackage(const QString & key, QScriptEngine * engine) const
*/
$method=|QScriptValue|setupPackage|const QString &,QScriptEngine *

/*
virtual void initialize(const QString & key, QScriptEngine * engine) = 0
*/
$virtualMethod=|void|initialize|const QString &,QScriptEngine *

/*
virtual QStringList keys() const = 0
*/
$virtualMethod=|QStringList|keys|

#pragma ENDDUMP
