$header

#include "hbclass.ch"

CLASS QDesignerWidgetBoxInterface INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD fileName
   METHOD load
   METHOD save
   METHOD setFileName

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QString fileName () const = 0
*/
HB_FUNC_STATIC( QDESIGNERWIDGETBOXINTERFACE_FILENAME )
{
  QDesignerWidgetBoxInterface * obj = (QDesignerWidgetBoxInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->fileName () );
  }
}

/*
virtual bool load () = 0
*/
HB_FUNC_STATIC( QDESIGNERWIDGETBOXINTERFACE_LOAD )
{
  QDesignerWidgetBoxInterface * obj = (QDesignerWidgetBoxInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->load () );
  }
}

/*
virtual bool save () = 0
*/
HB_FUNC_STATIC( QDESIGNERWIDGETBOXINTERFACE_SAVE )
{
  QDesignerWidgetBoxInterface * obj = (QDesignerWidgetBoxInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->save () );
  }
}

/*
virtual void setFileName ( const QString & fileName ) = 0
*/
HB_FUNC_STATIC( QDESIGNERWIDGETBOXINTERFACE_SETFILENAME )
{
  QDesignerWidgetBoxInterface * obj = (QDesignerWidgetBoxInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setFileName ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
