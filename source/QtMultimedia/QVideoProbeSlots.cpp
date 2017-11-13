/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QVideoProbeSlots.h"


static SlotsQVideoProbe * s = NULL;

SlotsQVideoProbe::SlotsQVideoProbe(QObject *parent) : QObject(parent)
{
}

SlotsQVideoProbe::~SlotsQVideoProbe()
{
}

void SlotsQVideoProbe::flush()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "flush()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQVideoProbe::videoFrameProbed(const QVideoFrame & frame)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "videoFrameProbed(QVideoFrame)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pframe = hb_itemPutPtr( NULL, (QVideoFrame *) &frame );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pframe );
    hb_itemRelease( psender );
    hb_itemRelease( pframe );
  }
}

HB_FUNC( QVIDEOPROBE_ONFLUSH )
{
  if( s == NULL )
  {
    s = new SlotsQVideoProbe(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "flush()", "flush()" ) );
}

HB_FUNC( QVIDEOPROBE_ONVIDEOFRAMEPROBED )
{
  if( s == NULL )
  {
    s = new SlotsQVideoProbe(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "videoFrameProbed(QVideoFrame)", "videoFrameProbed(QVideoFrame)" ) );
}
