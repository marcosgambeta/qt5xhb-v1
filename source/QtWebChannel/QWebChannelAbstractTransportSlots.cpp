/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QWebChannelAbstractTransportSlots.h"


static SlotsQWebChannelAbstractTransport * s = NULL;

SlotsQWebChannelAbstractTransport::SlotsQWebChannelAbstractTransport(QObject *parent) : QObject(parent)
{
}

SlotsQWebChannelAbstractTransport::~SlotsQWebChannelAbstractTransport()
{
}

void SlotsQWebChannelAbstractTransport::messageReceived(const QJsonObject &message, QWebChannelAbstractTransport *transport)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "messageReceived(QJsonObject,QWebChannelAbstractTransport*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmessage = hb_itemPutPtr( NULL, (QJsonObject *) &message );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pmessage, ptransport );
    hb_itemRelease( psender );
    hb_itemRelease( pmessage );
    hb_itemRelease( ptransport );
  }
#endif
}

HB_FUNC( QWEBCHANNELABSTRACTTRANSPORT_ONMESSAGERECEIVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQWebChannelAbstractTransport(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "messageReceived(QJsonObject,QWebChannelAbstractTransport*)", "messageReceived(QJsonObject,QWebChannelAbstractTransport*)" ) );
#else
  hb_retl(false);
#endif
}
