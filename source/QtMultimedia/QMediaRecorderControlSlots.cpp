/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QMediaRecorderControlSlots.h"

QMediaRecorderControlSlots::QMediaRecorderControlSlots( QObject *parent ) : QObject( parent )
{
}

QMediaRecorderControlSlots::~QMediaRecorderControlSlots()
{
}

void QMediaRecorderControlSlots::actualLocationChanged( const QUrl & location )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "actualLocationChanged(QUrl)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIARECORDERCONTROL");
    PHB_ITEM plocation = Qt5xHb::Signals_return_object( (void *) &location, "QURL" );

    hb_vmEvalBlockV( cb, 2, psender, plocation );

    hb_itemRelease( psender );
    hb_itemRelease( plocation );
  }
}

void QMediaRecorderControlSlots::durationChanged( qint64 duration )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "durationChanged(qint64)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIARECORDERCONTROL");
    PHB_ITEM pduration = hb_itemPutNLL( NULL, duration );

    hb_vmEvalBlockV( cb, 2, psender, pduration );

    hb_itemRelease( psender );
    hb_itemRelease( pduration );
  }
}

void QMediaRecorderControlSlots::error( int error, const QString & errorString )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "error(int,QString)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIARECORDERCONTROL");
    PHB_ITEM perror = hb_itemPutNI( NULL, error );
    PHB_ITEM perrorString = hb_itemPutC( NULL, QSTRINGTOSTRING(errorString) );

    hb_vmEvalBlockV( cb, 3, psender, perror, perrorString );

    hb_itemRelease( psender );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
}

void QMediaRecorderControlSlots::mutedChanged( bool muted )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "mutedChanged(bool)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIARECORDERCONTROL");
    PHB_ITEM pmuted = hb_itemPutL( NULL, muted );

    hb_vmEvalBlockV( cb, 2, psender, pmuted );

    hb_itemRelease( psender );
    hb_itemRelease( pmuted );
  }
}

void QMediaRecorderControlSlots::stateChanged( QMediaRecorder::State state )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "stateChanged(QMediaRecorder::State)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIARECORDERCONTROL");
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );

    hb_vmEvalBlockV( cb, 2, psender, pstate );

    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

void QMediaRecorderControlSlots::statusChanged( QMediaRecorder::Status status )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "statusChanged(QMediaRecorder::Status)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIARECORDERCONTROL");
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );

    hb_vmEvalBlockV( cb, 2, psender, pstatus );

    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
  }
}

void QMediaRecorderControlSlots::volumeChanged( qreal gain )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "volumeChanged(qreal)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIARECORDERCONTROL");
    PHB_ITEM pgain = hb_itemPutND( NULL, gain );

    hb_vmEvalBlockV( cb, 2, psender, pgain );

    hb_itemRelease( psender );
    hb_itemRelease( pgain );
  }
}

void QMediaRecorderControlSlots_connect_signal( const QString & signal, const QString & slot )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QMediaRecorderControlSlots * s = QCoreApplication::instance()->findChild<QMediaRecorderControlSlots*>();

    if( s == NULL )
    {
      s = new QMediaRecorderControlSlots();
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
