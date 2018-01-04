/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QMETAOBJECT
#endif

CLASS QMetaMethod

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD typeName
   METHOD parameterTypes
   METHOD parameterNames
   METHOD tag
   METHOD access
   METHOD methodType
   METHOD attributes
   METHOD methodIndex
   METHOD revision
   METHOD enclosingMetaObject
   METHOD invoke
   METHOD methodSignature
   METHOD name
   METHOD returnType
   METHOD parameterCount
   METHOD parameterType
   METHOD getParameterTypes
   METHOD isValid

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMetaMethod
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMetaMethod>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMetaMethod>
#endif

/*
QMetaMethod()
*/
HB_FUNC_STATIC( QMETAMETHOD_NEW )
{
  QMetaMethod * o = new QMetaMethod ();
  _qt5xhb_returnNewObject( o, false );
}

HB_FUNC_STATIC( QMETAMETHOD_DELETE )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
const char *typeName() const
*/
HB_FUNC_STATIC( QMETAMETHOD_TYPENAME )
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const char * str1 = obj->typeName ();
    hb_retc( str1 );
  }
}

/*
QList<QByteArray> parameterTypes() const
*/
HB_FUNC_STATIC( QMETAMETHOD_PARAMETERTYPES )
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QByteArray> list = obj->parameterTypes ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QList<QByteArray> parameterNames() const
*/
HB_FUNC_STATIC( QMETAMETHOD_PARAMETERNAMES )
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QByteArray> list = obj->parameterNames ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
const char *tag() const
*/
HB_FUNC_STATIC( QMETAMETHOD_TAG )
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const char * str1 = obj->tag ();
    hb_retc( str1 );
  }
}

/*
Access access() const
*/
HB_FUNC_STATIC( QMETAMETHOD_ACCESS )
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->access () );
  }
}

/*
MethodType methodType() const
*/
HB_FUNC_STATIC( QMETAMETHOD_METHODTYPE )
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->methodType () );
  }
}

/*
int attributes() const
*/
HB_FUNC_STATIC( QMETAMETHOD_ATTRIBUTES )
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->attributes () );
  }
}

/*
int methodIndex() const
*/
HB_FUNC_STATIC( QMETAMETHOD_METHODINDEX )
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->methodIndex () );
  }
}

/*
int revision() const
*/
HB_FUNC_STATIC( QMETAMETHOD_REVISION )
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->revision () );
  }
}

/*
const QMetaObject *enclosingMetaObject() const
*/
HB_FUNC_STATIC( QMETAMETHOD_ENCLOSINGMETAOBJECT )
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QMetaObject * ptr = obj->enclosingMetaObject ();
    _qt5xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}

/*
bool invoke(QObject *object,Qt::ConnectionType connectionType,QGenericReturnArgument returnValue,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
*/
void QMetaMethod_invoke1 ()
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->invoke ( PQOBJECT(1), (Qt::ConnectionType) hb_parni(2) ) );
  }
}

/*
bool invoke(QObject *object,QGenericReturnArgument returnValue,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
*/
void QMetaMethod_invoke2 ()
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->invoke ( PQOBJECT(1) ) );
  }
}

/*
bool invoke(QObject *object,Qt::ConnectionType connectionType,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
*/
void QMetaMethod_invoke3 ()
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->invoke ( PQOBJECT(1), (Qt::ConnectionType) hb_parni(2) ) );
  }
}

/*
bool invoke(QObject *object,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
*/
void QMetaMethod_invoke4 ()
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->invoke ( PQOBJECT(1) ) );
  }
}

//[1]bool invoke(QObject *object,Qt::ConnectionType connectionType,QGenericReturnArgument returnValue,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
//[2]bool invoke(QObject *object,QGenericReturnArgument returnValue,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
//[3]bool invoke(QObject *object,Qt::ConnectionType connectionType,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
//[4]bool invoke(QObject *object,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const

HB_FUNC_STATIC( QMETAMETHOD_INVOKE )
{
  if( ISBETWEEN(3,13) && ISQOBJECT(1) && ISNUM(1) && ISOBJECT(3) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) && (ISOBJECT(13)||ISNIL(13)) )
  {
    QMetaMethod_invoke1();
  }
  else if( ISBETWEEN(2,12) && ISQOBJECT(1) && ISOBJECT(2) && (ISOBJECT(3)||ISNIL(3)) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) )
  {
    QMetaMethod_invoke2();
  }
  else if( ISBETWEEN(2,12) && ISQOBJECT(1) && ISNUM(2) && (ISOBJECT(3)||ISNIL(3)) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) )
  {
    QMetaMethod_invoke3();
  }
  else if( ISBETWEEN(1,11) && ISQOBJECT(1) && (ISOBJECT(2)||ISNIL(2)) && (ISOBJECT(3)||ISNIL(3)) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) )
  {
    QMetaMethod_invoke4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray methodSignature() const
*/
HB_FUNC_STATIC( QMETAMETHOD_METHODSIGNATURE )
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->methodSignature () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
QByteArray name() const
*/
HB_FUNC_STATIC( QMETAMETHOD_NAME )
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->name () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
int returnType() const
*/
HB_FUNC_STATIC( QMETAMETHOD_RETURNTYPE )
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->returnType () );
  }
}

/*
int parameterCount() const
*/
HB_FUNC_STATIC( QMETAMETHOD_PARAMETERCOUNT )
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->parameterCount () );
  }
}

/*
int parameterType(int index) const
*/
HB_FUNC_STATIC( QMETAMETHOD_PARAMETERTYPE )
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->parameterType ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void getParameterTypes(int *types) const
*/
HB_FUNC_STATIC( QMETAMETHOD_GETPARAMETERTYPES )
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1;
      obj->getParameterTypes ( &par1 );
      hb_storni( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QMETAMETHOD_ISVALID )
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

HB_FUNC_STATIC( QMETAMETHOD_NEWFROM )
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

HB_FUNC_STATIC( QMETAMETHOD_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMETAMETHOD_NEWFROM );
}

HB_FUNC_STATIC( QMETAMETHOD_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMETAMETHOD_NEWFROM );
}

HB_FUNC_STATIC( QMETAMETHOD_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMETAMETHOD_SETSELFDESTRUCTION )
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
