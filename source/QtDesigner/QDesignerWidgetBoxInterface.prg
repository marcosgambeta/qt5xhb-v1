/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QDesignerWidgetBoxInterface INHERIT QWidget

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD fileName
   METHOD load
   METHOD save
   METHOD setFileName

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerWidgetBoxInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDesignerWidgetBoxInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDesignerWidgetBoxInterface>
#endif

HB_FUNC_STATIC( QDESIGNERWIDGETBOXINTERFACE_DELETE )
{
  QDesignerWidgetBoxInterface * obj = (QDesignerWidgetBoxInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QString fileName () const = 0
*/
HB_FUNC_STATIC( QDESIGNERWIDGETBOXINTERFACE_FILENAME )
{
  QDesignerWidgetBoxInterface * obj = (QDesignerWidgetBoxInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->fileName () ) );
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
    hb_retl( obj->load () );
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
    hb_retl( obj->save () );
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
