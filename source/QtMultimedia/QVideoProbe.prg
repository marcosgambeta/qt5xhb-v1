/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QVideoProbe INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isActive
   METHOD setSource

   METHOD onFlush
   METHOD onVideoFrameProbed

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QVideoProbe
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QVideoProbe>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QVideoProbe>
#endif

/*
QVideoProbe( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QVIDEOPROBE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QVideoProbe * obj = new QVideoProbe( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QVideoProbe()
*/
HB_FUNC_STATIC( QVIDEOPROBE_DELETE )
{
  QVideoProbe * obj = (QVideoProbe *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool isActive() const
*/
HB_FUNC_STATIC( QVIDEOPROBE_ISACTIVE )
{
  QVideoProbe * obj = (QVideoProbe *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isActive() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QVIDEOPROBE_SETSOURCE )
{
  if( ISNUMPAR(1) && ISQMEDIAOBJECT(1) )
  {
    /*
    bool setSource( QMediaObject * source )
    */
    QVideoProbe * obj = (QVideoProbe *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RBOOL( obj->setSource( PQMEDIAOBJECT(1) ) );
    }
  }
  else if( ISNUMPAR(1) && ISQMEDIARECORDER(1) )
  {
    /*
    bool setSource( QMediaRecorder * source )
    */
    QVideoProbe * obj = (QVideoProbe *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RBOOL( obj->setSource( PQMEDIARECORDER(1) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

void QVideoProbeSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QVIDEOPROBE_ONFLUSH )
{
  QVideoProbeSlots_connect_signal("flush()", "flush()");
}

HB_FUNC_STATIC( QVIDEOPROBE_ONVIDEOFRAMEPROBED )
{
  QVideoProbeSlots_connect_signal("videoFrameProbed(QVideoFrame)", "videoFrameProbed(QVideoFrame)");
}

#pragma ENDDUMP
