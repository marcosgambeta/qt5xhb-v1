$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMETAENUM
REQUEST QMETAMETHOD
REQUEST QVARIANT
REQUEST QMETAOBJECT
#endif

CLASS QMetaProperty

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD name
   METHOD typeName
   METHOD type
   METHOD userType
   METHOD propertyIndex
   METHOD isReadable
   METHOD isWritable
   METHOD isResettable
   METHOD isDesignable
   METHOD isScriptable
   METHOD isStored
   METHOD isEditable
   METHOD isUser
   METHOD isConstant
   METHOD isFinal
   METHOD isFlagType
   METHOD isEnumType
   METHOD enumerator
   METHOD hasNotifySignal
   METHOD notifySignal
   METHOD notifySignalIndex
   METHOD revision
   METHOD read
   METHOD write
   METHOD reset
   METHOD hasStdCppSet
   METHOD isValid
   METHOD enclosingMetaObject

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
QMetaProperty()
*/
$constructor=|new|

$deleteMethod

/*
const char *name() const
*/
$method=|const char *|name|

/*
const char *typeName() const
*/
$method=|const char *|typeName|

/*
QVariant::Type type() const
*/
$method=|QVariant::Type|type|

/*
int userType() const
*/
$method=|int|userType|

/*
int propertyIndex() const
*/
$method=|int|propertyIndex|

/*
bool isReadable() const
*/
$method=|bool|isReadable|

/*
bool isWritable() const
*/
$method=|bool|isWritable|

/*
bool isResettable() const
*/
$method=|bool|isResettable|

/*
bool isDesignable(const QObject *obj = 0) const
*/
$method=|bool|isDesignable|const QObject *=0

/*
bool isScriptable(const QObject *obj = 0) const
*/
$method=|bool|isScriptable|const QObject *=0

/*
bool isStored(const QObject *obj = 0) const
*/
$method=|bool|isStored|const QObject *=0

/*
bool isEditable(const QObject *obj = 0) const
*/
$method=|bool|isEditable|const QObject *=0

/*
bool isUser(const QObject *obj = 0) const
*/
$method=|bool|isUser|const QObject *=0

/*
bool isConstant() const
*/
$method=|bool|isConstant|

/*
bool isFinal() const
*/
$method=|bool|isFinal|

/*
bool isFlagType() const
*/
$method=|bool|isFlagType|

/*
bool isEnumType() const
*/
$method=|bool|isEnumType|

/*
QMetaEnum enumerator() const
*/
$method=|QMetaEnum|enumerator|

/*
bool hasNotifySignal() const
*/
$method=|bool|hasNotifySignal|

/*
QMetaMethod notifySignal() const
*/
$method=|QMetaMethod|notifySignal|

/*
int notifySignalIndex() const
*/
$method=|int|notifySignalIndex|

/*
int revision() const
*/
$method=|int|revision|

/*
QVariant read(const QObject *obj) const
*/
$method=|QVariant|read|const QObject *

/*
bool write(QObject *obj, const QVariant &value) const
*/
$method=|bool|write|QObject *,const QVariant &

/*
bool reset(QObject *obj) const
*/
$method=|bool|reset|QObject *

/*
bool hasStdCppSet() const
*/
$method=|bool|hasStdCppSet|

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
const QMetaObject *enclosingMetaObject() const
*/
$method=|const QMetaObject *|enclosingMetaObject|

$extraMethods

#pragma ENDDUMP
