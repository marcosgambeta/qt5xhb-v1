/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QJSONARRAY
REQUEST QJSONOBJECT
#endif

CLASS QJsonValueRef

   DATA pointer
   DATA class_id INIT Class_Id_QJsonValueRef
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QJsonValueRef>
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
#include <QJsonValueRef>
#endif
#endif

#include <QJsonArray>
#include <QJsonObject>

/*
QJsonValueRef(QJsonArray *array, int idx)
*/
HB_FUNC_STATIC( QJSONVALUEREF_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QJsonArray * par1 = (QJsonArray *) _qt5xhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QJsonValueRef * o = new QJsonValueRef ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QJsonValueRef *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QJsonValueRef(QJsonObject *object, int idx)
*/
HB_FUNC_STATIC( QJSONVALUEREF_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QJsonObject * par1 = (QJsonObject *) _qt5xhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QJsonValueRef * o = new QJsonValueRef ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QJsonValueRef *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QJsonValueRef(QJsonArray *array, int idx)
//[2]QJsonValueRef(QJsonObject *object, int idx)

HB_FUNC_STATIC( QJSONVALUEREF_NEW )
{
  if( ISNUMPAR(2) && ISQJSONARRAY(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QJSONVALUEREF_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQJSONOBJECT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QJSONVALUEREF_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QJSONVALUEREF_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
QJsonValue::Type type() const
*/
HB_FUNC_STATIC( QJSONVALUEREF_TYPE )
{
  QJsonValueRef * obj = (QJsonValueRef *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type (  ) );
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
    hb_retl( obj->isNull (  ) );
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
    hb_retl( obj->isBool (  ) );
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
    hb_retl( obj->isDouble (  ) );
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
    hb_retl( obj->isString (  ) );
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
    hb_retl( obj->isArray (  ) );
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
    hb_retl( obj->isObject (  ) );
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
    hb_retl( obj->isUndefined (  ) );
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
    hb_retl( obj->toBool (  ) );
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
    hb_retni( obj->toInt (  ) );
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
    hb_retnd( obj->toDouble (  ) );
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
    hb_retc( (const char *) obj->toString (  ).toLatin1().data() );
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
    QJsonArray * ptr = new QJsonArray( obj->toArray (  ) );
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
    QJsonObject * ptr = new QJsonObject( obj->toObject (  ) );
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
