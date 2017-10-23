/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QDBusServerSlots.h"


static SlotsQDBusServer * s = NULL;

SlotsQDBusServer::SlotsQDBusServer(QObject *parent) : QObject(parent)
{
}

SlotsQDBusServer::~SlotsQDBusServer()
{
}

void SlotsQDBusServer::newConnection(const QDBusConnection &connection)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "newConnection(QDBusConnection)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pconnection );
    hb_itemRelease( psender );
    hb_itemRelease( pconnection );
  }
}

HB_FUNC( QDBUSSERVER_ONNEWCONNECTION )
{
  if( s == NULL )
  {
    s = new SlotsQDBusServer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "newConnection(QDBusConnection)", "newConnection(QDBusConnection)" ) );
}
