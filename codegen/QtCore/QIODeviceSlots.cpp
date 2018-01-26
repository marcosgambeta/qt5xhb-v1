%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|aboutToClose()

void SlotsQIODevice::bytesWritten( qint64 bytes )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "bytesWritten(qint64)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbytes = hb_itemPutNI( NULL, bytes );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pbytes );
    hb_itemRelease( psender );
    hb_itemRelease( pbytes );
  }
}

$slot=|readChannelFinished()

$slot=|readyRead()

$signalMethod=|aboutToClose()
$signalMethod=|bytesWritten(qint64)
$signalMethod=|readChannelFinished()
$signalMethod=|readyRead()

$endSlotsClass
