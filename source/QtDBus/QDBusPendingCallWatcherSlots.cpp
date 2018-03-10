/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDBusPendingCallWatcherSlots.h"

static QDBusPendingCallWatcherSlots * s = NULL;

QDBusPendingCallWatcherSlots::QDBusPendingCallWatcherSlots(QObject *parent) : QObject(parent)
{
}

QDBusPendingCallWatcherSlots::~QDBusPendingCallWatcherSlots()
{
}
void QDBusPendingCallWatcherSlots::finished( QDBusPendingCallWatcher * self )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished(QDBusPendingCallWatcher*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDBUSPENDINGCALLWATCHER" );
    PHB_ITEM pself = Signals_return_qobject( (QObject *) self, "QDBUSPENDINGCALLWATCHER" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pself );
    hb_itemRelease( psender );
    hb_itemRelease( pself );
  }
}

void QDBusPendingCallWatcherSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QDBusPendingCallWatcherSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
