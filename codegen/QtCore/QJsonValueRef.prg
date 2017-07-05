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
void QJsonValueRef_new1 ()
{
  QJsonValueRef * o = new QJsonValueRef ( PQJSONARRAY(1), PINT(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QJsonValueRef(QJsonObject *object, int idx)
*/
void QJsonValueRef_new2 ()
{
  QJsonValueRef * o = new QJsonValueRef ( PQJSONOBJECT(1), PINT(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

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
HB_FUNC_STATIC( QJSONVALUEREF_TOARRAY )
{
  QJsonValueRef * obj = (QJsonValueRef *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QJsonArray * ptr = new QJsonArray( obj->toArray () );
    _qt5xhb_createReturnClass ( ptr, "QJSONARRAY" );
  }
}

/*
QJsonObject toObject() const
*/
HB_FUNC_STATIC( QJSONVALUEREF_TOOBJECT )
{
  QJsonValueRef * obj = (QJsonValueRef *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QJsonObject * ptr = new QJsonObject( obj->toObject () );
    _qt5xhb_createReturnClass ( ptr, "QJSONOBJECT" );
  }
}

$extraMethods

#pragma ENDDUMP
