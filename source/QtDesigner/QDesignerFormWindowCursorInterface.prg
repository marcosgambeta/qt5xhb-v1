/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDESIGNERFORMWINDOWINTERFACE
REQUEST QWIDGET
#endif

CLASS QDesignerFormWindowCursorInterface

   DATA pointer
   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject() CLASS QDesignerFormWindowCursorInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDesigner/QDesignerFormWindowCursorInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtDesigner/QDesignerFormWindowCursorInterface>
#endif

#include <QtDesigner/QDesignerFormWindowInterface>

HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_DELETE )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

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
virtual QWidget * current() const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_CURRENT )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWidget * ptr = obj->current();
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QDesignerFormWindowInterface * formWindow() const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_FORMWINDOW )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDesignerFormWindowInterface * ptr = obj->formWindow();
      Qt5xHb::createReturnQWidgetClass( ptr, "QDESIGNERFORMWINDOWINTERFACE" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool hasSelection() const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_HASSELECTION )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasSelection() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isWidgetSelected( QWidget * widget ) const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_ISWIDGETSELECTED )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      RBOOL( obj->isWidgetSelected( PQWIDGET(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool movePosition( QDesignerFormWindowCursorInterface::MoveOperation operation, QDesignerFormWindowCursorInterface::MoveMode mode = QDesignerFormWindowCursorInterface::MoveAnchor ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_MOVEPOSITION )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
    {
#endif
      RBOOL( obj->movePosition( (QDesignerFormWindowCursorInterface::MoveOperation) hb_parni(1), ISNIL(2)? (QDesignerFormWindowCursorInterface::MoveMode) QDesignerFormWindowCursorInterface::MoveAnchor : (QDesignerFormWindowCursorInterface::MoveMode) hb_parni(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual int position() const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_POSITION )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->position() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QWidget * selectedWidget( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_SELECTEDWIDGET )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QWidget * ptr = obj->selectedWidget( PINT(1) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual int selectedWidgetCount() const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_SELECTEDWIDGETCOUNT )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->selectedWidgetCount() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void setPosition( int position, QDesignerFormWindowCursorInterface::MoveMode mode = QDesignerFormWindowCursorInterface::MoveAnchor ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_SETPOSITION )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
    {
#endif
      obj->setPosition( PINT(1), ISNIL(2)? (QDesignerFormWindowCursorInterface::MoveMode) QDesignerFormWindowCursorInterface::MoveAnchor : (QDesignerFormWindowCursorInterface::MoveMode) hb_parni(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QWidget * widget( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_WIDGET )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QWidget * ptr = obj->widget( PINT(1) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual int widgetCount() const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_WIDGETCOUNT )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->widgetCount() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
