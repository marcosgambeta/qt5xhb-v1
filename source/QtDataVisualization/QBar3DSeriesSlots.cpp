/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QBar3DSeriesSlots.h"

QBar3DSeriesSlots::QBar3DSeriesSlots(QObject *parent) : QObject(parent)
{
}

QBar3DSeriesSlots::~QBar3DSeriesSlots()
{
}
void QBar3DSeriesSlots::dataProxyChanged( QBarDataProxy * proxy )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dataProxyChanged(QBarDataProxy*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBAR3DSERIES" );
    PHB_ITEM pproxy = Signals_return_qobject( (QObject *) proxy, "QBARDATAPROXY" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pproxy );
    hb_itemRelease( psender );
    hb_itemRelease( pproxy );
  }
}
void QBar3DSeriesSlots::meshAngleChanged( float angle )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "meshAngleChanged(float)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBAR3DSERIES" );
    PHB_ITEM pangle = hb_itemPutND( NULL, angle );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pangle );
    hb_itemRelease( psender );
    hb_itemRelease( pangle );
  }
}
void QBar3DSeriesSlots::selectedBarChanged( const QPoint & position )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selectedBarChanged(QPoint)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBAR3DSERIES" );
    PHB_ITEM pposition = Signals_return_object( (void *) &position, "QPOINT" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pposition );
    hb_itemRelease( psender );
    hb_itemRelease( pposition );
  }
}

void QBar3DSeriesSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QBar3DSeries * obj = (QBar3DSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QBar3DSeriesSlots * s = QCoreApplication::instance()->findChild<QBar3DSeriesSlots *>();

    if( s == NULL )
    {
      s = new QBar3DSeriesSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
