/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QPictureFormatPlugin INHERIT QObject

   METHOD delete
   METHOD loadPicture
   METHOD savePicture
   METHOD installIOHandler

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPictureFormatPlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QPictureFormatPlugin>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QPictureFormatPlugin>
#endif

HB_FUNC_STATIC( QPICTUREFORMATPLUGIN_DELETE )
{
  QPictureFormatPlugin * obj = (QPictureFormatPlugin *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual bool loadPicture( const QString & format, const QString & filename, QPicture * pic )
*/
HB_FUNC_STATIC( QPICTUREFORMATPLUGIN_LOADPICTURE )
{
  QPictureFormatPlugin * obj = (QPictureFormatPlugin *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISCHAR(2) && ISQPICTURE(3) )
    {
#endif
      RBOOL( obj->loadPicture( PQSTRING(1), PQSTRING(2), PQPICTURE(3) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual bool savePicture( const QString & format, const QString & filename, const QPicture & pic )
*/
HB_FUNC_STATIC( QPICTUREFORMATPLUGIN_SAVEPICTURE )
{
  QPictureFormatPlugin * obj = (QPictureFormatPlugin *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISCHAR(2) && ISQPICTURE(3) )
    {
#endif
      RBOOL( obj->savePicture( PQSTRING(1), PQSTRING(2), *PQPICTURE(3) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual bool installIOHandler( const QString & format ) = 0
*/
HB_FUNC_STATIC( QPICTUREFORMATPLUGIN_INSTALLIOHANDLER )
{
  QPictureFormatPlugin * obj = (QPictureFormatPlugin *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->installIOHandler( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
