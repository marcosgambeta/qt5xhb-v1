/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QAudioOutputSlots.h"


static SlotsQAudioOutput * s = NULL;

SlotsQAudioOutput::SlotsQAudioOutput(QObject *parent) : QObject(parent)
{
}

SlotsQAudioOutput::~SlotsQAudioOutput()
{
}

void SlotsQAudioOutput::notify()
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

void SlotsQAudioOutput::stateChanged(QAudio::State state)
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

HB_FUNC( QAUDIOOUTPUT_ONNOTIFY )
{
  if( s == NULL )
  {
    s = new SlotsQAudioOutput(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "notify()", "notify()" ) );
}

HB_FUNC( QAUDIOOUTPUT_ONSTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioOutput(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stateChanged(QAudio::State)", "stateChanged(QAudio::State)" ) );
}
