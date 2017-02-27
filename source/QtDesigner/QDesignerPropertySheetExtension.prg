/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QDesignerPropertySheetExtension

   DATA pointer
   DATA class_id INIT Class_Id_QDesignerPropertySheetExtension
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD count
   METHOD hasReset
   METHOD indexOf
   METHOD isAttribute
   METHOD isChanged
   METHOD isVisible
   METHOD property
   METHOD propertyGroup
   METHOD propertyName
   METHOD reset
   METHOD setAttribute
   METHOD setChanged
   METHOD setProperty
   METHOD setPropertyGroup
   METHOD setVisible
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerPropertySheetExtension
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDesignerPropertySheetExtension>
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
#include <QDesignerPropertySheetExtension>
#endif
#endif

#include <QVariant>

HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual int count () const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_COUNT )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
virtual bool hasReset ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_HASRESET )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasReset ( (int) hb_parni(1) ) );
  }
}


/*
virtual int indexOf ( const QString & name ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_INDEXOF )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retni( obj->indexOf ( par1 ) );
  }
}


/*
virtual bool isAttribute ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_ISATTRIBUTE )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAttribute ( (int) hb_parni(1) ) );
  }
}


/*
virtual bool isChanged ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_ISCHANGED )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isChanged ( (int) hb_parni(1) ) );
  }
}


/*
virtual bool isVisible ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_ISVISIBLE )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isVisible ( (int) hb_parni(1) ) );
  }
}


/*
virtual QVariant property ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_PROPERTY )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->property ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual QString propertyGroup ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_PROPERTYGROUP )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->propertyGroup ( (int) hb_parni(1) ).toLatin1().data() );
  }
}


/*
virtual QString propertyName ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_PROPERTYNAME )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->propertyName ( (int) hb_parni(1) ).toLatin1().data() );
  }
}


/*
virtual bool reset ( int index ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_RESET )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->reset ( (int) hb_parni(1) ) );
  }
}


/*
virtual void setAttribute ( int index, bool attribute ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_SETATTRIBUTE )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAttribute ( (int) hb_parni(1), (bool) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setChanged ( int index, bool changed ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_SETCHANGED )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setChanged ( (int) hb_parni(1), (bool) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setProperty ( int index, const QVariant & value ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_SETPROPERTY )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    obj->setProperty ( (int) hb_parni(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setPropertyGroup ( int index, const QString & group ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_SETPROPERTYGROUP )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setPropertyGroup ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setVisible ( int index, bool visible ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_SETVISIBLE )
{
  QDesignerPropertySheetExtension * obj = (QDesignerPropertySheetExtension *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( (int) hb_parni(1), (bool) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_NEWFROM )
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

HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDESIGNERPROPERTYSHEETEXTENSION_NEWFROM );
}

HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDESIGNERPROPERTYSHEETEXTENSION_NEWFROM );
}

HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDESIGNERPROPERTYSHEETEXTENSION_SETSELFDESTRUCTION )
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