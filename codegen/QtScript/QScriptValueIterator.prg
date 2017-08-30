$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCRIPTSTRING
REQUEST QSCRIPTVALUE
#endif

CLASS QScriptValueIterator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD flags
   METHOD hasNext
   METHOD hasPrevious
   METHOD name
   METHOD next
   METHOD previous
   METHOD remove
   METHOD scriptName
   METHOD setValue
   METHOD toBack
   METHOD toFront
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QScriptString>

/*
QScriptValueIterator(const QScriptValue & object)
*/
$constructor=|new|const QScriptValue &

$deleteMethod

/*
QScriptValue::PropertyFlags flags() const
*/
$method=|QScriptValue::PropertyFlags|flags|

/*
bool hasNext() const
*/
$method=|bool|hasNext|

/*
bool hasPrevious() const
*/
$method=|bool|hasPrevious|

/*
QString name() const
*/
$method=|QString|name|

/*
void next()
*/
$method=|void|next|

/*
void previous()
*/
$method=|void|previous|

/*
void remove()
*/
$method=|void|remove|

/*
QScriptString scriptName() const
*/
$method=|QScriptString|scriptName|

/*
void setValue(const QScriptValue & value)
*/
$method=|void|setValue|const QScriptValue &

/*
void toBack()
*/
$method=|void|toBack|

/*
void toFront()
*/
$method=|void|toFront|

/*
QScriptValue value() const
*/
$method=|QScriptValue|value|

$extraMethods

#pragma ENDDUMP
