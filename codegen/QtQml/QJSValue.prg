$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QOBJECT
REQUEST QVARIANT
#endif

CLASS QJSValue

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new9
   METHOD new
   METHOD delete
   METHOD deleteProperty
   METHOD equals
   METHOD hasOwnProperty
   METHOD hasProperty
   METHOD isArray
   METHOD isBool
   METHOD isCallable
   METHOD isDate
   METHOD isError
   METHOD isNull
   METHOD isNumber
   METHOD isObject
   METHOD isQObject
   METHOD isRegExp
   METHOD isString
   METHOD isUndefined
   METHOD isVariant
   METHOD property1
   METHOD property2
   METHOD property
   METHOD prototype
   METHOD setProperty1
   METHOD setProperty2
   METHOD setProperty
   METHOD setPrototype
   METHOD strictlyEquals
   METHOD toBool
   METHOD toDateTime
   METHOD toInt
   METHOD toNumber
   METHOD toQObject
   METHOD toString
   METHOD toUInt
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
#include <QVariant>

/*
QJSValue(SpecialValue value = UndefinedValue)
*/
HB_FUNC_STATIC( QJSVALUE_NEW1 )
{
  int par1 = ISNIL(1)? (int) QJSValue::UndefinedValue : hb_parni(1);
  QJSValue * o = new QJSValue ( (QJSValue::SpecialValue) par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QJSValue(const QJSValue & other)
*/
HB_FUNC_STATIC( QJSVALUE_NEW2 )
{
  QJSValue * o = new QJSValue ( *PQJSVALUE(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QJSValue(bool value)
*/
HB_FUNC_STATIC( QJSVALUE_NEW3 )
{
  QJSValue * o = new QJSValue ( PBOOL(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QJSValue(int value)
*/
HB_FUNC_STATIC( QJSVALUE_NEW4 )
{
  QJSValue * o = new QJSValue ( PINT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QJSValue(uint value)
*/
HB_FUNC_STATIC( QJSVALUE_NEW5 )
{
  uint par1 = hb_parni(1);
  QJSValue * o = new QJSValue ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QJSValue(double value)
*/
HB_FUNC_STATIC( QJSVALUE_NEW6 )
{
  QJSValue * o = new QJSValue ( PDOUBLE(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QJSValue(const QString & value)
*/
HB_FUNC_STATIC( QJSVALUE_NEW7 )
{
  QJSValue * o = new QJSValue ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QJSValue(const char * value)
*/
HB_FUNC_STATIC( QJSVALUE_NEW9 )
{
  QJSValue * o = new QJSValue ( PCONSTCHAR(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QJSValue(SpecialValue value = UndefinedValue)
//[2]QJSValue(const QJSValue & other)
//[3]QJSValue(bool value)
//[4]QJSValue(int value)
//[5]QJSValue(uint value)
//[6]QJSValue(double value)
//[7]QJSValue(const QString & value)
//[8]QJSValue(const QLatin1String & value)
//[9]QJSValue(const char * value)

HB_FUNC_STATIC( QJSVALUE_NEW ) // TODO: resolver conflitos
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
    HB_FUNC_EXEC( QJSVALUE_NEW2 );
    //HB_FUNC_EXEC( QJSVALUE_NEW8 );
  }
  else if( ISNUMPAR(1) && ISLOG(1) )
  {
    HB_FUNC_EXEC( QJSVALUE_NEW3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QJSVALUE_NEW7 );
    //HB_FUNC_EXEC( QJSVALUE_NEW9 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool deleteProperty(const QString & name)
*/
HB_FUNC_STATIC( QJSVALUE_DELETEPROPERTY )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->deleteProperty ( PQSTRING(1) ) );
  }
}


/*
bool equals(const QJSValue & other) const
*/
HB_FUNC_STATIC( QJSVALUE_EQUALS )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->equals ( *PQJSVALUE(1) ) );
  }
}


/*
bool hasOwnProperty(const QString & name) const
*/
HB_FUNC_STATIC( QJSVALUE_HASOWNPROPERTY )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasOwnProperty ( PQSTRING(1) ) );
  }
}


/*
bool hasProperty(const QString & name) const
*/
HB_FUNC_STATIC( QJSVALUE_HASPROPERTY )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasProperty ( PQSTRING(1) ) );
  }
}


/*
bool isArray() const
*/
HB_FUNC_STATIC( QJSVALUE_ISARRAY )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isArray () );
  }
}


/*
bool isBool() const
*/
HB_FUNC_STATIC( QJSVALUE_ISBOOL )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isBool () );
  }
}


/*
bool isCallable() const
*/
HB_FUNC_STATIC( QJSVALUE_ISCALLABLE )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isCallable () );
  }
}


