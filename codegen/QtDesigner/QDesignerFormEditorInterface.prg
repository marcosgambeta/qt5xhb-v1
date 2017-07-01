/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDESIGNERACTIONEDITORINTERFACE
REQUEST QEXTENSIONMANAGER
REQUEST QDESIGNERFORMWINDOWMANAGERINTERFACE
REQUEST QDESIGNEROBJECTINSPECTORINTERFACE
REQUEST QDESIGNERPROPERTYEDITORINTERFACE
REQUEST QWIDGET
REQUEST QDESIGNERWIDGETBOXINTERFACE
#endif

CLASS QDesignerFormEditorInterface INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD actionEditor
   METHOD extensionManager
   METHOD formWindowManager
   METHOD objectInspector
   METHOD propertyEditor
   METHOD setActionEditor
   METHOD setObjectInspector
   METHOD setPropertyEditor
   METHOD setWidgetBox
   METHOD topLevel
   METHOD widgetBox

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerFormEditorInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDesignerFormEditorInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDesignerFormEditorInterface>
#endif

/*
QDesignerFormEditorInterface ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QDesignerFormEditorInterface * o = new QDesignerFormEditorInterface ( OPQOBJECT(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_DELETE )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QDesignerActionEditorInterface * actionEditor () const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_ACTIONEDITOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDesignerActionEditorInterface * ptr = obj->actionEditor ();
    _qt5xhb_createReturnClass ( ptr, "QDESIGNERACTIONEDITORINTERFACE" );
  }
}

/*
QExtensionManager * extensionManager () const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_EXTENSIONMANAGER )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QExtensionManager * ptr = obj->extensionManager ();
    _qt5xhb_createReturnClass ( ptr, "QEXTENSIONMANAGER" );
  }
}

/*
QDesignerFormWindowManagerInterface * formWindowManager () const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_FORMWINDOWMANAGER )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDesignerFormWindowManagerInterface * ptr = obj->formWindowManager ();
    _qt5xhb_createReturnClass ( ptr, "QDESIGNERFORMWINDOWMANAGERINTERFACE" );
  }
}

/*
QDesignerObjectInspectorInterface * objectInspector () const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_OBJECTINSPECTOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDesignerObjectInspectorInterface * ptr = obj->objectInspector ();
    _qt5xhb_createReturnClass ( ptr, "QDESIGNEROBJECTINSPECTORINTERFACE" );
  }
}

/*
QDesignerPropertyEditorInterface * propertyEditor () const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_PROPERTYEDITOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDesignerPropertyEditorInterface * ptr = obj->propertyEditor ();
    _qt5xhb_createReturnClass ( ptr, "QDESIGNERPROPERTYEDITORINTERFACE" );
  }
}

/*
void setActionEditor ( QDesignerActionEditorInterface * actionEditor )
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_SETACTIONEDITOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDESIGNERACTIONEDITORINTERFACE(1) )
    {
      QDesignerActionEditorInterface * par1 = (QDesignerActionEditorInterface *) _qt5xhb_itemGetPtr(1);
      obj->setActionEditor ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setObjectInspector ( QDesignerObjectInspectorInterface * objectInspector )
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_SETOBJECTINSPECTOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDESIGNEROBJECTINSPECTORINTERFACE(1) )
    {
      QDesignerObjectInspectorInterface * par1 = (QDesignerObjectInspectorInterface *) _qt5xhb_itemGetPtr(1);
      obj->setObjectInspector ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPropertyEditor ( QDesignerPropertyEditorInterface * propertyEditor )
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_SETPROPERTYEDITOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDESIGNERPROPERTYEDITORINTERFACE(1) )
    {
      QDesignerPropertyEditorInterface * par1 = (QDesignerPropertyEditorInterface *) _qt5xhb_itemGetPtr(1);
      obj->setPropertyEditor ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWidgetBox ( QDesignerWidgetBoxInterface * widgetBox )
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_SETWIDGETBOX )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDESIGNERWIDGETBOXINTERFACE(1) )
    {
      QDesignerWidgetBoxInterface * par1 = (QDesignerWidgetBoxInterface *) _qt5xhb_itemGetPtr(1);
      obj->setWidgetBox ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWidget * topLevel () const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_TOPLEVEL )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->topLevel ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QDesignerWidgetBoxInterface * widgetBox () const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_WIDGETBOX )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDesignerWidgetBoxInterface * ptr = obj->widgetBox ();
    _qt5xhb_createReturnClass ( ptr, "QDESIGNERWIDGETBOXINTERFACE" );
  }
}

#pragma ENDDUMP
