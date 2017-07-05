$header

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

$destructor

#pragma BEGINDUMP

$includes

/*
QMetaMethod()
*/
HB_FUNC_STATIC( QMETAMETHOD_NEW )
{
  QMetaMethod * o = new QMetaMethod ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
const char *typeName() const
*/
$method=|const char *|typeName|

/*
QList<QByteArray> parameterTypes() const
*/
HB_FUNC_STATIC( QMETAMETHOD_PARAMETERTYPES )
{
  QMetaMethod * obj = (QMetaMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QByteArray> list = obj->parameterTypes ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
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
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
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
$method=|const char *|tag|

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
$method=|int|attributes|

/*
int methodIndex() const
*/
$method=|int|methodIndex|

/*
int revision() const
*/
$method=|int|revision|

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
$method=|int|returnType|

/*
int parameterCount() const
*/
$method=|int|parameterCount|

/*
int parameterType(int index) const
*/
$method=|int|parameterType|int

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
$method=|bool|isValid|

$extraMethods

#pragma ENDDUMP
