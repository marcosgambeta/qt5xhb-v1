$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QJSONARRAY
REQUEST QJSONOBJECT
REQUEST QVARIANT
#endif

CLASS QJsonValue

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new9
   METHOD new
   METHOD delete
   METHOD isArray
   METHOD isBool
   METHOD isDouble
   METHOD isNull
   METHOD isObject
   METHOD isString
   METHOD isUndefined
   METHOD toArray
   METHOD toBool
   METHOD toDouble
   METHOD toObject
   METHOD toString
   METHOD toVariant
   METHOD type
   METHOD fromVariant

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
#include <QVariant>

/*
QJsonValue(Type type = Null)
*/
$constructor=|new1|QJsonValue::Type=QJsonValue::Null

/*
QJsonValue(bool b)
*/
$constructor=|new2|bool

/*
QJsonValue(double n)
*/
$constructor=|new3|double

/*
QJsonValue(const QString & s)
*/
$constructor=|new4|const QString &

/*
QJsonValue(QLatin1String s)
*/
$constructor=|new5|QLatin1String

/*
QJsonValue(const QJsonArray & a)
*/
$constructor=|new6|const QJsonArray &

/*
QJsonValue(const QJsonObject & o)
*/
$constructor=|new7|const QJsonObject &

/*
QJsonValue(const QJsonValue & other)
*/
$constructor=|new8|const QJsonValue &

/*
QJsonValue(int n)
*/
$constructor=|new9|int

//[1]QJsonValue(Type type = Null)
//[2]QJsonValue(bool b)
//[3]QJsonValue(double n)
//[4]QJsonValue(const QString & s)
//[5]QJsonValue(QLatin1String s)
//[6]QJsonValue(const QJsonArray & a)
//[7]QJsonValue(const QJsonObject & o)
//[8]QJsonValue(const QJsonValue & other)
//[9]QJsonValue(int n)

HB_FUNC_STATIC( QJSONVALUE_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    HB_FUNC_EXEC( QJSONVALUE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISLOG(1) )
  {
    HB_FUNC_EXEC( QJSONVALUE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QJSONVALUE_NEW3 );
    //HB_FUNC_EXEC( QJSONVALUE_NEW9 ); // TODO: implementar
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QJSONVALUE_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQJSONARRAY(1) )
  {
    HB_FUNC_EXEC( QJSONVALUE_NEW6 );
  }
  else if( ISNUMPAR(1) && ISQJSONOBJECT(1) )
  {
    HB_FUNC_EXEC( QJSONVALUE_NEW7 );
  }
  else if( ISNUMPAR(1) && ISQJSONVALUE(1) )
  {
    HB_FUNC_EXEC( QJSONVALUE_NEW8 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isArray() const
*/
$method=|bool|isArray|

/*
bool isBool() const
*/
$method=|bool|isBool|

/*
bool isDouble() const
*/
$method=|bool|isDouble|

/*
bool isNull() const
*/
$method=|bool|isNull|

/*
bool isObject() const
*/
$method=|bool|isObject|

/*
bool isString() const
*/
$method=|bool|isString|

/*
bool isUndefined() const
*/
$method=|bool|isUndefined|

/*
QJsonArray toArray(const QJsonArray & defaultValue) const
*/
$internalMethod=|QJsonArray|toArray,toArray1|const QJsonArray &

/*
QJsonArray toArray() const
*/
$internalMethod=|QJsonArray|toArray,toArray2|

//[1]QJsonArray toArray(const QJsonArray & defaultValue) const
//[2]QJsonArray toArray() const

HB_FUNC_STATIC( QJSONVALUE_TOARRAY )
{
  if( ISNUMPAR(1) && ISQJSONARRAY(1) )
  {
    QJsonValue_toArray1();
  }
  else if( ISNUMPAR(0) )
  {
    QJsonValue_toArray2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool toBool(bool defaultValue = false) const
*/
$method=|bool|toBool|bool=false

/*
double toDouble(double defaultValue = 0) const
*/
$method=|double|toDouble|double=0

/*
QJsonObject toObject(const QJsonObject & defaultValue) const
*/
$internalMethod=|QJsonObject|toObject,toObject1|const QJsonObject &

/*
QJsonObject toObject() const
*/
$internalMethod=|QJsonObject|toObject,toObject2|

//[1]QJsonObject toObject(const QJsonObject & defaultValue) const
//[2]QJsonObject toObject() const

HB_FUNC_STATIC( QJSONVALUE_TOOBJECT )
{
  if( ISNUMPAR(1) && ISQJSONOBJECT(1) )
  {
    QJsonValue_toObject1();
  }
  else if( ISNUMPAR(0) )
  {
    QJsonValue_toObject2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString toString(const QString & defaultValue = QString()) const
*/
$method=|QString|toString|const QString &=QString()

/*
QVariant toVariant() const
*/
$method=|QVariant|toVariant|

/*
Type type() const
*/
$method=|QJsonValue::Type|type|

/*
static QJsonValue fromVariant(const QVariant & variant)
*/
$staticMethod=|QJsonValue|fromVariant|const QVariant &

$extraMethods

#pragma ENDDUMP
