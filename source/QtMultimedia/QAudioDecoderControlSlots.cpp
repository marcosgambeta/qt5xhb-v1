/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAudioDecoderControlSlots.h"

QAudioDecoderControlSlots::QAudioDecoderControlSlots( QObject *parent ) : QObject( parent )
{
}

QAudioDecoderControlSlots::~QAudioDecoderControlSlots()
{
}

void QAudioDecoderControlSlots::bufferAvailableChanged( bool available )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "bufferAvailableChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIODECODERCONTROL");
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );

    hb_vmEvalBlockV(cb, 2, psender, pavailable);

    hb_itemRelease(psender);
    hb_itemRelease( pavailable );
  }
}

void QAudioDecoderControlSlots::bufferReady()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "bufferReady()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIODECODERCONTROL");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QAudioDecoderControlSlots::durationChanged( qint64 duration )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "durationChanged(qint64)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIODECODERCONTROL");
    PHB_ITEM pduration = hb_itemPutNLL( NULL, duration );

    hb_vmEvalBlockV(cb, 2, psender, pduration);

    hb_itemRelease(psender);
    hb_itemRelease( pduration );
  }
}

void QAudioDecoderControlSlots::error( int error, const QString & errorString )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "error(int,QString)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIODECODERCONTROL");
    PHB_ITEM perror = hb_itemPutNI( NULL, error );
    PHB_ITEM perrorString = hb_itemPutC( NULL, QSTRINGTOSTRING(errorString) );

    hb_vmEvalBlockV(cb, 3, psender, perror, perrorString);

    hb_itemRelease(psender);
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
}

void QAudioDecoderControlSlots::finished()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "finished()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIODECODERCONTROL");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QAudioDecoderControlSlots::formatChanged( const QAudioFormat & format )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "formatChanged(QAudioFormat)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIODECODERCONTROL");
    PHB_ITEM pformat = Qt5xHb::Signals_return_object( (void *) &format, "QAUDIOFORMAT");

    hb_vmEvalBlockV(cb, 2, psender, pformat);

    hb_itemRelease(psender);
    hb_itemRelease( pformat );
  }
}

void QAudioDecoderControlSlots::positionChanged( qint64 position )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "positionChanged(qint64)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIODECODERCONTROL");
    PHB_ITEM pposition = hb_itemPutNLL( NULL, position );

    hb_vmEvalBlockV(cb, 2, psender, pposition);

    hb_itemRelease(psender);
    hb_itemRelease( pposition );
  }
}

void QAudioDecoderControlSlots::sourceChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "sourceChanged()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIODECODERCONTROL");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QAudioDecoderControlSlots::stateChanged( QAudioDecoder::State state )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "stateChanged(QAudioDecoder::State)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIODECODERCONTROL");
    PHB_ITEM pstate = hb_itemPutNI( NULL, static_cast<int>(state) );

    hb_vmEvalBlockV(cb, 2, psender, pstate);

    hb_itemRelease(psender);
    hb_itemRelease( pstate );
  }
}

void QAudioDecoderControlSlots_connect_signal(const QString & signal, const QString & slot)
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QAudioDecoderControlSlots * s = QCoreApplication::instance()->findChild<QAudioDecoderControlSlots*>();

    if( s == NULL )
    {
      s = new QAudioDecoderControlSlots();
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
