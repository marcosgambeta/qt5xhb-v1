/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QNetworkSessionSlots.h"


static SlotsQNetworkSession * s = NULL;

SlotsQNetworkSession::SlotsQNetworkSession(QObject *parent) : QObject(parent)
{
}

SlotsQNetworkSession::~SlotsQNetworkSession()
{
}

void SlotsQNetworkSession::closed ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "closed()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQNetworkSession::error ( QNetworkSession::SessionError error )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QNetworkSession::SessionError)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}

void SlotsQNetworkSession::newConfigurationActivated ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "newConfigurationActivated()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQNetworkSession::opened ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "opened()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQNetworkSession::preferredConfigurationChanged ( const QNetworkConfiguration & config, bool isSeamless )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "preferredConfigurationChanged(QNetworkConfiguration,bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pconfig = hb_itemPutPtr( NULL, (QNetworkConfiguration *) &config );
    PHB_ITEM pisSeamless = hb_itemPutL( NULL, isSeamless );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pconfig, pisSeamless );
    hb_itemRelease( psender );
    hb_itemRelease( pconfig );
    hb_itemRelease( pisSeamless );
  }
}

void SlotsQNetworkSession::stateChanged ( QNetworkSession::State state )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QNetworkSession::State)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

HB_FUNC( QNETWORKSESSION_ONCLOSED )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkSession(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "closed()", "closed()" ) );
}

HB_FUNC( QNETWORKSESSION_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkSession(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QNetworkSession::SessionError)", "error(QNetworkSession::SessionError)" ) );
}

HB_FUNC( QNETWORKSESSION_ONNEWCONFIGURATIONACTIVATED )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkSession(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "newConfigurationActivated()", "newConfigurationActivated()" ) );
}

HB_FUNC( QNETWORKSESSION_ONOPENED )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkSession(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "opened()", "opened()" ) );
}

HB_FUNC( QNETWORKSESSION_ONPREFERREDCONFIGURATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkSession(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "preferredConfigurationChanged(QNetworkConfiguration,bool)", "preferredConfigurationChanged(QNetworkConfiguration,bool)" ) );
}

HB_FUNC( QNETWORKSESSION_ONSTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkSession(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stateChanged(QNetworkSession::State)", "stateChanged(QNetworkSession::State)" ) );
}
