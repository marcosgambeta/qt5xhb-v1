/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QICON
#endif

CLASS QDesignerCustomWidgetInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD codeTemplate
   METHOD createWidget
   METHOD domXml
   METHOD group
   METHOD icon
   METHOD includeFile
   METHOD initialize
   METHOD isContainer
   METHOD isInitialized
   METHOD name
   METHOD toolTip
   METHOD whatsThis

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerCustomWidgetInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDesignerCustomWidgetInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDesignerCustomWidgetInterface>
#endif

HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_DELETE )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QString codeTemplate () const
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_CODETEMPLATE )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->codeTemplate () );
  }
}

/*
virtual QWidget * createWidget ( QWidget * parent ) = 0
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_CREATEWIDGET )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) )
    {
      QWidget * ptr = obj->createWidget ( PQWIDGET(1) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QString domXml () const
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_DOMXML )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->domXml () );
  }
}

/*
virtual QString group () const = 0
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_GROUP )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->group () );
  }
}

/*
virtual QIcon icon () const = 0
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_ICON )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon () );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}

/*
virtual QString includeFile () const = 0
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_INCLUDEFILE )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->includeFile () );
  }
}

/*
virtual void initialize ( QDesignerFormEditorInterface * formEditor )
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_INITIALIZE )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDESIGNERFORMEDITORINTERFACE(1) )
    {
      QDesignerFormEditorInterface * par1 = (QDesignerFormEditorInterface *) _qt5xhb_itemGetPtr(1);
      obj->initialize ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool isContainer () const = 0
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_ISCONTAINER )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isContainer () );
  }
}

/*
virtual bool isInitialized () const
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_ISINITIALIZED )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isInitialized () );
  }
}

/*
virtual QString name () const = 0
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_NAME )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->name () );
  }
}

/*
virtual QString toolTip () const = 0
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_TOOLTIP )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->toolTip () );
  }
}

/*
virtual QString whatsThis () const = 0
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_WHATSTHIS )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->whatsThis () );
  }
}

HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_NEWFROM )
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

HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDESIGNERCUSTOMWIDGETINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDESIGNERCUSTOMWIDGETINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_SETSELFDESTRUCTION )
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
