/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

PROCEDURE destroyObject () CLASS QJsonValueRef
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QJsonValueRef>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QJsonValueRef>
#endif

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

HB_FUNC_STATIC( QJSONVALUEREF_DELETE )
{
  QJsonValueRef * obj = (QJsonValueRef *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QJsonValue::Type type() const
*/
HB_FUNC_STATIC( QJSONVALUEREF_TYPE )
{
  QJsonValueRef * obj = (QJsonValueRef *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->type () );
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QJSONVALUEREF_ISNULL )
{
  QJsonValueRef * obj = (QJsonValueRef *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}

/*
bool isBool() const
*/
HB_FUNC_STATIC( QJSONVALUEREF_ISBOOL )
{
  QJsonValueRef * obj = (QJsonValueRef *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isBool () );
  }
}

/*
bool isDouble() const
*/
HB_FUNC_STATIC( QJSONVALUEREF_ISDOUBLE )
{
  QJsonValueRef * obj = (QJsonValueRef *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isDouble () );
  }
}

/*
bool isString() const
*/
HB_FUNC_STATIC( QJSONVALUEREF_ISSTRING )
{
  QJsonValueRef * obj = (QJsonValueRef *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isString () );
  }
}

/*
bool isArray() const
*/
HB_FUNC_STATIC( QJSONVALUEREF_ISARRAY )
{
  QJsonValueRef * obj = (QJsonValueRef *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isArray () );
  }
}

/*
bool isObject() const
*/
HB_FUNC_STATIC( QJSONVALUEREF_ISOBJECT )
{
  QJsonValueRef * obj = (QJsonValueRef *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isObject () );
  }
}

/*
bool isUndefined() const
*/
HB_FUNC_STATIC( QJSONVALUEREF_ISUNDEFINED )
{
  QJsonValueRef * obj = (QJsonValueRef *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isUndefined () );
  }
}

/*
bool toBool() const
*/
HB_FUNC_STATIC( QJSONVALUEREF_TOBOOL )
{
  QJsonValueRef * obj = (QJsonValueRef *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->toBool () );
  }
}

/*
int toInt() const
*/
HB_FUNC_STATIC( QJSONVALUEREF_TOINT )
{
  QJsonValueRef * obj = (QJsonValueRef *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->toInt () );
  }
}

/*
double toDouble() const
*/
HB_FUNC_STATIC( QJSONVALUEREF_TODOUBLE )
{
  QJsonValueRef * obj = (QJsonValueRef *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RDOUBLE( obj->toDouble () );
  }
}

/*
QString toString() const
*/
HB_FUNC_STATIC( QJSONVALUEREF_TOSTRING )
{
  QJsonValueRef * obj = (QJsonValueRef *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->toString () );
  }
}

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

HB_FUNC_STATIC( QJSONVALUEREF_NEWFROM )
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

HB_FUNC_STATIC( QJSONVALUEREF_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QJSONVALUEREF_NEWFROM );
}

HB_FUNC_STATIC( QJSONVALUEREF_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QJSONVALUEREF_NEWFROM );
}

HB_FUNC_STATIC( QJSONVALUEREF_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QJSONVALUEREF_SETSELFDESTRUCTION )
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
