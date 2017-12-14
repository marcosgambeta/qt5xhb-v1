$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCRIPTSTRING
REQUEST QSCRIPTVALUE
#endif

CLASS QScriptClassPropertyIterator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD flags
   METHOD hasNext
   METHOD hasPrevious
   METHOD id
   METHOD name
   METHOD next
   METHOD object
   METHOD previous
   METHOD toBack
   METHOD toFront

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

$deleteMethod

$prototype=virtual QScriptValue::PropertyFlags flags() const
$virtualMethod=|QScriptValue::PropertyFlags|flags|

$prototype=virtual bool hasNext() const = 0
$virtualMethod=|bool|hasNext|

$prototype=virtual bool hasPrevious() const = 0
$virtualMethod=|bool|hasPrevious|

$prototype=virtual uint id() const
$virtualMethod=|uint|id|

$prototype=virtual QScriptString name() const = 0
$virtualMethod=|QScriptString|name|

$prototype=virtual void next() = 0
$virtualMethod=|void|next|

$prototype=QScriptValue object() const
$method=|QScriptValue|object|

$prototype=virtual void previous() = 0
$virtualMethod=|void|previous|

$prototype=virtual void toBack() = 0
$virtualMethod=|void|toBack|

$prototype=virtual void toFront() = 0
$virtualMethod=|void|toFront|

$extraMethods

#pragma ENDDUMP