/*
bool isDate() const
*/
HB_FUNC_STATIC( QJSVALUE_ISDATE )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isDate () );
  }
}


/*
bool isError() const
*/
HB_FUNC_STATIC( QJSVALUE_ISERROR )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isError () );
  }
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QJSVALUE_ISNULL )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
bool isNumber() const
*/
HB_FUNC_STATIC( QJSVALUE_ISNUMBER )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNumber () );
  }
}


/*
bool isObject() const
*/
HB_FUNC_STATIC( QJSVALUE_ISOBJECT )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isObject () );
  }
}


/*
bool isQObject() const
*/
HB_FUNC_STATIC( QJSVALUE_ISQOBJECT )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isQObject () );
  }
}


/*
bool isRegExp() const
*/
HB_FUNC_STATIC( QJSVALUE_ISREGEXP )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isRegExp () );
  }
}


/*
bool isString() const
*/
HB_FUNC_STATIC( QJSVALUE_ISSTRING )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isString () );
  }
}


/*
bool isUndefined() const
*/
HB_FUNC_STATIC( QJSVALUE_ISUNDEFINED )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isUndefined () );
  }
}


/*
bool isVariant() const
*/
HB_FUNC_STATIC( QJSVALUE_ISVARIANT )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isVariant () );
  }
}


/*
QJSValue property(const QString & name) const
*/
HB_FUNC_STATIC( QJSVALUE_PROPERTY1 )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJSValue * ptr = new QJSValue( obj->property ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QJSVALUE" );
  }
}

/*
QJSValue property(quint32 arrayIndex) const
*/
HB_FUNC_STATIC( QJSVALUE_PROPERTY2 )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJSValue * ptr = new QJSValue( obj->property ( PQUINT32(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QJSVALUE" );
  }
}


//[1]QJSValue property(const QString & name) const
//[2]QJSValue property(quint32 arrayIndex) const

HB_FUNC_STATIC( QJSVALUE_PROPERTY )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QJSVALUE_PROPERTY1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QJSVALUE_PROPERTY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QJSValue prototype() const
*/
HB_FUNC_STATIC( QJSVALUE_PROTOTYPE )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJSValue * ptr = new QJSValue( obj->prototype () );
    _qt5xhb_createReturnClass ( ptr, "QJSVALUE" );
  }
}


/*
void setProperty(const QString & name, const QJSValue & value)
*/
HB_FUNC_STATIC( QJSVALUE_SETPROPERTY1 )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setProperty ( PQSTRING(1), *PQJSVALUE(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setProperty(quint32 arrayIndex, const QJSValue & value)
*/
HB_FUNC_STATIC( QJSVALUE_SETPROPERTY2 )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setProperty ( PQUINT32(1), *PQJSVALUE(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setProperty(const QString & name, const QJSValue & value)
//[2]void setProperty(quint32 arrayIndex, const QJSValue & value)

HB_FUNC_STATIC( QJSVALUE_SETPROPERTY )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISQJSVALUE(2) )
  {
    HB_FUNC_EXEC( QJSVALUE_SETPROPERTY1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQJSVALUE(2) )
  {
    HB_FUNC_EXEC( QJSVALUE_PROPERTY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPrototype(const QJSValue & prototype)
*/
HB_FUNC_STATIC( QJSVALUE_SETPROTOTYPE )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPrototype ( *PQJSVALUE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool strictlyEquals(const QJSValue & other) const
*/
HB_FUNC_STATIC( QJSVALUE_STRICTLYEQUALS )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->strictlyEquals ( *PQJSVALUE(1) ) );
  }
}


/*
bool toBool() const
*/
HB_FUNC_STATIC( QJSVALUE_TOBOOL )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->toBool () );
  }
}


/*
QDateTime toDateTime() const
*/
HB_FUNC_STATIC( QJSVALUE_TODATETIME )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->toDateTime () );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
qint32 toInt() const
*/
HB_FUNC_STATIC( QJSVALUE_TOINT )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT32( obj->toInt () );
  }
}


/*
double toNumber() const
*/
HB_FUNC_STATIC( QJSVALUE_TONUMBER )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RDOUBLE( obj->toNumber () );
  }
}


/*
QObject * toQObject() const
*/
HB_FUNC_STATIC( QJSVALUE_TOQOBJECT )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->toQObject ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
QString toString() const
*/
HB_FUNC_STATIC( QJSVALUE_TOSTRING )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->toString () );
  }
}


/*
quint32 toUInt() const
*/
HB_FUNC_STATIC( QJSVALUE_TOUINT )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT32( obj->toUInt () );
  }
}


/*
QVariant toVariant() const
*/
HB_FUNC_STATIC( QJSVALUE_TOVARIANT )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->toVariant () );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



$extraMethods

#pragma ENDDUMP
