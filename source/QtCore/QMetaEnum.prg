/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBYTEARRAY
REQUEST QMETAOBJECT

CLASS QMetaEnum

   DATA pointer
   DATA class_id INIT Class_Id_QMetaEnum
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD name
   METHOD isFlag
   METHOD keyCount
   METHOD key
   METHOD value
   METHOD scope
   METHOD keyToValue
   METHOD valueToKey
   METHOD keysToValue
   METHOD valueToKeys
   METHOD enclosingMetaObject
   METHOD isValid
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMetaEnum
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QMetaEnum>
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QMetaEnum>
#endif
#endif

/*
QMetaEnum()
*/
HB_FUNC_STATIC( QMETAENUM_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMetaEnum * o = new QMetaEnum (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMetaEnum *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QMETAENUM_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const char *name() const
*/
HB_FUNC_STATIC( QMETAENUM_NAME )
{
  QMetaEnum * obj = (QMetaEnum *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * str1 = obj->name (  );
    hb_retc( str1 );
  }
}


/*
bool isFlag() const
*/
HB_FUNC_STATIC( QMETAENUM_ISFLAG )
{
  QMetaEnum * obj = (QMetaEnum *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFlag (  ) );
  }
}


/*
int keyCount() const
*/
HB_FUNC_STATIC( QMETAENUM_KEYCOUNT )
{
  QMetaEnum * obj = (QMetaEnum *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->keyCount (  ) );
  }
}


/*
const char *key(int index) const
*/
HB_FUNC_STATIC( QMETAENUM_KEY )
{
  QMetaEnum * obj = (QMetaEnum *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * str1 = obj->key ( (int) hb_parni(1) );
    hb_retc( str1 );
  }
}


/*
int value(int index) const
*/
HB_FUNC_STATIC( QMETAENUM_VALUE )
{
  QMetaEnum * obj = (QMetaEnum *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->value ( (int) hb_parni(1) ) );
  }
}


/*
const char *scope() const
*/
HB_FUNC_STATIC( QMETAENUM_SCOPE )
{
  QMetaEnum * obj = (QMetaEnum *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * str1 = obj->scope (  );
    hb_retc( str1 );
  }
}


/*
int keyToValue(const char *key) const
*/
HB_FUNC_STATIC( QMETAENUM_KEYTOVALUE )
{
  QMetaEnum * obj = (QMetaEnum *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    hb_retni( obj->keyToValue (  (const char *) par1 ) );
  }
}


/*
const char* valueToKey(int value) const
*/
HB_FUNC_STATIC( QMETAENUM_VALUETOKEY )
{
  QMetaEnum * obj = (QMetaEnum *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * str1 = obj->valueToKey ( (int) hb_parni(1) );
    hb_retc( str1 );
  }
}


/*
int keysToValue(const char * keys) const
*/
HB_FUNC_STATIC( QMETAENUM_KEYSTOVALUE )
{
  QMetaEnum * obj = (QMetaEnum *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    hb_retni( obj->keysToValue (  (const char *) par1 ) );
  }
}


/*
QByteArray valueToKeys(int value) const
*/
HB_FUNC_STATIC( QMETAENUM_VALUETOKEYS )
{
  QMetaEnum * obj = (QMetaEnum *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->valueToKeys ( (int) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
const QMetaObject *enclosingMetaObject() const
*/
HB_FUNC_STATIC( QMETAENUM_ENCLOSINGMETAOBJECT )
{
  QMetaEnum * obj = (QMetaEnum *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMetaObject * ptr = obj->enclosingMetaObject (  );
    _qt4xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QMETAENUM_ISVALID )
{
  QMetaEnum * obj = (QMetaEnum *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}



HB_FUNC_STATIC( QMETAENUM_NEWFROM )
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

HB_FUNC_STATIC( QMETAENUM_NEWFROMOBJECT )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISOBJECT(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QMETAENUM_NEWFROM );
}

HB_FUNC_STATIC( QMETAENUM_NEWFROMPOINTER )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISPOINTER(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QMETAENUM_NEWFROM );
}

HB_FUNC_STATIC( QMETAENUM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMETAENUM_SETSELFDESTRUCTION )
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