/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QMediaVideoProbeControlSlots.h"

QMediaVideoProbeControlSlots::QMediaVideoProbeControlSlots( QObject *parent ) : QObject( parent )
{
}

QMediaVideoProbeControlSlots::~QMediaVideoProbeControlSlots()
{
}

void QMediaVideoProbeControlSlots::flush()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "flush()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIAVIDEOPROBECONTROL" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QMediaVideoProbeControlSlots::videoFrameProbed( const QVideoFrame & frame )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "videoFrameProbed(QVideoFrame)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIAVIDEOPROBECONTROL" );
    PHB_ITEM pframe = Signals_return_object( (void *) &frame, "QVIDEOFRAME" );

    hb_vmEvalBlockV( cb, 2, psender, pframe );

    hb_itemRelease( psender );
    hb_itemRelease( pframe );
  }
}

void QMediaVideoProbeControlSlots_connect_signal( const QString & signal, const QString & slot )
{
  QMediaVideoProbeControl * obj = (QMediaVideoProbeControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QMediaVideoProbeControlSlots * s = QCoreApplication::instance()->findChild<QMediaVideoProbeControlSlots *>();

    if( s == NULL )
    {
      s = new QMediaVideoProbeControlSlots();
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
