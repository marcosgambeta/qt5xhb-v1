/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QDBusServiceWatcherSlots.h"


static SlotsQDBusServiceWatcher * s = NULL;

SlotsQDBusServiceWatcher::SlotsQDBusServiceWatcher(QObject *parent) : QObject(parent)
{
}

SlotsQDBusServiceWatcher::~SlotsQDBusServiceWatcher()
{
}

void SlotsQDBusServiceWatcher::serviceRegistered(const QString &service)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "serviceRegistered(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pservice = hb_itemPutC( NULL, (const char *) service.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pservice );
    hb_itemRelease( psender );
    hb_itemRelease( pservice );
  }
}

void SlotsQDBusServiceWatcher::serviceUnregistered(const QString &service)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "serviceUnregistered(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pservice = hb_itemPutC( NULL, (const char *) service.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pservice );
    hb_itemRelease( psender );
    hb_itemRelease( pservice );
  }
}

void SlotsQDBusServiceWatcher::serviceOwnerChanged(const QString &service, const QString &oldOwner, const QString &newOwner)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "serviceOwnerChanged(QString,QString,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pservice = hb_itemPutC( NULL, (const char *) service.toLatin1().data() );
    PHB_ITEM poldOwner = hb_itemPutC( NULL, (const char *) oldOwner.toLatin1().data() );
    PHB_ITEM pnewOwner = hb_itemPutC( NULL, (const char *) newOwner.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pservice, poldOwner, pnewOwner );
    hb_itemRelease( psender );
    hb_itemRelease( pservice );
    hb_itemRelease( poldOwner );
    hb_itemRelease( pnewOwner );
  }
}

HB_FUNC( QDBUSSERVICEWATCHER_ONSERVICEREGISTERED )
{
  if( s == NULL )
  {
    s = new SlotsQDBusServiceWatcher(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "serviceRegistered(QString)", "serviceRegistered(QString)" ) );
}

HB_FUNC( QDBUSSERVICEWATCHER_ONSERVICEUNREGISTERED )
{
  if( s == NULL )
  {
    s = new SlotsQDBusServiceWatcher(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "serviceUnregistered(QString)", "serviceUnregistered(QString)" ) );
}

HB_FUNC( QDBUSSERVICEWATCHER_ONSERVICEOWNERCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDBusServiceWatcher(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "serviceOwnerChanged(QString,QString,QString)", "serviceOwnerChanged(QString,QString,QString)" ) );
}
