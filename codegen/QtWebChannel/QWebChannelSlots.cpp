%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQWebChannel::blockUpdatesChanged(bool block)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "blockUpdatesChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pblock = hb_itemPutL( NULL, block );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pblock );
    hb_itemRelease( psender );
    hb_itemRelease( pblock );
  }
#endif
}

$signalMethod=5,4,0|blockUpdatesChanged(bool)

$endSlotsClass
