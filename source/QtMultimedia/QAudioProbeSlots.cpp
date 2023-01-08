/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAudioProbeSlots.h"

QAudioProbeSlots::QAudioProbeSlots( QObject *parent ) : QObject( parent )
{
}

QAudioProbeSlots::~QAudioProbeSlots()
{
}

void QAudioProbeSlots::audioBufferProbed( const QAudioBuffer & buffer )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "audioBufferProbed(QAudioBuffer)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIOPROBE");
    PHB_ITEM pbuffer = Qt5xHb::Signals_return_object( (void *) &buffer, "QAUDIOBUFFER" );

    hb_vmEvalBlockV( cb, 2, psender, pbuffer );

    hb_itemRelease( psender );
    hb_itemRelease( pbuffer );
  }
}

void QAudioProbeSlots::flush()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "flush()" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIOPROBE");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QAudioProbeSlots_connect_signal( const QString & signal, const QString & slot )
{
  QAudioProbe * obj = (QAudioProbe *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QAudioProbeSlots * s = QCoreApplication::instance()->findChild<QAudioProbeSlots*>();

    if( s == NULL )
    {
      s = new QAudioProbeSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
