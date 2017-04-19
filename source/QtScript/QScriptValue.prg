/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

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
   DATA class_id INIT Class_Id_QScriptValue
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new10
   METHOD new
   METHOD delete
   METHOD call1
   METHOD call2
   METHOD call
   METHOD construct1
   METHOD construct2
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

PROCEDURE destroyObject () CLASS QScriptValue
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QScriptValue>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QScriptValue>
#endif

#include <QDateTime>
#include <QRegExp>
#include <QVariant>

/*
QScriptValue()
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW1 )
{
  QScriptValue * o = new QScriptValue (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QScriptValue(const QScriptValue & other)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW2 )
{
  QScriptValue * par1 = (QScriptValue *) _qt5xhb_itemGetPtr(1);
  QScriptValue * o = new QScriptValue ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QScriptValue(SpecialValue value)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW3 )
{
  int par1 = hb_parni(1);
  QScriptValue * o = new QScriptValue (  (QScriptValue::SpecialValue) par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QScriptValue(bool value)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW4 )
{
  bool par1 = hb_parl(1);
  QScriptValue * o = new QScriptValue ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QScriptValue(int value)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW5 )
{
  int par1 = hb_parni(1);
  QScriptValue * o = new QScriptValue ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QScriptValue(uint value)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW6 )
{
  uint par1 = hb_parni(1);
  QScriptValue * o = new QScriptValue ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QScriptValue(qsreal value)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW7 )
{
  qsreal par1 = hb_parnd(1);
  QScriptValue * o = new QScriptValue ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QScriptValue(const QString & value)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW8 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QScriptValue * o = new QScriptValue ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QScriptValue(const char * value)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW10 )
{
  const char * par1 = hb_parc(1);
  QScriptValue * o = new QScriptValue (  (const char *) par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


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

// TODO: resolver conflitos

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
    // TODO: como identificar inteiros e fracionarios ?
    //HB_FUNC_EXEC( QSCRIPTVALUE_NEW3 );
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW5 );
    //HB_FUNC_EXEC( QSCRIPTVALUE_NEW6 );
    //HB_FUNC_EXEC( QSCRIPTVALUE_NEW7 );
  }
  else if( ISNUMPAR(1) && ISLOG(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW4 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW8 );
    //HB_FUNC_EXEC( QSCRIPTVALUE_NEW9 );
    //HB_FUNC_EXEC( QSCRIPTVALUE_NEW10 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSCRIPTVALUE_DELETE )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QScriptValue call(const QScriptValue & thisObject = QScriptValue(), const QScriptValueList & args = QScriptValueList())
*/
HB_FUNC_STATIC( QSCRIPTVALUE_CALL1 )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue par1 = ISNIL(1)? QScriptValue() : *(QScriptValue *) _qt5xhb_itemGetPtr(1);
QScriptValueList par2;
PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aList2);
for (i2=0;i2<nLen2;i2++)
{
par2 << *(QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
}
    QScriptValue * ptr = new QScriptValue( obj->call ( par1, par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}

/*
QScriptValue call(const QScriptValue & thisObject, const QScriptValue & arguments)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_CALL2 )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qt5xhb_itemGetPtr(1);
    QScriptValue * par2 = (QScriptValue *) _qt5xhb_itemGetPtr(2);
    QScriptValue * ptr = new QScriptValue( obj->call ( *par1, *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


//[1]QScriptValue call(const QScriptValue & thisObject = QScriptValue(), const QScriptValueList & args = QScriptValueList())
//[2]QScriptValue call(const QScriptValue & thisObject, const QScriptValue & arguments)

HB_FUNC_STATIC( QSCRIPTVALUE_CALL )
{
  if( ISBETWEEN(0,2) && (ISQSCRIPTVALUE(1)||ISNIL(1)) && (ISARRAY(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_CALL1 );
  }
  else if( ISNUMPAR(2) && ISQSCRIPTVALUE(1) && ISQSCRIPTVALUE(2) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_CALL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue construct(const QScriptValueList & args = QScriptValueList())
*/
HB_FUNC_STATIC( QSCRIPTVALUE_CONSTRUCT1 )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QScriptValueList par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
    QScriptValue * ptr = new QScriptValue( obj->construct ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}

/*
QScriptValue construct(const QScriptValue & arguments)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_CONSTRUCT2 )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qt5xhb_itemGetPtr(1);
    QScriptValue * ptr = new QScriptValue( obj->construct ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


//[1]QScriptValue construct(const QScriptValueList & args = QScriptValueList())
//[2]QScriptValue construct(const QScriptValue & arguments)

HB_FUNC_STATIC( QSCRIPTVALUE_CONSTRUCT )
{
  if( ISBETWEEN(0,1) && (ISARRAY(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_CONSTRUCT1 );
  }
  else if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_CONSTRUCT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue data() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_DATA )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->data (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QScriptEngine * engine() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ENGINE )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptEngine * ptr = obj->engine (  );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTENGINE" );
  }
}


/*
bool equals(const QScriptValue & other) const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_EQUALS )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->equals ( *par1 ) );
  }
}


/*
bool instanceOf(const QScriptValue & other) const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_INSTANCEOF )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->instanceOf ( *par1 ) );
  }
}


/*
bool isArray() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISARRAY )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isArray (  ) );
  }
}


/*
bool isBool() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISBOOL )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isBool (  ) );
  }
}


/*
bool isDate() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISDATE )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isDate (  ) );
  }
}


/*
bool isError() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISERROR )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isError (  ) );
  }
}


/*
bool isFunction() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISFUNCTION )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFunction (  ) );
  }
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISNULL )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
bool isNumber() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISNUMBER )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNumber (  ) );
  }
}


/*
bool isObject() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISOBJECT )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isObject (  ) );
  }
}


/*
bool isQMetaObject() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISQMETAOBJECT )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isQMetaObject (  ) );
  }
}


/*
bool isQObject() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISQOBJECT )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isQObject (  ) );
  }
}


/*
bool isRegExp() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISREGEXP )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isRegExp (  ) );
  }
}


/*
bool isString() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISSTRING )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isString (  ) );
  }
}


/*
bool isUndefined() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISUNDEFINED )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isUndefined (  ) );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISVALID )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
bool isVariant() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISVARIANT )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isVariant (  ) );
  }
}


/*
bool lessThan(const QScriptValue & other) const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_LESSTHAN )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->lessThan ( *par1 ) );
  }
}



//[1]QScriptValue property(const QString & name, const ResolveFlags & mode = ResolvePrototype) const
//[2]QScriptValue property(const QScriptString & name, const ResolveFlags & mode = ResolvePrototype) const
//[3]QScriptValue property(quint32 arrayIndex, const ResolveFlags & mode = ResolvePrototype) const

// TODO: implementar

HB_FUNC_STATIC( QSCRIPTVALUE_PROPERTY )
{
  //if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  //{
  //  HB_FUNC_EXEC( QSCRIPTVALUE_PROPERTY1 );
  //}
  //else if( ISBETWEEN(1,2) && ISQSCRIPTSTRING(1) && (ISNUM(2)||ISNIL(2)) )
  //{
  //  HB_FUNC_EXEC( QSCRIPTVALUE_PROPERTY2 );
  //}
  //else if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
  //{
  //  HB_FUNC_EXEC( QSCRIPTVALUE_PROPERTY3 );
  //}
}


//[1]QScriptValue::PropertyFlags propertyFlags(const QString & name, const ResolveFlags & mode = ResolvePrototype) const
//[2]QScriptValue::PropertyFlags propertyFlags(const QScriptString & name, const ResolveFlags & mode = ResolvePrototype) const

// TODO: implementar

HB_FUNC_STATIC( QSCRIPTVALUE_PROPERTYFLAGS )
{
  //if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  //{
  //  HB_FUNC_EXEC( QSCRIPTVALUE_PROPERTYFLAGS1 );
  //}
  //else if( ISBETWEEN(1,2) && ISQSCRIPTSTRING(1) && (ISNUM(2)||ISNIL(2)) )
  //{
  //  HB_FUNC_EXEC( QSCRIPTVALUE_PROPERTYFLAGS2 );
  //}
}

/*
QScriptValue prototype() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_PROTOTYPE )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->prototype (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QScriptClass * scriptClass() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_SCRIPTCLASS )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptClass * ptr = obj->scriptClass (  );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTCLASS" );
  }
}


/*
void setData(const QScriptValue & data)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_SETDATA )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qt5xhb_itemGetPtr(1);
    obj->setData ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



//[1]void setProperty(const QString & name, const QScriptValue & value, const PropertyFlags & flags = KeepExistingFlags)
//[2]void setProperty(const QScriptString & name, const QScriptValue & value, const PropertyFlags & flags = KeepExistingFlags)
//[3]void setProperty(quint32 arrayIndex, const QScriptValue & value, const PropertyFlags & flags = KeepExistingFlags)

// TODO: implementar

HB_FUNC_STATIC( QSCRIPTVALUE_SETPROPERTY )
{
  //if( ISBETWEEN(2,3) && ISCHAR(1) && ISQSCRIPTVALUE(2) && (ISNUM(3)||ISNIL(3)) )
  //{
  //  HB_FUNC_EXEC( QSCRIPTVALUE_SETPROPERTY1 );
  //}
  //else if( ISBETWEEN(2,3) && ISQSCRIPTSTRING(1) && ISQSCRIPTVALUE(2) && (ISNUM(3)||ISNIL(3)) )
  //{
  //  HB_FUNC_EXEC( QSCRIPTVALUE_SETPROPERTY2 );
  //}
  //else if( ISBETWEEN(2,3) && ISNUM(1) && ISQSCRIPTVALUE(2) && (ISNUM(3)||ISNIL(3)) )
  //{
  //  HB_FUNC_EXEC( QSCRIPTVALUE_SETPROPERTY3 );
  //}
}

/*
void setPrototype(const QScriptValue & prototype)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_SETPROTOTYPE )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qt5xhb_itemGetPtr(1);
    obj->setPrototype ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScriptClass(QScriptClass * scriptClass)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_SETSCRIPTCLASS )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptClass * par1 = (QScriptClass *) _qt5xhb_itemGetPtr(1);
    obj->setScriptClass ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool strictlyEquals(const QScriptValue & other) const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_STRICTLYEQUALS )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->strictlyEquals ( *par1 ) );
  }
}


/*
bool toBool() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOBOOL )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->toBool (  ) );
  }
}


/*
QDateTime toDateTime() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TODATETIME )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->toDateTime (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
qint32 toInt32() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOINT32 )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->toInt32 (  ) );
  }
}


/*
qsreal toInteger() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOINTEGER )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->toInteger (  ) );
  }
}


/*
qsreal toNumber() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TONUMBER )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->toNumber (  ) );
  }
}


/*
const QMetaObject * toQMetaObject() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOQMETAOBJECT )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMetaObject * ptr = obj->toQMetaObject (  );
    _qt5xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}


/*
QObject * toQObject() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOQOBJECT )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->toQObject (  );
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
QRegExp toRegExp() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOREGEXP )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegExp * ptr = new QRegExp( obj->toRegExp (  ) );
    _qt5xhb_createReturnClass ( ptr, "QREGEXP", true );
  }
}


/*
QString toString() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOSTRING )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toString (  ).toLatin1().data() );
  }
}


/*
quint16 toUInt16() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOUINT16 )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->toUInt16 (  ) );
  }
}


/*
quint32 toUInt32() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOUINT32 )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->toUInt32 (  ) );
  }
}


/*
QVariant toVariant() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOVARIANT )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->toVariant (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



HB_FUNC_STATIC( QSCRIPTVALUE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSCRIPTVALUE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSCRIPTVALUE_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTVALUE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSCRIPTVALUE_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTVALUE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSCRIPTVALUE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
