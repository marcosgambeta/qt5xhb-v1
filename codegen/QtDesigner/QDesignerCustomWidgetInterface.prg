$header

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

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

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

$extraMethods

#pragma ENDDUMP
