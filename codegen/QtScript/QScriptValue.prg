$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCRIPTENGINE
REQUEST QSCRIPTCLASS
REQUEST QDATETIME
REQUEST QMETAOBJECT
REQUEST QOBJECT
REQUEST QREGEXP
REQUEST QVARIANT
#endif

CLASS QScriptValue

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new9
   METHOD new10
   METHOD new
   METHOD delete
   METHOD call
   METHOD construct
   METHOD data
   METHOD engine
   METHOD equals
   METHOD instanceOf
   METHOD isArray
   METHOD isBool
   METHOD isDate
   METHOD isError
   METHOD isFunction
   METHOD isNull
   METHOD isNumber
   METHOD isObject
   METHOD isQMetaObject
   METHOD isQObject
   METHOD isRegExp
   METHOD isString
   METHOD isUndefined
   METHOD isValid
   METHOD isVariant
   METHOD lessThan
   METHOD property
   METHOD propertyFlags
   METHOD prototype
   METHOD scriptClass
   METHOD setData
   METHOD setProperty
   METHOD setPrototype
   METHOD setScriptClass
   METHOD strictlyEquals
   METHOD toBool
   METHOD toDateTime
   METHOD toInt32
   METHOD toInteger
   METHOD toNumber
   METHOD toQMetaObject
   METHOD toQObject
   METHOD toRegExp
   METHOD toString
   METHOD toUInt16
   METHOD toUInt32
   METHOD toVariant

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

#include <QDateTime>
#include <QRegExp>
#include <QVariant>

/*
QScriptValue()
*/
$constructor=|new1|

/*
QScriptValue(const QScriptValue & other)
*/
$constructor=|new2|const QScriptValue &

/*
QScriptValue(SpecialValue value)
*/
$constructor=|new3|QScriptValue::SpecialValue

/*
QScriptValue(bool value)
*/
$constructor=|new4|bool

/*
QScriptValue(int value)
*/
$constructor=|new5|int

/*
QScriptValue(uint value)
*/
$constructor=|new6|uint

/*
QScriptValue(qsreal value)
*/
$constructor=|new7|qsreal

/*
QScriptValue(const QString & value)
*/
$constructor=|new8|const QString &

/*
QScriptValue(const QLatin1String & value)
*/
$constructor=|new9|const QLatin1String &

/*
QScriptValue(const char * value)
*/
$constructor=|new10|const char *

//[1]QScriptValue()
//[2]QScriptValue(const QScriptValue & other)
//[3]QScriptValue(SpecialValue value)
//[4]QScriptValue(bool value)
//[5]QScriptValue(int value)
//[6]QScriptValue(uint value)
//[7]QScriptValue(qsreal value)
//[8]QScriptValue(const QString & value)
//[9]QScriptValue(const QLatin1String & value)
//[10]QScriptValue(const char * value)

%% TODO: resolver conflitos

