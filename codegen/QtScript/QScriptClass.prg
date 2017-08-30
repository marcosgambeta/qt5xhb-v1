$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCRIPTENGINE
REQUEST QVARIANT
REQUEST QSCRIPTCLASSPROPERTYITERATOR
REQUEST QSCRIPTVALUE
#endif

CLASS QScriptClass

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD engine
   METHOD extension
   METHOD name
   METHOD newIterator
   METHOD property
   METHOD propertyFlags
   METHOD prototype
   METHOD queryProperty
   METHOD setProperty
   METHOD supportsExtension

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

/*
QScriptClass(QScriptEngine * engine)
*/
$constructor=|new|QScriptEngine *

$deleteMethod

/*
QScriptEngine * engine() const
*/
$method=|QScriptEngine *|engine|

/*
virtual QVariant extension(Extension extension, const QVariant & argument = QVariant())
*/
$virtualMethod=|QVariant|extension|QScriptClass::Extension,const QVariant &=QVariant()

/*
virtual QString name() const
*/
$virtualMethod=|QString|name|

/*
virtual QScriptClassPropertyIterator * newIterator(const QScriptValue & object)
*/
$virtualMethod=|QScriptClassPropertyIterator *|newIterator|const QScriptValue &

/*
virtual QScriptValue property(const QScriptValue & object, const QScriptString & name, uint id)
*/
$virtualMethod=|QScriptValue|property|const QScriptValue &,const QScriptString &,uint

/*
virtual QScriptValue::PropertyFlags propertyFlags(const QScriptValue & object, const QScriptString & name, uint id)
*/
$virtualMethod=|QScriptValue::PropertyFlags|propertyFlags|const QScriptValue &,const QScriptString &,uint

/*
virtual QScriptValue prototype() const
*/
$virtualMethod=|QScriptValue|prototype|

/*
virtual QueryFlags queryProperty(const QScriptValue & object, const QScriptString & name, QueryFlags flags, uint * id)
*/
$virtualMethod=|QScriptClass::QueryFlags|queryProperty|const QScriptValue &,const QScriptString &,QScriptClass::QueryFlags,uint *

/*
virtual void setProperty(QScriptValue & object, const QScriptString & name, uint id, const QScriptValue & value)
*/
$virtualMethod=|void|setProperty|QScriptValue &,const QScriptString &,uint,const QScriptValue &

/*
virtual bool supportsExtension(Extension extension) const
*/
$virtualMethod=|bool|supportsExtension|QScriptClass::Extension

$extraMethods

#pragma ENDDUMP
