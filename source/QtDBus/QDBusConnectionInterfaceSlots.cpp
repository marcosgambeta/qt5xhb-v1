/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QDBusConnectionInterfaceSlots.h"


static SlotsQDBusConnectionInterface * s = NULL;

SlotsQDBusConnectionInterface::SlotsQDBusConnectionInterface(QObject *parent) : QObject(parent)
{
}

SlotsQDBusConnectionInterface::~SlotsQDBusConnectionInterface()
{
}

void SlotsQDBusConnectionInterface::serviceRegistered(const QString &service)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "serviceRegistered(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pservice = hb_itemPutC( NULL, RQSTRING(service) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pservice );
    hb_itemRelease( psender );
    hb_itemRelease( pservice );
  }
}

void SlotsQDBusConnectionInterface::serviceUnregistered(const QString &service)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "serviceUnregistered(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pservice = hb_itemPutC( NULL, RQSTRING(service) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pservice );
    hb_itemRelease( psender );
    hb_itemRelease( pservice );
  }
}

void SlotsQDBusConnectionInterface::serviceOwnerChanged(const QString &name, const QString &oldOwner, const QString &newOwner)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "serviceOwnerChanged(QString,QString,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pname = hb_itemPutC( NULL, RQSTRING(name) );
    PHB_ITEM poldOwner = hb_itemPutC( NULL, RQSTRING(oldOwner) );
    PHB_ITEM pnewOwner = hb_itemPutC( NULL, RQSTRING(newOwner) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pname, poldOwner, pnewOwner );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
    hb_itemRelease( poldOwner );
    hb_itemRelease( pnewOwner );
  }
}

void SlotsQDBusConnectionInterface::callWithCallbackFailed(const QDBusError &error, const QDBusMessage &call)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "callWithCallbackFailed(QDBusError,QDBusMessage)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, perror, pcall );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
    hb_itemRelease( pcall );
  }
}

HB_FUNC( QDBUSCONNECTIONINTERFACE_ONSERVICEREGISTERED )
{
  if( s == NULL )
  {
    s = new SlotsQDBusConnectionInterface(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "serviceRegistered(QString)", "serviceRegistered(QString)" ) );
}

HB_FUNC( QDBUSCONNECTIONINTERFACE_ONSERVICEUNREGISTERED )
{
  if( s == NULL )
  {
    s = new SlotsQDBusConnectionInterface(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "serviceUnregistered(QString)", "serviceUnregistered(QString)" ) );
}

HB_FUNC( QDBUSCONNECTIONINTERFACE_ONSERVICEOWNERCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDBusConnectionInterface(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "serviceOwnerChanged(QString,QString,QString)", "serviceOwnerChanged(QString,QString,QString)" ) );
}

HB_FUNC( QDBUSCONNECTIONINTERFACE_ONCALLWITHCALLBACKFAILED )
{
  if( s == NULL )
  {
    s = new SlotsQDBusConnectionInterface(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "callWithCallbackFailed(QDBusError,QDBusMessage)", "callWithCallbackFailed(QDBusError,QDBusMessage)" ) );
}
