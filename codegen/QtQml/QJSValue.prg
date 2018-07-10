%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QDateTime>
#include <QVariant>

$prototype=QJSValue(SpecialValue value = UndefinedValue)
$constructor=|new1|QJSValue::SpecialValue=QJSValue::UndefinedValue

$prototype=QJSValue(const QJSValue & other)
$internalConstructor=|new2|const QJSValue &

$prototype=QJSValue(bool value)
$internalConstructor=|new3|bool

$prototype=QJSValue(int value)
$constructor=|new4|int

$prototype=QJSValue(uint value)
$constructor=|new5|uint

$prototype=QJSValue(double value)
$constructor=|new6|double

$prototype=QJSValue(const QString & value)
$constructor=|new7|const QString &

$prototype=QJSValue(const QLatin1String & value)
$internalConstructor=|new8|const QLatin1String &

$prototype=QJSValue(const char * value)
$constructor=|new9|const char *

//[1]QJSValue(SpecialValue value = UndefinedValue)
//[2]QJSValue(const QJSValue & other)
//[3]QJSValue(bool value)
//[4]QJSValue(int value)
//[5]QJSValue(uint value)
//[6]QJSValue(double value)
//[7]QJSValue(const QString & value)
//[8]QJSValue(const QLatin1String & value)
//[9]QJSValue(const char * value)

%% TODO: resolver conflitos
HB_FUNC_STATIC( QJSVALUE_NEW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QJSVALUE_NEW1 );
    //HB_FUNC_EXEC( QJSVALUE_NEW4 );
    //HB_FUNC_EXEC( QJSVALUE_NEW5 );
    //HB_FUNC_EXEC( QJSVALUE_NEW6 );
  }
  else if( ISNUMPAR(1) && ISQJSVALUE(1) )
  {
    QJSValue_new2();
  }
  else if( ISNUMPAR(1) && ISLOG(1) )
  {
    QJSValue_new3();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QJSVALUE_NEW7 );
    //HB_FUNC_EXEC( QJSVALUE_NEW9 );
  }
  else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  {
    QJSValue_new8();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool deleteProperty(const QString & name)
$method=|bool|deleteProperty|const QString &

$prototype=bool equals(const QJSValue & other) const
$method=|bool|equals|const QJSValue &

$prototype=bool hasOwnProperty(const QString & name) const
$method=|bool|hasOwnProperty|const QString &

$prototype=bool hasProperty(const QString & name) const
$method=|bool|hasProperty|const QString &

$prototype=bool isArray() const
$method=|bool|isArray|

$prototype=bool isBool() const
$method=|bool|isBool|

$prototype=bool isCallable() const
$method=|bool|isCallable|

$prototype=bool isDate() const
$method=|bool|isDate|

$prototype=bool isError() const
$method=|bool|isError|

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=bool isNumber() const
$method=|bool|isNumber|

$prototype=bool isObject() const
$method=|bool|isObject|

$prototype=bool isQObject() const
$method=|bool|isQObject|

$prototype=bool isRegExp() const
$method=|bool|isRegExp|

$prototype=bool isString() const
$method=|bool|isString|

$prototype=bool isUndefined() const
$method=|bool|isUndefined|

$prototype=bool isVariant() const
$method=|bool|isVariant|

$prototype=QJSValue property(const QString & name) const
$internalMethod=|QJSValue|property,property1|const QString &

$prototype=QJSValue property(quint32 arrayIndex) const
$internalMethod=|QJSValue|property,property2|quint32

//[1]QJSValue property(const QString & name) const
//[2]QJSValue property(quint32 arrayIndex) const

HB_FUNC_STATIC( QJSVALUE_PROPERTY )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QJSValue_property1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QJSValue_property2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QJSValue prototype() const
$method=|QJSValue|prototype|

$prototype=void setProperty(const QString & name, const QJSValue & value)
$internalMethod=|void|setProperty,setProperty1|const QString &,const QJSValue &

$prototype=void setProperty(quint32 arrayIndex, const QJSValue & value)
$internalMethod=|void|setProperty,setProperty2|quint32,const QJSValue &

//[1]void setProperty(const QString & name, const QJSValue & value)
//[2]void setProperty(quint32 arrayIndex, const QJSValue & value)

HB_FUNC_STATIC( QJSVALUE_SETPROPERTY )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISQJSVALUE(2) )
  {
    QJSValue_setProperty1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQJSVALUE(2) )
  {
    QJSValue_setProperty2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setPrototype(const QJSValue & prototype)
$method=|void|setPrototype|const QJSValue &

$prototype=bool strictlyEquals(const QJSValue & other) const
$method=|bool|strictlyEquals|const QJSValue &

$prototype=bool toBool() const
$method=|bool|toBool|

$prototype=QDateTime toDateTime() const
$method=|QDateTime|toDateTime|

$prototype=qint32 toInt() const
$method=|qint32|toInt|

$prototype=double toNumber() const
$method=|double|toNumber|

$prototype=QObject * toQObject() const
$method=|QObject *|toQObject|

$prototype=QString toString() const
$method=|QString|toString|

$prototype=quint32 toUInt() const
$method=|quint32|toUInt|

$prototype=QVariant toVariant() const
$method=|QVariant|toVariant|

$extraMethods

#pragma ENDDUMP
