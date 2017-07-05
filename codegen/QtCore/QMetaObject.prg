$header

#include "hbclass.ch"

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

$destructor

#pragma BEGINDUMP

$includes

#include <QMetaClassInfo>
#include <QMetaMethod>
#include <QMetaEnum>
#include <QMetaProperty>
#include <QByteArray>

$deleteMethod

/*
QMetaClassInfo classInfo ( int index ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_CLASSINFO )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QMetaClassInfo * ptr = new QMetaClassInfo( obj->classInfo ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QMETACLASSINFO" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int classInfoCount () const
*/
$method=|int|classInfoCount|

/*
int classInfoOffset () const
*/
$method=|int|classInfoOffset|

/*
const char * className () const
*/
$method=|const char *|className|

/*
QMetaMethod constructor ( int index ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_CONSTRUCTOR )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QMetaMethod * ptr = new QMetaMethod( obj->constructor ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QMETAMETHOD" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int constructorCount () const
*/
$method=|int|constructorCount|

/*
QMetaEnum enumerator ( int index ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_ENUMERATOR )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QMetaEnum * ptr = new QMetaEnum( obj->enumerator ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QMETAENUM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int enumeratorCount () const
*/
$method=|int|enumeratorCount|

/*
int enumeratorOffset () const
*/
$method=|int|enumeratorOffset|

/*
int indexOfClassInfo ( const char * name ) const
*/
$method=|int|indexOfClassInfo|const char *

/*
int indexOfConstructor ( const char * constructor ) const
*/
$method=|int|indexOfConstructor|const char *

/*
int indexOfEnumerator ( const char * name ) const
*/
$method=|int|indexOfEnumerator|const char *

/*
int indexOfMethod ( const char * method ) const
*/
$method=|int|indexOfMethod|const char *

/*
int indexOfProperty ( const char * name ) const
*/
$method=|int|indexOfProperty|const char *

/*
int indexOfSignal ( const char * signal ) const
*/
$method=|int|indexOfSignal|const char *

/*
int indexOfSlot ( const char * slot ) const
*/
$method=|int|indexOfSlot|const char *

/*
QMetaMethod method ( int index ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_METHOD )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QMetaMethod * ptr = new QMetaMethod( obj->method ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QMETAMETHOD" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int methodCount () const
*/
$method=|int|methodCount|

/*
int methodOffset () const
*/
$method=|int|methodOffset|

/*
QObject * newInstance ( QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_NEWINSTANCE ) // TODO: implementar parametros
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObject * ptr = obj->newInstance ();
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
    if( ISNUM(1) )
    {
      QMetaProperty * ptr = new QMetaProperty( obj->property ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QMETAPROPERTY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int propertyCount () const
*/
$method=|int|propertyCount|

/*
int propertyOffset () const
*/
$method=|int|propertyOffset|

/*
const QMetaObject * superClass () const
*/
HB_FUNC_STATIC( QMETAOBJECT_SUPERCLASS )
{
  QMetaObject * obj = (QMetaObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QMetaObject * ptr = obj->superClass ();
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
    QMetaProperty * ptr = new QMetaProperty( obj->userProperty () );
    _qt5xhb_createReturnClass ( ptr, "QMETAPROPERTY" );
  }
}

/*
static bool checkConnectArgs ( const char * signal, const char * method )
*/
$staticMethod=|bool|checkConnectArgs|const char *,const char *

/*
static void connectSlotsByName ( QObject * object )
*/
$staticMethod=|void|connectSlotsByName|QObject *

/*
static bool invokeMethod ( QObject * obj, const char * member, Qt::ConnectionType type, QGenericReturnArgument ret, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
*/
void QMetaObject_invokeMethod1 ()
{
  RBOOL( QMetaObject::invokeMethod ( PQOBJECT(1), PCONSTCHAR(2), (Qt::ConnectionType) hb_parni(3) ) );
}

/*
static bool invokeMethod ( QObject * obj, const char * member, QGenericReturnArgument ret, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
*/
void QMetaObject_invokeMethod2 ()
{
  RBOOL( QMetaObject::invokeMethod ( PQOBJECT(1), PCONSTCHAR(2) ) );
}

/*
static bool invokeMethod ( QObject * obj, const char * member, Qt::ConnectionType type, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
*/
void QMetaObject_invokeMethod3 ()
{
  RBOOL( QMetaObject::invokeMethod ( PQOBJECT(1), PCONSTCHAR(2), (Qt::ConnectionType) hb_parni(3) ) );
}

/*
static bool invokeMethod ( QObject * obj, const char * member, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
*/
void QMetaObject_invokeMethod4 ()
{
  RBOOL( QMetaObject::invokeMethod ( PQOBJECT(1), PCONSTCHAR(2) ) );
}

//[1]bool invokeMethod ( QObject * obj, const char * member, Qt::ConnectionType type, QGenericReturnArgument ret, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
//[2]bool invokeMethod ( QObject * obj, const char * member, QGenericReturnArgument ret, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
//[3]bool invokeMethod ( QObject * obj, const char * member, Qt::ConnectionType type, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
//[4]bool invokeMethod ( QObject * obj, const char * member, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )

HB_FUNC_STATIC( QMETAOBJECT_INVOKEMETHOD )
{
  if( ISBETWEEN(4,14) && ISQOBJECT(1) && ISCHAR(2) && ISNUM(3) && ISOBJECT(4) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) && (ISOBJECT(13)||ISNIL(13)) && (ISOBJECT(14)||ISNIL(14)) )
  {
    QMetaObject_invokeMethod1();
  }
  else if( ISBETWEEN(3,13) && ISQOBJECT(1) && ISCHAR(2) && ISOBJECT(3) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) && (ISOBJECT(13)||ISNIL(13)) )
  {
    QMetaObject_invokeMethod2();
  }
  else if( ISBETWEEN(3,13) && ISQOBJECT(1) && ISCHAR(2) && ISNUM(3) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) && (ISOBJECT(13)||ISNIL(13)) )
  {
    QMetaObject_invokeMethod3();
  }
  else if( ISBETWEEN(3,12) && ISQOBJECT(1) && ISCHAR(2) && (ISOBJECT(3)||ISNIL(3)) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) )
  {
    QMetaObject_invokeMethod4();
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
  if( ISCHAR(1) )
  {
    QByteArray * ptr = new QByteArray( QMetaObject::normalizedSignature ( PCONSTCHAR(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QByteArray normalizedType ( const char * type )
*/
HB_FUNC_STATIC( QMETAOBJECT_NORMALIZEDTYPE )
{
  if( ISCHAR(1) )
  {
    QByteArray * ptr = new QByteArray( QMetaObject::normalizedType ( PCONSTCHAR(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
