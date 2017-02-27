/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QSCRIPTENGINE
REQUEST QVARIANT
REQUEST QSCRIPTCLASSPROPERTYITERATOR
REQUEST QSCRIPTVALUE
#endif

CLASS QScriptClass

   DATA pointer
   DATA class_id INIT Class_Id_QScriptClass
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QScriptClass>
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
#include <QScriptClass>
#endif
#endif

/*
QScriptClass(QScriptEngine * engine)
*/
HB_FUNC_STATIC( QSCRIPTCLASS_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QScriptEngine * par1 = (QScriptEngine *) _qtxhb_itemGetPtr(1);
  QScriptClass * o = new QScriptClass ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScriptClass *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QSCRIPTCLASS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
QScriptEngine * engine() const
*/
HB_FUNC_STATIC( QSCRIPTCLASS_ENGINE )
{
  QScriptClass * obj = (QScriptClass *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptEngine * ptr = obj->engine (  );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTENGINE" );
  }
}


/*
virtual QVariant extension(Extension extension, const QVariant & argument = QVariant())
*/
HB_FUNC_STATIC( QSCRIPTCLASS_EXTENSION )
{
  QScriptClass * obj = (QScriptClass *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(2);
    QVariant * ptr = new QVariant( obj->extension (  (QScriptClass::Extension) par1, par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual QString name() const
*/
HB_FUNC_STATIC( QSCRIPTCLASS_NAME )
{
  QScriptClass * obj = (QScriptClass *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}


/*
virtual QScriptClassPropertyIterator * newIterator(const QScriptValue & object)
*/
HB_FUNC_STATIC( QSCRIPTCLASS_NEWITERATOR )
{
  QScriptClass * obj = (QScriptClass *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qtxhb_itemGetPtr(1);
    QScriptClassPropertyIterator * ptr = obj->newIterator ( *par1 );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTCLASSPROPERTYITERATOR" );
  }
}


/*
virtual QScriptValue property(const QScriptValue & object, const QScriptString & name, uint id)
*/
HB_FUNC_STATIC( QSCRIPTCLASS_PROPERTY )
{
  QScriptClass * obj = (QScriptClass *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qtxhb_itemGetPtr(1);
    QScriptString * par2 = (QScriptString *) _qtxhb_itemGetPtr(2);
    QScriptValue * ptr = new QScriptValue( obj->property ( *par1, *par2, (uint) hb_parni(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
virtual QScriptValue::PropertyFlags propertyFlags(const QScriptValue & object, const QScriptString & name, uint id)
*/
HB_FUNC_STATIC( QSCRIPTCLASS_PROPERTYFLAGS )
{
  QScriptClass * obj = (QScriptClass *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qtxhb_itemGetPtr(1);
    QScriptString * par2 = (QScriptString *) _qtxhb_itemGetPtr(2);
    hb_retni( obj->propertyFlags ( *par1, *par2, (uint) hb_parni(3) ) );
  }
}


/*
virtual QScriptValue prototype() const
*/
HB_FUNC_STATIC( QSCRIPTCLASS_PROTOTYPE )
{
  QScriptClass * obj = (QScriptClass *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->prototype (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
virtual QueryFlags queryProperty(const QScriptValue & object, const QScriptString & name, QueryFlags flags, uint * id)
*/
HB_FUNC_STATIC( QSCRIPTCLASS_QUERYPROPERTY )
{
  QScriptClass * obj = (QScriptClass *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qtxhb_itemGetPtr(1);
    QScriptString * par2 = (QScriptString *) _qtxhb_itemGetPtr(2);
    int par3 = hb_parni(3);
    uint * par4 = (uint *) _qtxhb_itemGetPtr(4);
    hb_retni( obj->queryProperty ( *par1, *par2,  (QScriptClass::QueryFlags) par3, par4 ) );
  }
}


/*
virtual void setProperty(QScriptValue & object, const QScriptString & name, uint id, const QScriptValue & value)
*/
HB_FUNC_STATIC( QSCRIPTCLASS_SETPROPERTY )
{
  QScriptClass * obj = (QScriptClass *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) _qtxhb_itemGetPtr(1);
    QScriptString * par2 = (QScriptString *) _qtxhb_itemGetPtr(2);
    QScriptValue * par4 = (QScriptValue *) _qtxhb_itemGetPtr(4);
    obj->setProperty ( *par1, *par2, (uint) hb_parni(3), *par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool supportsExtension(Extension extension) const
*/
HB_FUNC_STATIC( QSCRIPTCLASS_SUPPORTSEXTENSION )
{
  QScriptClass * obj = (QScriptClass *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->supportsExtension (  (QScriptClass::Extension) par1 ) );
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