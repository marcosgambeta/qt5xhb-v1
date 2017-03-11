/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMETACLASSINFO
REQUEST QMETAMETHOD
REQUEST QMETAENUM
REQUEST QOBJECT
REQUEST QMETAPROPERTY
REQUEST QBYTEARRAY
#endif

CLASS QMetaObject

   DATA pointer
   DATA class_id INIT Class_Id_QMetaObject
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD classInfo
   METHOD classInfoCount
   METHOD classInfoOffset
   METHOD className
   METHOD constructor
   METHOD constructorCount
   METHOD enumerator
   METHOD enumeratorCount
   METHOD enumeratorOffset
   METHOD indexOfClassInfo
   METHOD indexOfConstructor
   METHOD indexOfEnumerator
   METHOD indexOfMethod
   METHOD indexOfProperty
   METHOD indexOfSignal
   METHOD indexOfSlot
   METHOD method
   METHOD methodCount
   METHOD methodOffset
   METHOD newInstance
   METHOD property
   METHOD propertyCount
   METHOD propertyOffset
   METHOD superClass
   METHOD userProperty
   METHOD checkConnectArgs
   METHOD connectSlotsByName
   METHOD invokeMethod1
   METHOD invokeMethod2
   METHOD invokeMethod3
   METHOD invokeMethod4
   METHOD invokeMethod
   METHOD normalizedSignature
   METHOD normalizedType
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMetaObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMetaObject>
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
#include <QMetaObject>
#endif

#include <QMetaClassInfo>
#include <QMetaMethod>
#include <QMetaEnum>
#include <QMetaProperty>
#include <QByteArray>


HB_FUNC_STATIC( QMETAOBJECT_DELETE )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QMetaClassInfo classInfo ( int index ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_CLASSINFO )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMetaClassInfo * ptr = new QMetaClassInfo( obj->classInfo ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QMETACLASSINFO" );
  }
}


/*
int classInfoCount () const
*/
HB_FUNC_STATIC( QMETAOBJECT_CLASSINFOCOUNT )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->classInfoCount (  ) );
  }
}


/*
int classInfoOffset () const
*/
HB_FUNC_STATIC( QMETAOBJECT_CLASSINFOOFFSET )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->classInfoOffset (  ) );
  }
}


/*
const char * className () const
*/
HB_FUNC_STATIC( QMETAOBJECT_CLASSNAME )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * str1 = obj->className (  );
    hb_retc( str1 );
  }
}


/*
QMetaMethod constructor ( int index ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_CONSTRUCTOR )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMetaMethod * ptr = new QMetaMethod( obj->constructor ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QMETAMETHOD" );
  }
}


/*
int constructorCount () const
*/
HB_FUNC_STATIC( QMETAOBJECT_CONSTRUCTORCOUNT )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->constructorCount (  ) );
  }
}


/*
QMetaEnum enumerator ( int index ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_ENUMERATOR )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMetaEnum * ptr = new QMetaEnum( obj->enumerator ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QMETAENUM" );
  }
}


/*
int enumeratorCount () const
*/
HB_FUNC_STATIC( QMETAOBJECT_ENUMERATORCOUNT )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->enumeratorCount (  ) );
  }
}


/*
int enumeratorOffset () const
*/
HB_FUNC_STATIC( QMETAOBJECT_ENUMERATOROFFSET )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->enumeratorOffset (  ) );
  }
}


/*
int indexOfClassInfo ( const char * name ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_INDEXOFCLASSINFO )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    hb_retni( obj->indexOfClassInfo (  (const char *) par1 ) );
  }
}


/*
int indexOfConstructor ( const char * constructor ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_INDEXOFCONSTRUCTOR )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    hb_retni( obj->indexOfConstructor (  (const char *) par1 ) );
  }
}


/*
int indexOfEnumerator ( const char * name ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_INDEXOFENUMERATOR )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    hb_retni( obj->indexOfEnumerator (  (const char *) par1 ) );
  }
}


/*
int indexOfMethod ( const char * method ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_INDEXOFMETHOD )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    hb_retni( obj->indexOfMethod (  (const char *) par1 ) );
  }
}


/*
int indexOfProperty ( const char * name ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_INDEXOFPROPERTY )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    hb_retni( obj->indexOfProperty (  (const char *) par1 ) );
  }
}


/*
int indexOfSignal ( const char * signal ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_INDEXOFSIGNAL )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    hb_retni( obj->indexOfSignal (  (const char *) par1 ) );
  }
}


/*
int indexOfSlot ( const char * slot ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_INDEXOFSLOT )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    hb_retni( obj->indexOfSlot (  (const char *) par1 ) );
  }
}


/*
QMetaMethod method ( int index ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_METHOD )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMetaMethod * ptr = new QMetaMethod( obj->method ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QMETAMETHOD" );
  }
}


/*
int methodCount () const
*/
HB_FUNC_STATIC( QMETAOBJECT_METHODCOUNT )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->methodCount (  ) );
  }
}


/*
int methodOffset () const
*/
HB_FUNC_STATIC( QMETAOBJECT_METHODOFFSET )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->methodOffset (  ) );
  }
}


/*
QObject * newInstance ( QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_NEWINSTANCE )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->newInstance (  );
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
QMetaProperty property ( int index ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_PROPERTY )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMetaProperty * ptr = new QMetaProperty( obj->property ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QMETAPROPERTY" );
  }
}


/*
int propertyCount () const
*/
HB_FUNC_STATIC( QMETAOBJECT_PROPERTYCOUNT )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->propertyCount (  ) );
  }
}


