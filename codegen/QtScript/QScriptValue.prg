%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScript

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QDateTime>
#include <QtCore/QRegExp>
#include <QtCore/QVariant>

$prototype=QScriptValue()
$constructor=|new1|

$prototype=QScriptValue(const QScriptValue & other)
$constructor=|new2|const QScriptValue &

$prototype=QScriptValue(SpecialValue value)
$constructor=|new3|QScriptValue::SpecialValue

$prototype=QScriptValue(bool value)
$constructor=|new4|bool

$prototype=QScriptValue(int value)
$constructor=|new5|int

$prototype=QScriptValue(uint value)
$constructor=|new6|uint

$prototype=QScriptValue(qsreal value)
%% TODO: $constructor=|new7|qsreal

$prototype=QScriptValue(const QString & value)
$constructor=|new8|const QString &

$prototype=QScriptValue(const QLatin1String & value)
$constructor=|new9|const QLatin1String &

$prototype=QScriptValue(const char * value)
$constructor=|new10|const char *

/*
[1]QScriptValue()
[2]QScriptValue(const QScriptValue & other)
[3]QScriptValue(SpecialValue value)
[4]QScriptValue(bool value)
[5]QScriptValue(int value)
[6]QScriptValue(uint value)
[7]QScriptValue(qsreal value)
[8]QScriptValue(const QString & value)
[9]QScriptValue(const QLatin1String & value)
[10]QScriptValue(const char * value)
*/

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
$addMethod=new

$deleteMethod

$prototype=QScriptValue call(const QScriptValue & thisObject = QScriptValue(), const QScriptValueList & args = QScriptValueList())
%% TODO: $internalMethod=|QScriptValue|call,call1|const QScriptValue &=QScriptValue(),const QScriptValueList &=QScriptValueList()

$prototype=QScriptValue call(const QScriptValue & thisObject, const QScriptValue & arguments)
$internalMethod=|QScriptValue|call,call2|const QScriptValue &,const QScriptValue &

/*
[1]QScriptValue call(const QScriptValue & thisObject = QScriptValue(), const QScriptValueList & args = QScriptValueList())
[2]QScriptValue call(const QScriptValue & thisObject, const QScriptValue & arguments)
*/

