$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMETAENUM
REQUEST QMETAMETHOD
REQUEST QVARIANT
REQUEST QMETAOBJECT
#endif

CLASS QMetaProperty

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD name
   METHOD typeName
   METHOD type
   METHOD userType
   METHOD propertyIndex
   METHOD isReadable
   METHOD isWritable
   METHOD isResettable
   METHOD isDesignable
   METHOD isScriptable
   METHOD isStored
   METHOD isEditable
   METHOD isUser
   METHOD isConstant
   METHOD isFinal
   METHOD isFlagType
   METHOD isEnumType
   METHOD enumerator
   METHOD hasNotifySignal
   METHOD notifySignal
   METHOD notifySignalIndex
   METHOD revision
   METHOD read
   METHOD write
   METHOD reset
   METHOD hasStdCppSet
   METHOD isValid
   METHOD enclosingMetaObject

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
QMetaProperty()
*/
HB_FUNC_STATIC( QMETAPROPERTY_NEW )
{
  QMetaProperty * o = new QMetaProperty ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
const char *name() const
*/
$method=|const char *|name|

/*
const char *typeName() const
*/
$method=|const char *|typeName|

/*
QVariant::Type type() const
*/
$method=|QVariant::Type|type|

/*
int userType() const
*/
$method=|int|userType|

/*
int propertyIndex() const
*/
$method=|int|propertyIndex|

/*
bool isReadable() const
*/
$method=|bool|isReadable|

/*
bool isWritable() const
*/
$method=|bool|isWritable|

/*
bool isResettable() const
*/
$method=|bool|isResettable|

/*
bool isDesignable(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISDESIGNABLE )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTQOBJECT(1) )
    {
      const QObject * par1 = ISNIL(1)? 0 : (const QObject *) _qt5xhb_itemGetPtr(1);
      RBOOL( obj->isDesignable ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isScriptable(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISSCRIPTABLE )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTQOBJECT(1) )
    {
      const QObject * par1 = ISNIL(1)? 0 : (const QObject *) _qt5xhb_itemGetPtr(1);
      RBOOL( obj->isScriptable ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isStored(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISSTORED )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTQOBJECT(1) )
    {
      const QObject * par1 = ISNIL(1)? 0 : (const QObject *) _qt5xhb_itemGetPtr(1);
      RBOOL( obj->isStored ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isEditable(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISEDITABLE )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTQOBJECT(1) )
    {
      const QObject * par1 = ISNIL(1)? 0 : (const QObject *) _qt5xhb_itemGetPtr(1);
      RBOOL( obj->isEditable ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isUser(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISUSER )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTQOBJECT(1) )
    {
      const QObject * par1 = ISNIL(1)? 0 : (const QObject *) _qt5xhb_itemGetPtr(1);
      RBOOL( obj->isUser ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isConstant() const
*/
$method=|bool|isConstant|

/*
bool isFinal() const
*/
$method=|bool|isFinal|

/*
bool isFlagType() const
*/
$method=|bool|isFlagType|

/*
bool isEnumType() const
*/
$method=|bool|isEnumType|

/*
QMetaEnum enumerator() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ENUMERATOR )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMetaEnum * ptr = new QMetaEnum( obj->enumerator () );
    _qt5xhb_createReturnClass ( ptr, "QMETAENUM" );
  }
}

/*
bool hasNotifySignal() const
*/
$method=|bool|hasNotifySignal|

/*
QMetaMethod notifySignal() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_NOTIFYSIGNAL )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMetaMethod * ptr = new QMetaMethod( obj->notifySignal () );
    _qt5xhb_createReturnClass ( ptr, "QMETAMETHOD" );
  }
}

/*
int notifySignalIndex() const
*/
$method=|int|notifySignalIndex|

/*
int revision() const
*/
$method=|int|revision|

/*
QVariant read(const QObject *obj) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_READ )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQOBJECT(1) )
    {
      const QObject * par1 = (const QObject *) _qt5xhb_itemGetPtr(1);
      QVariant * ptr = new QVariant( obj->read ( par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool write(QObject *obj, const QVariant &value) const
*/
$method=|bool|write|QObject *,const QVariant &

/*
bool reset(QObject *obj) const
*/
$method=|bool|reset|QObject *

/*
bool hasStdCppSet() const
*/
$method=|bool|hasStdCppSet|

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
const QMetaObject *enclosingMetaObject() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ENCLOSINGMETAOBJECT )
{
  QMetaProperty * obj = (QMetaProperty *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QMetaObject * ptr = obj->enclosingMetaObject ();
    _qt5xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}

$extraMethods

#pragma ENDDUMP
