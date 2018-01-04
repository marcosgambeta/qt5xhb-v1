/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCRIPTENGINE
REQUEST QVARIANT
REQUEST QSCRIPTCLASSPROPERTYITERATOR
REQUEST QSCRIPTVALUE
#endif

CLASS QScriptClass

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD engine
   METHOD extension
   METHOD name
   METHOD newIterator
   METHOD property
   METHOD propertyFlags
   METHOD prototype
   METHOD queryProperty
   METHOD setProperty
   METHOD supportsExtension

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScriptClass
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QScriptClass>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QScriptClass>
#endif

/*
QScriptClass(QScriptEngine * engine)
*/
HB_FUNC_STATIC( QSCRIPTCLASS_NEW )
{
  QScriptClass * o = new QScriptClass ( PQSCRIPTENGINE(1) );
  _qt5xhb_returnNewObject( o, false );
}


HB_FUNC_STATIC( QSCRIPTCLASS_DELETE )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QScriptEngine * engine() const
*/
HB_FUNC_STATIC( QSCRIPTCLASS_ENGINE )
{
  QScriptClass * obj = (QScriptClass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptEngine * ptr = obj->engine ();
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTENGINE" );
  }
}


/*
virtual QVariant extension(Extension extension, const QVariant & argument = QVariant())
*/
HB_FUNC_STATIC( QSCRIPTCLASS_EXTENSION )
{
  QScriptClass * obj = (QScriptClass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(2);
    QVariant * ptr = new QVariant( obj->extension ( (QScriptClass::Extension) hb_parni(1), par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual QString name() const
*/
HB_FUNC_STATIC( QSCRIPTCLASS_NAME )
{
  QScriptClass * obj = (QScriptClass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}


/*
virtual QScriptClassPropertyIterator * newIterator(const QScriptValue & object)
*/
HB_FUNC_STATIC( QSCRIPTCLASS_NEWITERATOR )
{
  QScriptClass * obj = (QScriptClass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptClassPropertyIterator * ptr = obj->newIterator ( *PQSCRIPTVALUE(1) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTCLASSPROPERTYITERATOR" );
  }
}


/*
virtual QScriptValue property(const QScriptValue & object, const QScriptString & name, uint id)
*/
HB_FUNC_STATIC( QSCRIPTCLASS_PROPERTY )
{
  QScriptClass * obj = (QScriptClass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->property ( *PQSCRIPTVALUE(1), *PQSCRIPTSTRING(2), (uint) hb_parni(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
virtual QScriptValue::PropertyFlags propertyFlags(const QScriptValue & object, const QScriptString & name, uint id)
*/
HB_FUNC_STATIC( QSCRIPTCLASS_PROPERTYFLAGS )
{
  QScriptClass * obj = (QScriptClass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->propertyFlags ( *PQSCRIPTVALUE(1), *PQSCRIPTSTRING(2), (uint) hb_parni(3) ) );
  }
}


/*
virtual QScriptValue prototype() const
*/
HB_FUNC_STATIC( QSCRIPTCLASS_PROTOTYPE )
{
  QScriptClass * obj = (QScriptClass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->prototype () );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
virtual QueryFlags queryProperty(const QScriptValue & object, const QScriptString & name, QueryFlags flags, uint * id)
*/
HB_FUNC_STATIC( QSCRIPTCLASS_QUERYPROPERTY )
{
  QScriptClass * obj = (QScriptClass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par3 = hb_parni(3);
    uint * par4 = (uint *) _qt5xhb_itemGetPtr(4);
    hb_retni( obj->queryProperty ( *PQSCRIPTVALUE(1), *PQSCRIPTSTRING(2), (QScriptClass::QueryFlags) par3, par4 ) );
  }
}


/*
virtual void setProperty(QScriptValue & object, const QScriptString & name, uint id, const QScriptValue & value)
*/
HB_FUNC_STATIC( QSCRIPTCLASS_SETPROPERTY )
{
  QScriptClass * obj = (QScriptClass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setProperty ( *PQSCRIPTVALUE(1), *PQSCRIPTSTRING(2), (uint) hb_parni(3), *PQSCRIPTVALUE(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool supportsExtension(Extension extension) const
*/
HB_FUNC_STATIC( QSCRIPTCLASS_SUPPORTSEXTENSION )
{
  QScriptClass * obj = (QScriptClass *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->supportsExtension ( (QScriptClass::Extension) hb_parni(1) ) );
  }
}



HB_FUNC_STATIC( QSCRIPTCLASS_NEWFROM )
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

HB_FUNC_STATIC( QSCRIPTCLASS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSCRIPTCLASS_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTCLASS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSCRIPTCLASS_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTCLASS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSCRIPTCLASS_SETSELFDESTRUCTION )
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