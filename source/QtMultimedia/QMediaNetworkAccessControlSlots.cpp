/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QMediaNetworkAccessControlSlots.h"


static SlotsQMediaNetworkAccessControl * s = NULL;

SlotsQMediaNetworkAccessControl::SlotsQMediaNetworkAccessControl(QObject *parent) : QObject(parent)
{
}

SlotsQMediaNetworkAccessControl::~SlotsQMediaNetworkAccessControl()
{
}

void SlotsQMediaNetworkAccessControl::configurationChanged(const QNetworkConfiguration & configuration)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "configurationChanged(QNetworkConfiguration)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pconfiguration = hb_itemPutPtr( NULL, (QNetworkConfiguration *) &configuration );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pconfiguration );
    hb_itemRelease( psender );
    hb_itemRelease( pconfiguration );
  }
}

HB_FUNC( QMEDIANETWORKACCESSCONTROL_ONCONFIGURATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaNetworkAccessControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "configurationChanged(QNetworkConfiguration)", "configurationChanged(QNetworkConfiguration)" ) );
}
