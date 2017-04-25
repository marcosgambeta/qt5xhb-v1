/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QJSONARRAY
REQUEST QJSONOBJECT
REQUEST QVARIANT
#endif

CLASS QJsonValue

   DATA pointer
   //DATA class_id INIT Class_Id_QJsonValue
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QJsonValue
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QJsonValue>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QJsonValue>
#endif

#include <QJsonArray>
#include <QJsonObject>
#include <QVariant>

/*
QJsonValue(Type type = Null)
*/
HB_FUNC_STATIC( QJSONVALUE_NEW1 )
{
  int par1 = ISNIL(1)? (int) QJsonValue::Null : hb_parni(1);
  QJsonValue * o = new QJsonValue (  (QJsonValue::Type) par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QJsonValue(bool b)
*/
HB_FUNC_STATIC( QJSONVALUE_NEW2 )
{
  bool par1 = hb_parl(1);
  QJsonValue * o = new QJsonValue ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QJsonValue(double n)
*/
HB_FUNC_STATIC( QJSONVALUE_NEW3 )
{
  double par1 = hb_parnd(1);
  QJsonValue * o = new QJsonValue ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QJsonValue(const QString & s)
*/
HB_FUNC_STATIC( QJSONVALUE_NEW4 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QJsonValue * o = new QJsonValue ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QJsonValue(const QJsonArray & a)
*/
HB_FUNC_STATIC( QJSONVALUE_NEW6 )
{
  QJsonArray * par1 = (QJsonArray *) _qt5xhb_itemGetPtr(1);
  QJsonValue * o = new QJsonValue ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QJsonValue(const QJsonObject & o)
*/
HB_FUNC_STATIC( QJSONVALUE_NEW7 )
{
  QJsonObject * par1 = (QJsonObject *) _qt5xhb_itemGetPtr(1);
  QJsonValue * o = new QJsonValue ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QJsonValue(const QJsonValue & other)
*/
HB_FUNC_STATIC( QJSONVALUE_NEW8 )
{
  QJsonValue * par1 = (QJsonValue *) _qt5xhb_itemGetPtr(1);
  QJsonValue * o = new QJsonValue ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QJsonValue(int n)
*/
HB_FUNC_STATIC( QJSONVALUE_NEW9 )
{
  int par1 = hb_parni(1);
  QJsonValue * o = new QJsonValue ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

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

HB_FUNC_STATIC( QJSONVALUE_DELETE )
{
  QJsonValue * obj = (QJsonValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool isArray() const
*/
HB_FUNC_STATIC( QJSONVALUE_ISARRAY )
{
  QJsonValue * obj = (QJsonValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isArray (  ) );
  }
}

/*
bool isBool() const
*/
HB_FUNC_STATIC( QJSONVALUE_ISBOOL )
{
  QJsonValue * obj = (QJsonValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isBool (  ) );
  }
}

/*
bool isDouble() const
*/
HB_FUNC_STATIC( QJSONVALUE_ISDOUBLE )
{
  QJsonValue * obj = (QJsonValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isDouble (  ) );
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QJSONVALUE_ISNULL )
{
  QJsonValue * obj = (QJsonValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}

/*
bool isObject() const
*/
HB_FUNC_STATIC( QJSONVALUE_ISOBJECT )
{
  QJsonValue * obj = (QJsonValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isObject (  ) );
  }
}

/*
bool isString() const
*/
HB_FUNC_STATIC( QJSONVALUE_ISSTRING )
{
  QJsonValue * obj = (QJsonValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isString (  ) );
  }
}

/*
bool isUndefined() const
*/
HB_FUNC_STATIC( QJSONVALUE_ISUNDEFINED )
{
  QJsonValue * obj = (QJsonValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isUndefined (  ) );
  }
}

/*
QJsonArray toArray(const QJsonArray & defaultValue) const
*/
void QJsonValue_toArray1 ()
{
  QJsonValue * obj = (QJsonValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QJsonArray * par1 = (QJsonArray *) _qt5xhb_itemGetPtr(1);
    QJsonArray * ptr = new QJsonArray( obj->toArray ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QJSONARRAY" );
  }
}

/*
QJsonArray toArray() const
*/
void QJsonValue_toArray2 ()
{
  QJsonValue * obj = (QJsonValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QJsonArray * ptr = new QJsonArray( obj->toArray (  ) );
    _qt5xhb_createReturnClass ( ptr, "QJSONARRAY" );
  }
}

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
HB_FUNC_STATIC( QJSONVALUE_TOBOOL )
{
  QJsonValue * obj = (QJsonValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) )
    {
      hb_retl( obj->toBool ( (bool) ISNIL(1)? false : hb_parl(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
double toDouble(double defaultValue = 0) const
*/
HB_FUNC_STATIC( QJSONVALUE_TODOUBLE )
{
  QJsonValue * obj = (QJsonValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      double par1 = ISNIL(1)? 0 : hb_parnd(1);
      hb_retnd( obj->toDouble ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QJsonObject toObject(const QJsonObject & defaultValue) const
*/
void QJsonValue_toObject1 ()
{
  QJsonValue * obj = (QJsonValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QJsonObject * par1 = (QJsonObject *) _qt5xhb_itemGetPtr(1);
    QJsonObject * ptr = new QJsonObject( obj->toObject ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QJSONOBJECT" );
  }
}

/*
QJsonObject toObject() const
*/
void QJsonValue_toObject2 ()
{
  QJsonValue * obj = (QJsonValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QJsonObject * ptr = new QJsonObject( obj->toObject (  ) );
    _qt5xhb_createReturnClass ( ptr, "QJSONOBJECT" );
  }
}

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
HB_FUNC_STATIC( QJSONVALUE_TOSTRING )
{
  QJsonValue * obj = (QJsonValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTCHAR(1) )
    {
      QString par1 = ISNIL(1)? QString() : QLatin1String( hb_parc(1) );
      hb_retc( (const char *) obj->toString ( par1 ).toLatin1().data() );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVariant toVariant() const
*/
HB_FUNC_STATIC( QJSONVALUE_TOVARIANT )
{
  QJsonValue * obj = (QJsonValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->toVariant (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
Type type() const
*/
HB_FUNC_STATIC( QJSONVALUE_TYPE )
{
  QJsonValue * obj = (QJsonValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}

/*
static QJsonValue fromVariant(const QVariant & variant)
*/
HB_FUNC_STATIC( QJSONVALUE_FROMVARIANT )
{
  if( ISQVARIANT(1) )
  {
    QVariant * par1 = (QVariant *) _qt5xhb_itemGetPtr(1);
    QJsonValue * ptr = new QJsonValue( QJsonValue::fromVariant ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QJSONVALUE" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QJSONVALUE_NEWFROM )
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

HB_FUNC_STATIC( QJSONVALUE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QJSONVALUE_NEWFROM );
}

HB_FUNC_STATIC( QJSONVALUE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QJSONVALUE_NEWFROM );
}

HB_FUNC_STATIC( QJSONVALUE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QJSONVALUE_SETSELFDESTRUCTION )
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
