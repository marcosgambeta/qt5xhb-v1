%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QNetworkConfigurationManagerSlots.h"

static SlotsQNetworkConfigurationManager * s = NULL;

SlotsQNetworkConfigurationManager::SlotsQNetworkConfigurationManager(QObject *parent) : QObject(parent)
{
}

SlotsQNetworkConfigurationManager::~SlotsQNetworkConfigurationManager()
{
}

void SlotsQNetworkConfigurationManager::updateCompleted ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "updateCompleted()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QNETWORKCONFIGURATIONMANAGER_ONCONFIGURATIONADDED )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkConfigurationManager(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "configurationAdded(QNetworkConfiguration)", "configurationAdded(QNetworkConfiguration)" ) );
}

HB_FUNC( QNETWORKCONFIGURATIONMANAGER_ONCONFIGURATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkConfigurationManager(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "configurationChanged(QNetworkConfiguration)", "configurationChanged(QNetworkConfiguration)" ) );
}

HB_FUNC( QNETWORKCONFIGURATIONMANAGER_ONCONFIGURATIONREMOVED )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkConfigurationManager(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "configurationRemoved(QNetworkConfiguration)", "configurationRemoved(QNetworkConfiguration)" ) );
}

HB_FUNC( QNETWORKCONFIGURATIONMANAGER_ONONLINESTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkConfigurationManager(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "onlineStateChanged(bool)", "onlineStateChanged(bool)" ) );
}

HB_FUNC( QNETWORKCONFIGURATIONMANAGER_ONUPDATECOMPLETED )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkConfigurationManager(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "updateCompleted()", "updateCompleted()" ) );
}