HB_FUNC_STATIC( QSCRIPTVALUE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
%% TODO: como identificar inteiros e fracionarios ?
%% HB_FUNC_EXEC( QSCRIPTVALUE_NEW3 );
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW5 );
%% HB_FUNC_EXEC( QSCRIPTVALUE_NEW6 );
%% HB_FUNC_EXEC( QSCRIPTVALUE_NEW7 );
  }
  else if( ISNUMPAR(1) && ISLOG(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW4 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW8 );
%% HB_FUNC_EXEC( QSCRIPTVALUE_NEW9 );
%% HB_FUNC_EXEC( QSCRIPTVALUE_NEW10 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QScriptValue call(const QScriptValue & thisObject = QScriptValue(), const QScriptValueList & args = QScriptValueList())
*/
$internalMethod=|QScriptValue|call,call1|const QScriptValue &=QScriptValue(),const QScriptValueList &=QScriptValueList()

/*
QScriptValue call(const QScriptValue & thisObject, const QScriptValue & arguments)
*/
$internalMethod=|QScriptValue|call,call2|const QScriptValue &,const QScriptValue &

//[1]QScriptValue call(const QScriptValue & thisObject = QScriptValue(), const QScriptValueList & args = QScriptValueList())
//[2]QScriptValue call(const QScriptValue & thisObject, const QScriptValue & arguments)

HB_FUNC_STATIC( QSCRIPTVALUE_CALL )
{
  if( ISBETWEEN(0,2) && (ISQSCRIPTVALUE(1)||ISNIL(1)) && ISOPTARRAY(2) )
  {
    QScriptValue_call1();
  }
  else if( ISNUMPAR(2) && ISQSCRIPTVALUE(1) && ISQSCRIPTVALUE(2) )
  {
    QScriptValue_call2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue construct(const QScriptValueList & args = QScriptValueList())
*/
$internalMethod=|QScriptValue|construct,construct1|const QScriptValueList &=QScriptValueList()

/*
QScriptValue construct(const QScriptValue & arguments)
*/
$internalMethod=|QScriptValue|construct,construct2|const QScriptValue &

//[1]QScriptValue construct(const QScriptValueList & args = QScriptValueList())
//[2]QScriptValue construct(const QScriptValue & arguments)

HB_FUNC_STATIC( QSCRIPTVALUE_CONSTRUCT )
{
  if( ISBETWEEN(0,1) && ISOPTARRAY(1) )
  {
    QScriptValue_construct1();
  }
  else if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
  {
    QScriptValue_construct2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue data() const
*/
$method=|QScriptValue|data|

/*
QScriptEngine * engine() const
*/
$method=|QScriptEngine *|engine|

/*
bool equals(const QScriptValue & other) const
*/
$method=|bool|equals|const QScriptValue &

/*
bool instanceOf(const QScriptValue & other) const
*/
$method=|bool|instanceOf|const QScriptValue &

/*
bool isArray() const
*/
$method=|bool|isArray|

/*
bool isBool() const
*/
$method=|bool|isBool|

/*
bool isDate() const
*/
$method=|bool|isDate|

/*
bool isError() const
*/
$method=|bool|isError|

/*
bool isFunction() const
*/
$method=|bool|isFunction|

/*
bool isNull() const
*/
$method=|bool|isNull|

/*
bool isNumber() const
*/
$method=|bool|isNumber|

/*
bool isObject() const
*/
$method=|bool|isObject|

/*
bool isQMetaObject() const
*/
$method=|bool|isQMetaObject|

/*
bool isQObject() const
*/
$method=|bool|isQObject|

/*
bool isRegExp() const
*/
$method=|bool|isRegExp|

/*
bool isString() const
*/
$method=|bool|isString|

/*
bool isUndefined() const
*/
$method=|bool|isUndefined|

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
bool isVariant() const
*/
$method=|bool|isVariant|

/*
bool lessThan(const QScriptValue & other) const
*/
$method=|bool|lessThan|const QScriptValue &

/*
QScriptValue property(const QString & name, const ResolveFlags & mode = ResolvePrototype) const
*/
$internalMethod=|QScriptValue|property,property1|const QString &,const QScriptValue::ResolveFlags &=QScriptValue::ResolvePrototype

/*
QScriptValue property(const QScriptString & name, const ResolveFlags & mode = ResolvePrototype) const
*/
$internalMethod=|QScriptValue|property,property2|const QScriptString &,const QScriptValue::ResolveFlags &=QScriptValue::ResolvePrototype

/*
QScriptValue property(quint32 arrayIndex, const ResolveFlags & mode = ResolvePrototype) const
*/
$internalMethod=|QScriptValue|property,property3|quint32,const QScriptValue::ResolveFlags &=QScriptValue::ResolvePrototype

//[1]QScriptValue property(const QString & name, const ResolveFlags & mode = ResolvePrototype) const
//[2]QScriptValue property(const QScriptString & name, const ResolveFlags & mode = ResolvePrototype) const
//[3]QScriptValue property(quint32 arrayIndex, const ResolveFlags & mode = ResolvePrototype) const

HB_FUNC_STATIC( QSCRIPTVALUE_PROPERTY )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QScriptValue_property1();
  }
  else if( ISBETWEEN(1,2) && ISQSCRIPTSTRING(1) && ISOPTNUM(2) )
  {
    QScriptValue_property2();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QScriptValue_property3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue::PropertyFlags propertyFlags(const QString & name, const ResolveFlags & mode = ResolvePrototype) const
*/
$internalMethod=|QScriptValue::PropertyFlags|propertyFlags,propertyFlags1|const QString &,const QScriptValue::ResolveFlags &=QScriptValue::ResolvePrototype

/*
QScriptValue::PropertyFlags propertyFlags(const QScriptString & name, const ResolveFlags & mode = ResolvePrototype) const
*/
$internalMethod=|QScriptValue::PropertyFlags|propertyFlags,propertyFlags2|const QScriptString &,const QScriptValue::ResolveFlags &=QScriptValue::ResolvePrototype

//[1]QScriptValue::PropertyFlags propertyFlags(const QString & name, const ResolveFlags & mode = ResolvePrototype) const
//[2]QScriptValue::PropertyFlags propertyFlags(const QScriptString & name, const ResolveFlags & mode = ResolvePrototype) const

HB_FUNC_STATIC( QSCRIPTVALUE_PROPERTYFLAGS )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QScriptValue_propertyFlags1();
  }
  else if( ISBETWEEN(1,2) && ISQSCRIPTSTRING(1) && ISOPTNUM(2) )
  {
    QScriptValue_propertyFlags2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue prototype() const
*/
$method=|QScriptValue|prototype|

/*
QScriptClass * scriptClass() const
*/
$method=|QScriptClass *|scriptClass|

/*
void setData(const QScriptValue & data)
*/
$method=|void|setData|const QScriptValue &

/*
void setProperty(const QString & name, const QScriptValue & value, const PropertyFlags & flags = KeepExistingFlags)
*/
$internalMethod=|void|setProperty,setProperty1|const QString &,const QScriptValue &,const QScriptValue::PropertyFlags &=QScriptValue::KeepExistingFlags

/*
void setProperty(const QScriptString & name, const QScriptValue & value, const PropertyFlags & flags = KeepExistingFlags)
*/
$internalMethod=|void|setProperty,setProperty2|const QScriptString &,const QScriptValue &,const QScriptValue::PropertyFlags &=QScriptValue::KeepExistingFlags

/*
void setProperty(quint32 arrayIndex, const QScriptValue & value, const PropertyFlags & flags = KeepExistingFlags)
*/
$internalMethod=|void|setProperty,setProperty3|quint32,const QScriptValue &,const QScriptValue::PropertyFlags &=QScriptValue::KeepExistingFlags

//[1]void setProperty(const QString & name, const QScriptValue & value, const PropertyFlags & flags = KeepExistingFlags)
//[2]void setProperty(const QScriptString & name, const QScriptValue & value, const PropertyFlags & flags = KeepExistingFlags)
//[3]void setProperty(quint32 arrayIndex, const QScriptValue & value, const PropertyFlags & flags = KeepExistingFlags)

HB_FUNC_STATIC( QSCRIPTVALUE_SETPROPERTY )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISQSCRIPTVALUE(2) && ISOPTNUM(3) )
  {
    QScriptValue_setProperty1();
  }
  else if( ISBETWEEN(2,3) && ISQSCRIPTSTRING(1) && ISQSCRIPTVALUE(2) && ISOPTNUM(3) )
  {
    QScriptValue_setProperty2();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISQSCRIPTVALUE(2) && ISOPTNUM(3) )
  {
    QScriptValue_setProperty3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPrototype(const QScriptValue & prototype)
*/
$method=|void|setPrototype|const QScriptValue &

/*
void setScriptClass(QScriptClass * scriptClass)
*/
$method=|void|setScriptClass|QScriptClass *

/*
bool strictlyEquals(const QScriptValue & other) const
*/
$method=|bool|strictlyEquals|const QScriptValue &

/*
bool toBool() const
*/
$method=|bool|toBool|

/*
QDateTime toDateTime() const
*/
$method=|QDateTime|toDateTime|

/*
qint32 toInt32() const
*/
$method=|qint32|toInt32|

/*
qsreal toInteger() const
*/
$method=|qsreal|toInteger|

/*
qsreal toNumber() const
*/
$method=|qsreal|toNumber|

/*
const QMetaObject * toQMetaObject() const
*/
$method=|const QMetaObject *|toQMetaObject|

/*
QObject * toQObject() const
*/
$method=|QObject *|toQObject|

/*
QRegExp toRegExp() const
*/
$method=|QRegExp|toRegExp|

/*
QString toString() const
*/
$method=|QString|toString|

/*
quint16 toUInt16() const
*/
$method=|quint16|toUInt16|

/*
quint32 toUInt32() const
*/
$method=|quint32|toUInt32|

/*
QVariant toVariant() const
*/
$method=|QVariant|toVariant|

$extraMethods

#pragma ENDDUMP
