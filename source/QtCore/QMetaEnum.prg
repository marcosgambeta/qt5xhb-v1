/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QMETAOBJECT
#endif

CLASS QMetaEnum

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

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

#include <Qt>

#ifndef __XHARBOUR__
#include <QMetaEnum>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMetaEnum>
#endif

/*
QMetaEnum()
*/
HB_FUNC_STATIC( QMETAENUM_NEW )
{
  QMetaEnum * o = new QMetaEnum ();
  _qt5xhb_storePointerAndFlag( o, false );
}

HB_FUNC_STATIC( QMETAENUM_DELETE )
{
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
}

/*
const char *name() const
*/
HB_FUNC_STATIC( QMETAENUM_NAME )
{
  QMetaEnum * obj = (QMetaEnum *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const char * str1 = obj->name ();
    hb_retc( str1 );
  }
}

/*
bool isFlag() const
*/
HB_FUNC_STATIC( QMETAENUM_ISFLAG )
{
  QMetaEnum * obj = (QMetaEnum *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isFlag () );
  }
}

/*
int keyCount() const
*/
HB_FUNC_STATIC( QMETAENUM_KEYCOUNT )
{
  QMetaEnum * obj = (QMetaEnum *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->keyCount () );
  }
}

/*
const char *key(int index) const
*/
HB_FUNC_STATIC( QMETAENUM_KEY )
{
  QMetaEnum * obj = (QMetaEnum *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      const char * str1 = obj->key ( PINT(1) );
      hb_retc( str1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int value(int index) const
*/
HB_FUNC_STATIC( QMETAENUM_VALUE )
{
  QMetaEnum * obj = (QMetaEnum *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retni( obj->value ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
const char *scope() const
*/
HB_FUNC_STATIC( QMETAENUM_SCOPE )
{
  QMetaEnum * obj = (QMetaEnum *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const char * str1 = obj->scope ();
    hb_retc( str1 );
  }
}

/*
int keyToValue(const char *key) const
*/
HB_FUNC_STATIC( QMETAENUM_KEYTOVALUE )
{
  QMetaEnum * obj = (QMetaEnum *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      const char * par1 = hb_parc(1);
      hb_retni( obj->keyToValue (  (const char *) par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
const char* valueToKey(int value) const
*/
HB_FUNC_STATIC( QMETAENUM_VALUETOKEY )
{
  QMetaEnum * obj = (QMetaEnum *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      const char * str1 = obj->valueToKey ( PINT(1) );
      hb_retc( str1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int keysToValue(const char * keys) const
*/
HB_FUNC_STATIC( QMETAENUM_KEYSTOVALUE )
{
  QMetaEnum * obj = (QMetaEnum *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      const char * par1 = hb_parc(1);
      hb_retni( obj->keysToValue (  (const char *) par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray valueToKeys(int value) const
*/
HB_FUNC_STATIC( QMETAENUM_VALUETOKEYS )
{
  QMetaEnum * obj = (QMetaEnum *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QByteArray * ptr = new QByteArray( obj->valueToKeys ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
const QMetaObject *enclosingMetaObject() const
*/
HB_FUNC_STATIC( QMETAENUM_ENCLOSINGMETAOBJECT )
{
  QMetaEnum * obj = (QMetaEnum *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QMetaObject * ptr = obj->enclosingMetaObject ();
    _qt5xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QMETAENUM_ISVALID )
{
  QMetaEnum * obj = (QMetaEnum *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isValid () );
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
  HB_FUNC_EXEC( QMETAENUM_NEWFROM );
}

HB_FUNC_STATIC( QMETAENUM_NEWFROMPOINTER )
{
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
