/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QPictureFormatPlugin INHERIT QObject

   DATA class_id INIT Class_Id_QPictureFormatPlugin
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD loadPicture
   METHOD savePicture
   METHOD installIOHandler
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPictureFormatPlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QPictureFormatPlugin>
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
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QPictureFormatPlugin>
#endif
#endif


HB_FUNC_STATIC( QPICTUREFORMATPLUGIN_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPictureFormatPlugin * obj = (QPictureFormatPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool loadPicture(const QString &format, const QString &filename, QPicture *pic)
*/
HB_FUNC_STATIC( QPICTUREFORMATPLUGIN_LOADPICTURE )
{
  QPictureFormatPlugin * obj = (QPictureFormatPlugin *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QPicture * par3 = (QPicture *) _qtxhb_itemGetPtr(3);
    hb_retl( obj->loadPicture ( par1, par2, par3 ) );
  }
}


/*
virtual bool savePicture(const QString &format, const QString &filename, const QPicture &pic)
*/
HB_FUNC_STATIC( QPICTUREFORMATPLUGIN_SAVEPICTURE )
{
  QPictureFormatPlugin * obj = (QPictureFormatPlugin *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QPicture * par3 = (QPicture *) _qtxhb_itemGetPtr(3);
    hb_retl( obj->savePicture ( par1, par2, *par3 ) );
  }
}


/*
virtual bool installIOHandler(const QString &format) = 0
*/
HB_FUNC_STATIC( QPICTUREFORMATPLUGIN_INSTALLIOHANDLER )
{
  QPictureFormatPlugin * obj = (QPictureFormatPlugin *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->installIOHandler ( par1 ) );
  }
}



#pragma ENDDUMP
