/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QMETAENUM
REQUEST QMETAMETHOD
REQUEST QVARIANT
REQUEST QMETAOBJECT
#endif

CLASS QMetaProperty

   DATA pointer
   DATA class_id INIT Class_Id_QMetaProperty
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QMetaProperty
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QMetaProperty>
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
#include <QMetaProperty>
#endif
#endif

/*
QMetaProperty()
*/
HB_FUNC_STATIC( QMETAPROPERTY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMetaProperty * o = new QMetaProperty (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMetaProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QMETAPROPERTY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QMETAPROPERTY_NAME )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * str1 = obj->name (  );
    hb_retc( str1 );
  }
}


/*
const char *typeName() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_TYPENAME )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * str1 = obj->typeName (  );
    hb_retc( str1 );
  }
}


/*
QVariant::Type type() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_TYPE )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}


/*
int userType() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_USERTYPE )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->userType (  ) );
  }
}


/*
int propertyIndex() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_PROPERTYINDEX )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->propertyIndex (  ) );
  }
}


/*
bool isReadable() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISREADABLE )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isReadable (  ) );
  }
}


/*
bool isWritable() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISWRITABLE )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isWritable (  ) );
  }
}


/*
bool isResettable() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISRESETTABLE )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isResettable (  ) );
  }
}


/*
bool isDesignable(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISDESIGNABLE )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QObject * par1 = ISNIL(1)? 0 : (const QObject *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->isDesignable ( par1 ) );
  }
}


/*
bool isScriptable(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISSCRIPTABLE )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QObject * par1 = ISNIL(1)? 0 : (const QObject *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->isScriptable ( par1 ) );
  }
}


/*
bool isStored(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISSTORED )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QObject * par1 = ISNIL(1)? 0 : (const QObject *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->isStored ( par1 ) );
  }
}


/*
bool isEditable(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISEDITABLE )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QObject * par1 = ISNIL(1)? 0 : (const QObject *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->isEditable ( par1 ) );
  }
}


/*
bool isUser(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISUSER )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QObject * par1 = ISNIL(1)? 0 : (const QObject *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->isUser ( par1 ) );
  }
}


/*
bool isConstant() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISCONSTANT )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isConstant (  ) );
  }
}


/*
bool isFinal() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISFINAL )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFinal (  ) );
  }
}


/*
bool isFlagType() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISFLAGTYPE )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFlagType (  ) );
  }
}


/*
bool isEnumType() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISENUMTYPE )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEnumType (  ) );
  }
}


/*
QMetaEnum enumerator() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ENUMERATOR )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMetaEnum * ptr = new QMetaEnum( obj->enumerator (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMETAENUM" );
  }
}


/*
bool hasNotifySignal() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_HASNOTIFYSIGNAL )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasNotifySignal (  ) );
  }
}


/*
QMetaMethod notifySignal() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_NOTIFYSIGNAL )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMetaMethod * ptr = new QMetaMethod( obj->notifySignal (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMETAMETHOD" );
  }
}


/*
int notifySignalIndex() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_NOTIFYSIGNALINDEX )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->notifySignalIndex (  ) );
  }
}


/*
int revision() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_REVISION )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->revision (  ) );
  }
}


/*
QVariant read(const QObject *obj) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_READ )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QObject * par1 = (const QObject *) _qtxhb_itemGetPtr(1);
    QVariant * ptr = new QVariant( obj->read ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
bool write(QObject *obj, const QVariant &value) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_WRITE )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    hb_retl( obj->write ( par1, *par2 ) );
  }
}


/*
bool reset(QObject *obj) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_RESET )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->reset ( par1 ) );
  }
}


/*
bool hasStdCppSet() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_HASSTDCPPSET )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasStdCppSet (  ) );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISVALID )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
const QMetaObject *enclosingMetaObject() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ENCLOSINGMETAOBJECT )
{
  QMetaProperty * obj = (QMetaProperty *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMetaObject * ptr = obj->enclosingMetaObject (  );
    _qt4xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}



HB_FUNC_STATIC( QMETAPROPERTY_NEWFROM )
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

HB_FUNC_STATIC( QMETAPROPERTY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMETAPROPERTY_NEWFROM );
}

HB_FUNC_STATIC( QMETAPROPERTY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMETAPROPERTY_NEWFROM );
}

HB_FUNC_STATIC( QMETAPROPERTY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMETAPROPERTY_SETSELFDESTRUCTION )
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