HB_FUNC_STATIC( QSCRIPTVALUE_CALL )
{
%%  if( ISBETWEEN(0,2) && (ISQSCRIPTVALUE(1)||ISNIL(1)) && ISOPTARRAY(2) )
%%  {
%%    QScriptValue_call1();
%%  }
%%  else if( ISNUMPAR(2) && ISQSCRIPTVALUE(1) && ISQSCRIPTVALUE(2) )
  if( ISNUMPAR(2) && ISQSCRIPTVALUE(1) && ISQSCRIPTVALUE(2) )
  {
    QScriptValue_call2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=call

$prototype=QScriptValue construct(const QScriptValueList & args = QScriptValueList())
%% TODO: $internalMethod=|QScriptValue|construct,construct1|const QScriptValueList &=QScriptValueList()

$prototype=QScriptValue construct(const QScriptValue & arguments)
$internalMethod=|QScriptValue|construct,construct2|const QScriptValue &

/*
[1]QScriptValue construct(const QScriptValueList & args = QScriptValueList())
[2]QScriptValue construct(const QScriptValue & arguments)
*/

HB_FUNC_STATIC( QSCRIPTVALUE_CONSTRUCT )
{
%%  if( ISBETWEEN(0,1) && ISOPTARRAY(1) )
%%  {
%%    QScriptValue_construct1();
%%  }
%%  else if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
  if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
  {
    QScriptValue_construct2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=construct

$prototype=QScriptValue data() const
$method=|QScriptValue|data|

$prototype=QScriptEngine * engine() const
%% TODO: $method=|QScriptEngine *|engine|

$prototype=bool equals(const QScriptValue & other) const
$method=|bool|equals|const QScriptValue &

$prototype=bool instanceOf(const QScriptValue & other) const
$method=|bool|instanceOf|const QScriptValue &

$prototype=bool isArray() const
$method=|bool|isArray|

$prototype=bool isBool() const
$method=|bool|isBool|

$prototype=bool isDate() const
$method=|bool|isDate|

$prototype=bool isError() const
$method=|bool|isError|

$prototype=bool isFunction() const
$method=|bool|isFunction|

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=bool isNumber() const
$method=|bool|isNumber|

$prototype=bool isObject() const
$method=|bool|isObject|

$prototype=bool isQMetaObject() const
$method=|bool|isQMetaObject|

$prototype=bool isQObject() const
$method=|bool|isQObject|

$prototype=bool isRegExp() const
$method=|bool|isRegExp|

$prototype=bool isString() const
$method=|bool|isString|

$prototype=bool isUndefined() const
$method=|bool|isUndefined|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=bool isVariant() const
$method=|bool|isVariant|

$prototype=bool lessThan(const QScriptValue & other) const
$method=|bool|lessThan|const QScriptValue &

$prototype=QScriptValue property(const QString & name, const ResolveFlags & mode = ResolvePrototype) const
%% TODO: $internalMethod=|QScriptValue|property,property1|const QString &,const QScriptValue::ResolveFlags &=QScriptValue::ResolvePrototype

$prototype=QScriptValue property(const QScriptString & name, const ResolveFlags & mode = ResolvePrototype) const
%% TODO: $internalMethod=|QScriptValue|property,property2|const QScriptString &,const QScriptValue::ResolveFlags &=QScriptValue::ResolvePrototype

$prototype=QScriptValue property(quint32 arrayIndex, const ResolveFlags & mode = ResolvePrototype) const
%% TODO: $internalMethod=|QScriptValue|property,property3|quint32,const QScriptValue::ResolveFlags &=QScriptValue::ResolvePrototype

/*
[1]QScriptValue property(const QString & name, const ResolveFlags & mode = ResolvePrototype) const
[2]QScriptValue property(const QScriptString & name, const ResolveFlags & mode = ResolvePrototype) const
[3]QScriptValue property(quint32 arrayIndex, const ResolveFlags & mode = ResolvePrototype) const
*/

HB_FUNC_STATIC( QSCRIPTVALUE_PROPERTY )
{
%%  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
%%  {
%%    QScriptValue_property1();
%%  }
%%  else if( ISBETWEEN(1,2) && ISQSCRIPTSTRING(1) && ISOPTNUM(2) )
%%  {
%%    QScriptValue_property2();
%%  }
%%  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
%%  {
%%    QScriptValue_property3();
%%  }
%%  else
%%  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%  }
}
$addMethod=property

$prototype=QScriptValue::PropertyFlags propertyFlags(const QString & name, const ResolveFlags & mode = ResolvePrototype) const
%% TODO: $internalMethod=|QScriptValue::PropertyFlags|propertyFlags,propertyFlags1|const QString &,const QScriptValue::ResolveFlags &=QScriptValue::ResolvePrototype

$prototype=QScriptValue::PropertyFlags propertyFlags(const QScriptString & name, const ResolveFlags & mode = ResolvePrototype) const
%% TODO: $internalMethod=|QScriptValue::PropertyFlags|propertyFlags,propertyFlags2|const QScriptString &,const QScriptValue::ResolveFlags &=QScriptValue::ResolvePrototype

/*
[1]QScriptValue::PropertyFlags propertyFlags(const QString & name, const ResolveFlags & mode = ResolvePrototype) const
[2]QScriptValue::PropertyFlags propertyFlags(const QScriptString & name, const ResolveFlags & mode = ResolvePrototype) const
*/

HB_FUNC_STATIC( QSCRIPTVALUE_PROPERTYFLAGS )
{
%%  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
%%  {
%%    QScriptValue_propertyFlags1();
%%  }
%%  else if( ISBETWEEN(1,2) && ISQSCRIPTSTRING(1) && ISOPTNUM(2) )
%%  {
%%    QScriptValue_propertyFlags2();
%%  }
%%  else
%%  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%  }
}
$addMethod=propertyFlags

$prototype=QScriptValue prototype() const
$method=|QScriptValue|prototype|

$prototype=QScriptClass * scriptClass() const
$method=|QScriptClass *|scriptClass|

$prototype=void setData(const QScriptValue & data)
$method=|void|setData|const QScriptValue &

$prototype=void setProperty(const QString & name, const QScriptValue & value, const PropertyFlags & flags = KeepExistingFlags)
%% TODO: $internalMethod=|void|setProperty,setProperty1|const QString &,const QScriptValue &,const QScriptValue::PropertyFlags &=QScriptValue::KeepExistingFlags

$prototype=void setProperty(const QScriptString & name, const QScriptValue & value, const PropertyFlags & flags = KeepExistingFlags)
%% TODO: $internalMethod=|void|setProperty,setProperty2|const QScriptString &,const QScriptValue &,const QScriptValue::PropertyFlags &=QScriptValue::KeepExistingFlags

$prototype=void setProperty(quint32 arrayIndex, const QScriptValue & value, const PropertyFlags & flags = KeepExistingFlags)
%% TODO: $internalMethod=|void|setProperty,setProperty3|quint32,const QScriptValue &,const QScriptValue::PropertyFlags &=QScriptValue::KeepExistingFlags

/*
[1]void setProperty(const QString & name, const QScriptValue & value, const PropertyFlags & flags = KeepExistingFlags)
[2]void setProperty(const QScriptString & name, const QScriptValue & value, const PropertyFlags & flags = KeepExistingFlags)
[3]void setProperty(quint32 arrayIndex, const QScriptValue & value, const PropertyFlags & flags = KeepExistingFlags)
*/

HB_FUNC_STATIC( QSCRIPTVALUE_SETPROPERTY )
{
%%  if( ISBETWEEN(2,3) && ISCHAR(1) && ISQSCRIPTVALUE(2) && ISOPTNUM(3) )
%%  {
%%    QScriptValue_setProperty1();
%%  }
%%  else if( ISBETWEEN(2,3) && ISQSCRIPTSTRING(1) && ISQSCRIPTVALUE(2) && ISOPTNUM(3) )
%%  {
%%    QScriptValue_setProperty2();
%%  }
%%  else if( ISBETWEEN(2,3) && ISNUM(1) && ISQSCRIPTVALUE(2) && ISOPTNUM(3) )
%%  {
%%    QScriptValue_setProperty3();
%%  }
%%  else
%%  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%  }
}
$addMethod=setProperty

$prototype=void setPrototype(const QScriptValue & prototype)
$method=|void|setPrototype|const QScriptValue &

$prototype=void setScriptClass(QScriptClass * scriptClass)
$method=|void|setScriptClass|QScriptClass *

$prototype=bool strictlyEquals(const QScriptValue & other) const
$method=|bool|strictlyEquals|const QScriptValue &

$prototype=bool toBool() const
$method=|bool|toBool|

$prototype=QDateTime toDateTime() const
$method=|QDateTime|toDateTime|

$prototype=qint32 toInt32() const
$method=|qint32|toInt32|

$prototype=qsreal toInteger() const
%% TODO: $method=|qsreal|toInteger|

$prototype=qsreal toNumber() const
%% TODO: $method=|qsreal|toNumber|

$prototype=const QMetaObject * toQMetaObject() const
$method=|const QMetaObject *|toQMetaObject|

$prototype=QObject * toQObject() const
$method=|QObject *|toQObject|

$prototype=QRegExp toRegExp() const
$method=|QRegExp|toRegExp|

$prototype=QString toString() const
$method=|QString|toString|

$prototype=quint16 toUInt16() const
$method=|quint16|toUInt16|

$prototype=quint32 toUInt32() const
$method=|quint32|toUInt32|

$prototype=QVariant toVariant() const
$method=|QVariant|toVariant|

$extraMethods

#pragma ENDDUMP
