/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QDESIGNERFORMEDITORINTERFACE
#endif

CLASS QDesignerActionEditorInterface INHERIT QWidget

   DATA class_id INIT Class_Id_QDesignerActionEditorInterface
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD core
   METHOD manageAction
   METHOD setFormWindow
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerActionEditorInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDesignerActionEditorInterface>
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

#include "qt4xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDesignerActionEditorInterface>
#endif
#endif


HB_FUNC_STATIC( QDESIGNERACTIONEDITORINTERFACE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDesignerActionEditorInterface * obj = (QDesignerActionEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QDesignerFormEditorInterface * core () const
*/
HB_FUNC_STATIC( QDESIGNERACTIONEDITORINTERFACE_CORE )
{
  QDesignerActionEditorInterface * obj = (QDesignerActionEditorInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDesignerFormEditorInterface * ptr = obj->core (  );
    _qt4xhb_createReturnClass ( ptr, "QDESIGNERFORMEDITORINTERFACE" );
  }
}


/*
virtual void manageAction ( QAction * action ) = 0
*/
HB_FUNC_STATIC( QDESIGNERACTIONEDITORINTERFACE_MANAGEACTION )
{
  QDesignerActionEditorInterface * obj = (QDesignerActionEditorInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * par1 = (QAction *) _qtxhb_itemGetPtr(1);
    obj->manageAction ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setFormWindow ( QDesignerFormWindowInterface * formWindow ) = 0
*/
HB_FUNC_STATIC( QDESIGNERACTIONEDITORINTERFACE_SETFORMWINDOW )
{
  QDesignerActionEditorInterface * obj = (QDesignerActionEditorInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDesignerFormWindowInterface * par1 = (QDesignerFormWindowInterface *) _qtxhb_itemGetPtr(1);
    obj->setFormWindow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
