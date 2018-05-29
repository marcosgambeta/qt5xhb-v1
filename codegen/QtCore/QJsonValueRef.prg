%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete
   METHOD type
   METHOD isNull
   METHOD isBool
   METHOD isDouble
   METHOD isString
   METHOD isArray
   METHOD isObject
   METHOD isUndefined
   METHOD toBool
   METHOD toInt
   METHOD toDouble
   METHOD toString
   METHOD toArray
   METHOD toObject

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QJsonArray>
#include <QJsonObject>

$prototype=QJsonValueRef(QJsonArray *array, int idx)
$internalConstructor=|new1|QJsonArray *,int

$prototype=QJsonValueRef(QJsonObject *object, int idx)
$internalConstructor=|new2|QJsonObject *,int

//[1]QJsonValueRef(QJsonArray *array, int idx)
//[2]QJsonValueRef(QJsonObject *object, int idx)

HB_FUNC_STATIC( QJSONVALUEREF_NEW )
{
  if( ISNUMPAR(2) && ISQJSONARRAY(1) && ISNUM(2) )
  {
    QJsonValueRef_new1();
  }
  else if( ISNUMPAR(2) && ISQJSONOBJECT(1) && ISNUM(2) )
  {
    QJsonValueRef_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QJsonValue::Type type() const
$method=|QJsonValue::Type|type|

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=bool isBool() const
$method=|bool|isBool|

$prototype=bool isDouble() const
$method=|bool|isDouble|

$prototype=bool isString() const
$method=|bool|isString|

$prototype=bool isArray() const
$method=|bool|isArray|

$prototype=bool isObject() const
$method=|bool|isObject|

$prototype=bool isUndefined() const
$method=|bool|isUndefined|

$prototype=bool toBool() const
$method=|bool|toBool|

$prototype=int toInt() const
$method=|int|toInt|

$prototype=double toDouble() const
$method=|double|toDouble|

$prototype=QString toString() const
$method=|QString|toString|

$prototype=QJsonArray toArray() const
$method=|QJsonArray|toArray|

$prototype=QJsonObject toObject() const
$method=|QJsonObject|toObject|

$extraMethods

#pragma ENDDUMP
