/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QBar3DSeriesSlots.h"

QBar3DSeriesSlots::QBar3DSeriesSlots( QObject *parent ) : QObject( parent )
{
}

QBar3DSeriesSlots::~QBar3DSeriesSlots()
{
}

void QBar3DSeriesSlots::dataProxyChanged( QBarDataProxy * proxy )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "dataProxyChanged(QBarDataProxy*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QBAR3DSERIES" );
    PHB_ITEM pproxy = Qt5xHb::Signals_return_qobject( (QObject *) proxy, "QBARDATAPROXY" );

    hb_vmEvalBlockV( cb, 2, psender, pproxy );

    hb_itemRelease( psender );
    hb_itemRelease( pproxy );
  }
}

void QBar3DSeriesSlots::meshAngleChanged( float angle )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "meshAngleChanged(float)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QBAR3DSERIES" );
    PHB_ITEM pangle = hb_itemPutND( NULL, angle );

    hb_vmEvalBlockV( cb, 2, psender, pangle );

    hb_itemRelease( psender );
    hb_itemRelease( pangle );
  }
}

void QBar3DSeriesSlots::selectedBarChanged( const QPoint & position )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "selectedBarChanged(QPoint)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QBAR3DSERIES" );
    PHB_ITEM pposition = Qt5xHb::Signals_return_object( (void *) &position, "QPOINT" );

    hb_vmEvalBlockV( cb, 2, psender, pposition );

    hb_itemRelease( psender );
    hb_itemRelease( pposition );
  }
}

void QBar3DSeriesSlots_connect_signal( const QString & signal, const QString & slot )
{
  QBar3DSeries * obj = (QBar3DSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QBar3DSeriesSlots * s = QCoreApplication::instance()->findChild<QBar3DSeriesSlots *>();

    if( s == NULL )
    {
      s = new QBar3DSeriesSlots();
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
