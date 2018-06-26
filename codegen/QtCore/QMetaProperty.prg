%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMetaProperty()
$constructor=|new|

$deleteMethod

$prototype=const char *name() const
$method=|const char *|name|

$prototype=const char *typeName() const
$method=|const char *|typeName|

$prototype=QVariant::Type type() const
$method=|QVariant::Type|type|

$prototype=int userType() const
$method=|int|userType|

$prototype=int propertyIndex() const
$method=|int|propertyIndex|

$prototype=bool isReadable() const
$method=|bool|isReadable|

$prototype=bool isWritable() const
$method=|bool|isWritable|

$prototype=bool isResettable() const
$method=|bool|isResettable|

$prototype=bool isDesignable(const QObject *obj = 0) const
$method=|bool|isDesignable|const QObject *=0

$prototype=bool isScriptable(const QObject *obj = 0) const
$method=|bool|isScriptable|const QObject *=0

$prototype=bool isStored(const QObject *obj = 0) const
$method=|bool|isStored|const QObject *=0

$prototype=bool isEditable(const QObject *obj = 0) const
$method=|bool|isEditable|const QObject *=0

$prototype=bool isUser(const QObject *obj = 0) const
$method=|bool|isUser|const QObject *=0

$prototype=bool isConstant() const
$method=|bool|isConstant|

$prototype=bool isFinal() const
$method=|bool|isFinal|

$prototype=bool isFlagType() const
$method=|bool|isFlagType|

$prototype=bool isEnumType() const
$method=|bool|isEnumType|

$prototype=QMetaEnum enumerator() const
$method=|QMetaEnum|enumerator|

$prototype=bool hasNotifySignal() const
$method=|bool|hasNotifySignal|

$prototype=QMetaMethod notifySignal() const
$method=|QMetaMethod|notifySignal|

$prototype=int notifySignalIndex() const
$method=|int|notifySignalIndex|

$prototype=int revision() const
$method=|int|revision|

$prototype=QVariant read(const QObject *obj) const
$method=|QVariant|read|const QObject *

$prototype=bool write(QObject *obj, const QVariant &value) const
$method=|bool|write|QObject *,const QVariant &

$prototype=bool reset(QObject *obj) const
$method=|bool|reset|QObject *

$prototype=bool hasStdCppSet() const
$method=|bool|hasStdCppSet|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=const QMetaObject *enclosingMetaObject() const
$method=|const QMetaObject *|enclosingMetaObject|

$extraMethods

#pragma ENDDUMP
