/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractAudioOutputSlots.h"

QAbstractAudioOutputSlots::QAbstractAudioOutputSlots( QObject *parent ) : QObject( parent )
{
}

QAbstractAudioOutputSlots::~QAbstractAudioOutputSlots()
{
}

void QAbstractAudioOutputSlots::errorChanged( QAudio::Error error )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "errorChanged(QAudio::Error)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTAUDIOOUTPUT");
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );

    hb_vmEvalBlockV( cb, 2, psender, perror );

    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}

void QAbstractAudioOutputSlots::stateChanged( QAudio::State state )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "stateChanged(QAudio::State)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTAUDIOOUTPUT");
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );

    hb_vmEvalBlockV( cb, 2, psender, pstate );

    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

void QAbstractAudioOutputSlots::notify()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "notify()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTAUDIOOUTPUT");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QAbstractAudioOutputSlots_connect_signal( const QString & signal, const QString & slot )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractAudioOutputSlots * s = QCoreApplication::instance()->findChild<QAbstractAudioOutputSlots *>();

    if( s == NULL )
    {
      s = new QAbstractAudioOutputSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
