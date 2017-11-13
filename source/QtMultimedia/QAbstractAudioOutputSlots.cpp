/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QAbstractAudioOutputSlots.h"


static SlotsQAbstractAudioOutput * s = NULL;

SlotsQAbstractAudioOutput::SlotsQAbstractAudioOutput(QObject *parent) : QObject(parent)
{
}

SlotsQAbstractAudioOutput::~SlotsQAbstractAudioOutput()
{
}

void SlotsQAbstractAudioOutput::errorChanged(QAudio::Error error)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "errorChanged(QAudio::Error)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}

void SlotsQAbstractAudioOutput::stateChanged(QAudio::State state)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QAudio::State)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

void SlotsQAbstractAudioOutput::notify()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "notify()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QABSTRACTAUDIOOUTPUT_ONERRORCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractAudioOutput(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "errorChanged(QAudio::Error)", "errorChanged(QAudio::Error)" ) );
}

HB_FUNC( QABSTRACTAUDIOOUTPUT_ONSTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractAudioOutput(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stateChanged(QAudio::State)", "stateChanged(QAudio::State)" ) );
}

HB_FUNC( QABSTRACTAUDIOOUTPUT_ONNOTIFY )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractAudioOutput(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "notify()", "notify()" ) );
}
