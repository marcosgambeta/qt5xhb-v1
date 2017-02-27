/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QOBJECT
REQUEST QVARIANT
#endif

CLASS QJSValue

   DATA pointer
   DATA class_id INIT Class_Id_QJSValue
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QJSValue
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QJSValue>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QJSValue>
#endif
#endif

#include <QDateTime>
#include <QVariant>

/*
QJSValue(SpecialValue value = UndefinedValue)
*/
HB_FUNC_STATIC( QJSVALUE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = ISNIL(1)? (int) QJSValue::UndefinedValue : hb_parni(1);
  QJSValue * o = new QJSValue (  (QJSValue::SpecialValue) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QJSValue *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QJSValue(const QJSValue & other)
*/
HB_FUNC_STATIC( QJSVALUE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QJSValue * par1 = (QJSValue *) _qt5xhb_itemGetPtr(1);
  QJSValue * o = new QJSValue ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QJSValue *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QJSValue(bool value)
*/
HB_FUNC_STATIC( QJSVALUE_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  bool par1 = hb_parl(1);
  QJSValue * o = new QJSValue ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QJSValue *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QJSValue(int value)
*/
HB_FUNC_STATIC( QJSVALUE_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QJSValue * o = new QJSValue ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QJSValue *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QJSValue(uint value)
*/
HB_FUNC_STATIC( QJSVALUE_NEW5 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  uint par1 = hb_parni(1);
  QJSValue * o = new QJSValue ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QJSValue *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QJSValue(double value)
*/
HB_FUNC_STATIC( QJSVALUE_NEW6 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  double par1 = hb_parnd(1);
  QJSValue * o = new QJSValue ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QJSValue *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QJSValue(const QString & value)
*/
HB_FUNC_STATIC( QJSVALUE_NEW7 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QJSValue * o = new QJSValue ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QJSValue *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QJSValue(const char * value)
*/
HB_FUNC_STATIC( QJSVALUE_NEW9 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  const char * par1 = hb_parc(1);
  QJSValue * o = new QJSValue (  (const char *) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QJSValue *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
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

HB_FUNC_STATIC( QJSVALUE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QJSValue * obj = (QJSValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}




/*
bool deleteProperty(const QString & name)
*/
HB_FUNC_STATIC( QJSVALUE_DELETEPROPERTY )
{
  QJSValue * obj = (QJSValue *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->deleteProperty ( par1 ) );
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
    QJSValue * par1 = (QJSValue *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->equals ( *par1 ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->hasOwnProperty ( par1 ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->hasProperty ( par1 ) );
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
    hb_retl( obj->isArray (  ) );
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
    hb_retl( obj->isBool (  ) );
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
    hb_retl( obj->isCallable (  ) );
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
    hb_retl( obj->isDate (  ) );
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
    hb_retl( obj->isError (  ) );
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
    hb_retl( obj->isNull (  ) );
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
    hb_retl( obj->isNumber (  ) );
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
    hb_retl( obj->isObject (  ) );
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
    hb_retl( obj->isQObject (  ) );
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
    hb_retl( obj->isRegExp (  ) );
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
    hb_retl( obj->isString (  ) );
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
    hb_retl( obj->isUndefined (  ) );
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
    hb_retl( obj->isVariant (  ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QJSValue * ptr = new QJSValue( obj->property ( par1 ) );
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
    QJSValue * ptr = new QJSValue( obj->property ( (quint32) hb_parni(1) ) );
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
    QJSValue * ptr = new QJSValue( obj->prototype (  ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QJSValue * par2 = (QJSValue *) _qt5xhb_itemGetPtr(2);
    obj->setProperty ( par1, *par2 );
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
    QJSValue * par2 = (QJSValue *) _qt5xhb_itemGetPtr(2);
    obj->setProperty ( (quint32) hb_parni(1), *par2 );
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
    QJSValue * par1 = (QJSValue *) _qt5xhb_itemGetPtr(1);
    obj->setPrototype ( *par1 );
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
    QJSValue * par1 = (QJSValue *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->strictlyEquals ( *par1 ) );
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
    hb_retl( obj->toBool (  ) );
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
    QDateTime * ptr = new QDateTime( obj->toDateTime (  ) );
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
    hb_retni( obj->toInt (  ) );
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
    hb_retnd( obj->toNumber (  ) );
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
    QObject * ptr = obj->toQObject (  );
    _qt5xhb_createReturnClass ( ptr, "QOBJECT" );
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
    hb_retc( (const char *) obj->toString (  ).toLatin1().data() );
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
    hb_retni( obj->toUInt (  ) );
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
    QVariant * ptr = new QVariant( obj->toVariant (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



HB_FUNC_STATIC( QJSVALUE_NEWFROM )
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

HB_FUNC_STATIC( QJSVALUE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QJSVALUE_NEWFROM );
}

HB_FUNC_STATIC( QJSVALUE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QJSVALUE_NEWFROM );
}

HB_FUNC_STATIC( QJSVALUE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QJSVALUE_SETSELFDESTRUCTION )
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