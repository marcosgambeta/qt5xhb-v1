$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QJSONARRAY
REQUEST QJSONOBJECT
#endif

CLASS QJsonValueRef

   DATA pointer
   DATA self_destruction INIT .F.

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

#include <QJsonArray>
#include <QJsonObject>

/*
QJsonValueRef(QJsonArray *array, int idx)
*/
$internalConstructor=|new1|QJsonArray *,int

/*
QJsonValueRef(QJsonObject *object, int idx)
*/
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

/*
QJsonValue::Type type() const
*/
$method=|QJsonValue::Type|type|

/*
bool isNull() const
*/
$method=|bool|isNull|

/*
bool isBool() const
*/
$method=|bool|isBool|

/*
bool isDouble() const
*/
$method=|bool|isDouble|

/*
bool isString() const
*/
$method=|bool|isString|

/*
bool isArray() const
*/
$method=|bool|isArray|

/*
bool isObject() const
*/
$method=|bool|isObject|

/*
bool isUndefined() const
*/
$method=|bool|isUndefined|

/*
bool toBool() const
*/
$method=|bool|toBool|

/*
int toInt() const
*/
$method=|int|toInt|

/*
double toDouble() const
*/
$method=|double|toDouble|

/*
QString toString() const
*/
$method=|QString|toString|

/*
QJsonArray toArray() const
*/
$method=|QJsonArray|toArray|

/*
QJsonObject toObject() const
*/
$method=|QJsonObject|toObject|

$extraMethods

#pragma ENDDUMP
