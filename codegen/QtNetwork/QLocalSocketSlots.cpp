%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|connected()

$slot=|disconnected()

void SlotsQLocalSocket::error( QLocalSocket::LocalSocketError socketError )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QLocalSocket::LocalSocketError)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psocketError = hb_itemPutNI( NULL, (int) socketError );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psocketError );
    hb_itemRelease( psender );
    hb_itemRelease( psocketError );
  }
}

void SlotsQLocalSocket::stateChanged( QLocalSocket::LocalSocketState socketState )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QLocalSocket::LocalSocketState)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psocketState = hb_itemPutNI( NULL, (int) socketState );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psocketState );
    hb_itemRelease( psender );
    hb_itemRelease( psocketState );
  }
}

$signalMethod=|connected()
$signalMethod=|disconnected()
$signalMethod=|error(QLocalSocket::LocalSocketError)
$signalMethod=|stateChanged(QLocalSocket::LocalSocketState)

$endSlotsClass
