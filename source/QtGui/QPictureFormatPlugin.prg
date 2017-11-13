/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QPictureFormatPlugin INHERIT QObject

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

#include <Qt>

#ifndef __XHARBOUR__
#include <QPictureFormatPlugin>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPictureFormatPlugin>
#endif

HB_FUNC_STATIC( QPICTUREFORMATPLUGIN_DELETE )
{
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
}

/*
virtual bool loadPicture(const QString &format, const QString &filename, QPicture *pic)
*/
HB_FUNC_STATIC( QPICTUREFORMATPLUGIN_LOADPICTURE )
{
  QPictureFormatPlugin * obj = (QPictureFormatPlugin *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISCHAR(2) && ISQPICTURE(3) )
    {
      QPicture * par3 = (QPicture *) _qt5xhb_itemGetPtr(3);
      RBOOL( obj->loadPicture ( PQSTRING(1), PQSTRING(2), par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool savePicture(const QString &format, const QString &filename, const QPicture &pic)
*/
HB_FUNC_STATIC( QPICTUREFORMATPLUGIN_SAVEPICTURE )
{
  QPictureFormatPlugin * obj = (QPictureFormatPlugin *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISCHAR(2) && ISQPICTURE(3) )
    {
      RBOOL( obj->savePicture ( PQSTRING(1), PQSTRING(2), *PQPICTURE(3) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool installIOHandler(const QString &format) = 0
*/
HB_FUNC_STATIC( QPICTUREFORMATPLUGIN_INSTALLIOHANDLER )
{
  QPictureFormatPlugin * obj = (QPictureFormatPlugin *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      RBOOL( obj->installIOHandler ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
