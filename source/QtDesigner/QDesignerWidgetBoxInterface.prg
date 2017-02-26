/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QDesignerWidgetBoxInterface INHERIT QWidget

   DATA class_id INIT Class_Id_QDesignerWidgetBoxInterface
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDesignerWidgetBoxInterface>
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
#include <QDesignerWidgetBoxInterface>
#endif
#endif


HB_FUNC_STATIC( QDESIGNERWIDGETBOXINTERFACE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
virtual QString fileName () const = 0
*/
HB_FUNC_STATIC( QDESIGNERWIDGETBOXINTERFACE_FILENAME )
{
  QDesignerWidgetBoxInterface * obj = (QDesignerWidgetBoxInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->fileName (  ).toLatin1().data() );
  }
}


/*
virtual bool load () = 0
*/
HB_FUNC_STATIC( QDESIGNERWIDGETBOXINTERFACE_LOAD )
{
  QDesignerWidgetBoxInterface * obj = (QDesignerWidgetBoxInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->load (  ) );
  }
}


/*
virtual bool save () = 0
*/
HB_FUNC_STATIC( QDESIGNERWIDGETBOXINTERFACE_SAVE )
{
  QDesignerWidgetBoxInterface * obj = (QDesignerWidgetBoxInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->save (  ) );
  }
}


/*
virtual void setFileName ( const QString & fileName ) = 0
*/
HB_FUNC_STATIC( QDESIGNERWIDGETBOXINTERFACE_SETFILENAME )
{
  QDesignerWidgetBoxInterface * obj = (QDesignerWidgetBoxInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setFileName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
