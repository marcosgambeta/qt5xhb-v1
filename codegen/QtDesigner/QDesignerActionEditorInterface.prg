$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDESIGNERFORMEDITORINTERFACE
#endif

CLASS QDesignerActionEditorInterface INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD core
   METHOD manageAction
   METHOD setFormWindow

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QDesignerFormEditorInterface * core () const
*/
HB_FUNC_STATIC( QDESIGNERACTIONEDITORINTERFACE_CORE )
{
  QDesignerActionEditorInterface * obj = (QDesignerActionEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDesignerFormEditorInterface * ptr = obj->core ();
    _qt5xhb_createReturnClass ( ptr, "QDESIGNERFORMEDITORINTERFACE" );
  }
}

/*
virtual void manageAction ( QAction * action ) = 0
*/
HB_FUNC_STATIC( QDESIGNERACTIONEDITORINTERFACE_MANAGEACTION )
{
  QDesignerActionEditorInterface * obj = (QDesignerActionEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQACTION(1) )
    {
      obj->manageAction ( PQACTION(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setFormWindow ( QDesignerFormWindowInterface * formWindow ) = 0
*/
HB_FUNC_STATIC( QDESIGNERACTIONEDITORINTERFACE_SETFORMWINDOW )
{
  QDesignerActionEditorInterface * obj = (QDesignerActionEditorInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDESIGNERFORMWINDOWINTERFACE(1) )
    {
      QDesignerFormWindowInterface * par1 = (QDesignerFormWindowInterface *) _qt5xhb_itemGetPtr(1);
      obj->setFormWindow ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
