/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QMediaStreamsControlSlots.h"


static SlotsQMediaStreamsControl * s = NULL;

SlotsQMediaStreamsControl::SlotsQMediaStreamsControl(QObject *parent) : QObject(parent)
{
}

SlotsQMediaStreamsControl::~SlotsQMediaStreamsControl()
{
}

void SlotsQMediaStreamsControl::activeStreamsChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activeStreamsChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQMediaStreamsControl::streamsChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "streamsChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QMEDIASTREAMSCONTROL_ONACTIVESTREAMSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaStreamsControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "activeStreamsChanged()", "activeStreamsChanged()" ) );
}

HB_FUNC( QMEDIASTREAMSCONTROL_ONSTREAMSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaStreamsControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "streamsChanged()", "streamsChanged()" ) );
}
