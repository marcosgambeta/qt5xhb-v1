$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QDesignerContainerExtension

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD addWidget
   METHOD count
   METHOD currentIndex
   METHOD insertWidget
   METHOD remove
   METHOD setCurrentIndex
   METHOD widget

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
virtual void addWidget ( QWidget * page ) = 0
*/
HB_FUNC_STATIC( QDESIGNERCONTAINEREXTENSION_ADDWIDGET )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) )
    {
      obj->addWidget ( PQWIDGET(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual int count () const = 0
*/
HB_FUNC_STATIC( QDESIGNERCONTAINEREXTENSION_COUNT )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->count () );
  }
}

/*
virtual int currentIndex () const = 0
*/
HB_FUNC_STATIC( QDESIGNERCONTAINEREXTENSION_CURRENTINDEX )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->currentIndex () );
  }
}

/*
virtual void insertWidget ( int index, QWidget * page ) = 0
*/
HB_FUNC_STATIC( QDESIGNERCONTAINEREXTENSION_INSERTWIDGET )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQWIDGET(2) )
    {
      obj->insertWidget ( PINT(1), PQWIDGET(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void remove ( int index ) = 0
*/
HB_FUNC_STATIC( QDESIGNERCONTAINEREXTENSION_REMOVE )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->remove ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setCurrentIndex ( int index ) = 0
*/
HB_FUNC_STATIC( QDESIGNERCONTAINEREXTENSION_SETCURRENTINDEX )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCurrentIndex ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QWidget * widget ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERCONTAINEREXTENSION_WIDGET )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QWidget * ptr = obj->widget ( PINT(1) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

$extraMethods

#pragma ENDDUMP
