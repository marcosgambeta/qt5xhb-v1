%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

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

$signalMethod=5,4,0|messageReceived(QJsonObject,QWebChannelAbstractTransport*)

$endSlotsClass
