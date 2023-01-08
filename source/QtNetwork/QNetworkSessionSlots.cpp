/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QNetworkSessionSlots.h"

QNetworkSessionSlots::QNetworkSessionSlots( QObject *parent ) : QObject( parent )
{
}

QNetworkSessionSlots::~QNetworkSessionSlots()
{
}

void QNetworkSessionSlots::closed()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "closed()" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QNETWORKSESSION");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QNetworkSessionSlots::error( QNetworkSession::SessionError error )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "error(QNetworkSession::SessionError)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QNETWORKSESSION");
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );

    hb_vmEvalBlockV( cb, 2, psender, perror );

    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}

void QNetworkSessionSlots::newConfigurationActivated()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "newConfigurationActivated()" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QNETWORKSESSION");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QNetworkSessionSlots::opened()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "opened()" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QNETWORKSESSION");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QNetworkSessionSlots::preferredConfigurationChanged( const QNetworkConfiguration & config, bool isSeamless )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "preferredConfigurationChanged(QNetworkConfiguration,bool)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QNETWORKSESSION");
    PHB_ITEM pconfig = Qt5xHb::Signals_return_object( (void *) &config, "QNETWORKCONFIGURATION" );
    PHB_ITEM pisSeamless = hb_itemPutL( NULL, isSeamless );

    hb_vmEvalBlockV( cb, 3, psender, pconfig, pisSeamless );

    hb_itemRelease( psender );
    hb_itemRelease( pconfig );
    hb_itemRelease( pisSeamless );
  }
}

void QNetworkSessionSlots::stateChanged( QNetworkSession::State state )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "stateChanged(QNetworkSession::State)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QNETWORKSESSION");
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );

    hb_vmEvalBlockV( cb, 2, psender, pstate );

    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

void QNetworkSessionSlots::usagePoliciesChanged( QNetworkSession::UsagePolicies usagePolicies )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "usagePoliciesChanged(QNetworkSession::UsagePolicies)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QNETWORKSESSION");
    PHB_ITEM pusagePolicies = hb_itemPutNI( NULL, (int) usagePolicies );

    hb_vmEvalBlockV( cb, 2, psender, pusagePolicies );

    hb_itemRelease( psender );
    hb_itemRelease( pusagePolicies );
  }
}

void QNetworkSessionSlots_connect_signal( const QString & signal, const QString & slot )
{
  QNetworkSession * obj = (QNetworkSession *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QNetworkSessionSlots * s = QCoreApplication::instance()->findChild<QNetworkSessionSlots*>();

    if( s == NULL )
    {
      s = new QNetworkSessionSlots();
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
