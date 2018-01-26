%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|indexingFinished()

$slot=|indexingStarted()

void SlotsQHelpSearchEngine::searchingFinished( int hits )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "searchingFinished(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM phits = hb_itemPutNI( NULL, hits );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, phits );
    hb_itemRelease( psender );
    hb_itemRelease( phits );
  }
}

$slot=|searchingStarted()

$signalMethod=|indexingFinished()
$signalMethod=|indexingStarted()
$signalMethod=|searchingFinished(int)
$signalMethod=|searchingStarted()

$endSlotsClass
