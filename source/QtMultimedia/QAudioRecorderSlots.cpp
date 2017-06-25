/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QAudioRecorderSlots.h"


static SlotsQAudioRecorder * s = NULL;

SlotsQAudioRecorder::SlotsQAudioRecorder(QObject *parent) : QObject(parent)
{
}

SlotsQAudioRecorder::~SlotsQAudioRecorder()
{
}

void SlotsQAudioRecorder::audioInputChanged(const QString & name)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "audioInputChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pname );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
  }
}

void SlotsQAudioRecorder::availableAudioInputsChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "availableAudioInputsChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QAUDIORECORDER_ONAUDIOINPUTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioRecorder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "audioInputChanged(QString)", "audioInputChanged(QString)" ) );
}

HB_FUNC( QAUDIORECORDER_ONAVAILABLEAUDIOINPUTSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioRecorder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "availableAudioInputsChanged()", "availableAudioInputsChanged()" ) );
}