/*
int propertyOffset () const
*/
HB_FUNC_STATIC( QMETAOBJECT_PROPERTYOFFSET )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->propertyOffset (  ) );
  }
}


/*
const QMetaObject * superClass () const
*/
HB_FUNC_STATIC( QMETAOBJECT_SUPERCLASS )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMetaObject * ptr = obj->superClass (  );
    _qt5xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}


/*
QMetaProperty userProperty () const
*/
HB_FUNC_STATIC( QMETAOBJECT_USERPROPERTY )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMetaProperty * ptr = new QMetaProperty( obj->userProperty (  ) );
    _qt5xhb_createReturnClass ( ptr, "QMETAPROPERTY" );
  }
}


/*
static bool checkConnectArgs ( const char * signal, const char * method )
*/
HB_FUNC_STATIC( QMETAOBJECT_CHECKCONNECTARGS )
{
  const char * par1 = hb_parc(1);
  const char * par2 = hb_parc(2);
  hb_retl( QMetaObject::checkConnectArgs (  (const char *) par1,  (const char *) par2 ) );
}


/*
static void connectSlotsByName ( QObject * object )
*/
HB_FUNC_STATIC( QMETAOBJECT_CONNECTSLOTSBYNAME )
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  QMetaObject::connectSlotsByName ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool invokeMethod ( QObject * obj, const char * member, Qt::ConnectionType type, QGenericReturnArgument ret, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
*/
HB_FUNC_STATIC( QMETAOBJECT_INVOKEMETHOD1 )
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  const char * par2 = hb_parc(2);
  int par3 = hb_parni(3);
  hb_retl( QMetaObject::invokeMethod ( par1,  (const char *) par2,  (Qt::ConnectionType) par3 ) );
}

/*
static bool invokeMethod ( QObject * obj, const char * member, QGenericReturnArgument ret, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
*/
HB_FUNC_STATIC( QMETAOBJECT_INVOKEMETHOD2 )
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  const char * par2 = hb_parc(2);
  hb_retl( QMetaObject::invokeMethod ( par1,  (const char *) par2 ) );
}

/*
static bool invokeMethod ( QObject * obj, const char * member, Qt::ConnectionType type, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
*/
HB_FUNC_STATIC( QMETAOBJECT_INVOKEMETHOD3 )
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  const char * par2 = hb_parc(2);
  int par3 = hb_parni(3);
  hb_retl( QMetaObject::invokeMethod ( par1,  (const char *) par2,  (Qt::ConnectionType) par3 ) );
}

/*
static bool invokeMethod ( QObject * obj, const char * member, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
*/
HB_FUNC_STATIC( QMETAOBJECT_INVOKEMETHOD4 )
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  const char * par2 = hb_parc(2);
  hb_retl( QMetaObject::invokeMethod ( par1,  (const char *) par2 ) );
}


//[1]bool invokeMethod ( QObject * obj, const char * member, Qt::ConnectionType type, QGenericReturnArgument ret, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
//[2]bool invokeMethod ( QObject * obj, const char * member, QGenericReturnArgument ret, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
//[3]bool invokeMethod ( QObject * obj, const char * member, Qt::ConnectionType type, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
//[4]bool invokeMethod ( QObject * obj, const char * member, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )

HB_FUNC_STATIC( QMETAOBJECT_INVOKEMETHOD )
{
  if( ISBETWEEN(4,14) && ISQOBJECT(1) && ISCHAR(2) && ISNUM(3) && ISOBJECT(4) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) && (ISOBJECT(13)||ISNIL(13)) && (ISOBJECT(14)||ISNIL(14)) )
  {
    HB_FUNC_EXEC( QMETAOBJECT_INVOKEMETHOD1 );
  }
  else if( ISBETWEEN(3,13) && ISQOBJECT(1) && ISCHAR(2) && ISOBJECT(3) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) && (ISOBJECT(13)||ISNIL(13)) )
  {
    HB_FUNC_EXEC( QMETAOBJECT_INVOKEMETHOD2 );
  }
  else if( ISBETWEEN(3,13) && ISQOBJECT(1) && ISCHAR(2) && ISNUM(3) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) && (ISOBJECT(13)||ISNIL(13)) )
  {
    HB_FUNC_EXEC( QMETAOBJECT_INVOKEMETHOD3 );
  }
  else if( ISBETWEEN(3,12) && ISQOBJECT(1) && ISCHAR(2) && (ISOBJECT(3)||ISNIL(3)) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) )
  {
    HB_FUNC_EXEC( QMETAOBJECT_INVOKEMETHOD4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QByteArray normalizedSignature ( const char * method )
*/
HB_FUNC_STATIC( QMETAOBJECT_NORMALIZEDSIGNATURE )
{
  const char * par1 = hb_parc(1);
  QByteArray * ptr = new QByteArray( QMetaObject::normalizedSignature (  (const char *) par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}


/*
static QByteArray normalizedType ( const char * type )
*/
HB_FUNC_STATIC( QMETAOBJECT_NORMALIZEDTYPE )
{
  const char * par1 = hb_parc(1);
  QByteArray * ptr = new QByteArray( QMetaObject::normalizedType (  (const char *) par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}



HB_FUNC_STATIC( QMETAOBJECT_NEWFROM )
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

HB_FUNC_STATIC( QMETAOBJECT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMETAOBJECT_NEWFROM );
}

HB_FUNC_STATIC( QMETAOBJECT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMETAOBJECT_NEWFROM );
}

HB_FUNC_STATIC( QMETAOBJECT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMETAOBJECT_SETSELFDESTRUCTION )
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