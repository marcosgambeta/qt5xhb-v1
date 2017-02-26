/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QDESIGNERFORMWINDOWINTERFACE
#endif

CLASS QDesignerFormWindowCursorInterface

   DATA pointer
   DATA class_id INIT Class_Id_QDesignerFormWindowCursorInterface
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD current
   METHOD formWindow
   METHOD hasSelection
   METHOD isWidgetSelected
   METHOD movePosition
   METHOD position
   METHOD selectedWidget
   METHOD selectedWidgetCount
   METHOD setPosition
   METHOD widget
   METHOD widgetCount
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerFormWindowCursorInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDesignerFormWindowCursorInterface>
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
#include <QDesignerFormWindowCursorInterface>
#endif
#endif

HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QWidget * current () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_CURRENT )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->current (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
virtual QDesignerFormWindowInterface * formWindow () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_FORMWINDOW )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDesignerFormWindowInterface * ptr = obj->formWindow (  );
    _qt4xhb_createReturnClass ( ptr, "QDESIGNERFORMWINDOWINTERFACE" );
  }
}


/*
virtual bool hasSelection () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_HASSELECTION )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasSelection (  ) );
  }
}


/*
bool isWidgetSelected ( QWidget * widget ) const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_ISWIDGETSELECTED )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->isWidgetSelected ( par1 ) );
  }
}


/*
virtual bool movePosition ( MoveOperation operation, MoveMode mode = MoveAnchor ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_MOVEPOSITION )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) QDesignerFormWindowCursorInterface::MoveAnchor : hb_parni(2);
    hb_retl( obj->movePosition (  (QDesignerFormWindowCursorInterface::MoveOperation) par1,  (QDesignerFormWindowCursorInterface::MoveMode) par2 ) );
  }
}


/*
virtual int position () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_POSITION )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->position (  ) );
  }
}



/*
virtual QWidget * selectedWidget ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_SELECTEDWIDGET )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->selectedWidget ( (int) hb_parni(1) );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
virtual int selectedWidgetCount () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_SELECTEDWIDGETCOUNT )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->selectedWidgetCount (  ) );
  }
}


/*
virtual void setPosition ( int position, MoveMode mode = MoveAnchor ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_SETPOSITION )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QDesignerFormWindowCursorInterface::MoveAnchor : hb_parni(2);
    obj->setPosition ( (int) hb_parni(1),  (QDesignerFormWindowCursorInterface::MoveMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
virtual QWidget * widget ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_WIDGET )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->widget ( (int) hb_parni(1) );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
virtual int widgetCount () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_WIDGETCOUNT )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->widgetCount (  ) );
  }
}



HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_NEWFROM )
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

HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDESIGNERFORMWINDOWCURSORINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDESIGNERFORMWINDOWCURSORINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_SETSELFDESTRUCTION )
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