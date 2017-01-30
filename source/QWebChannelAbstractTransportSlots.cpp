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
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "messageReceived(QJsonObject,QWebChannelAbstractTransport*";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(messageReceived(QJsonObject,QWebChannelAbstractTransport*), s, SLOT(messageReceived(QJsonObject,QWebChannelAbstractTransport*) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "messageReceived(QJsonObject,QWebChannelAbstractTransport*";
    ret = object->disconnect(object, SIGNAL(messageReceived(QJsonObject,QWebChannelAbstractTransport*), s, SLOT(messageReceived(QJsonObject,QWebChannelAbstractTransport*) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}

