%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQAbstractButton::clicked(bool checked)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "clicked(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pchecked = hb_itemPutL( NULL, checked );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pchecked );
    hb_itemRelease( psender );
    hb_itemRelease( pchecked );
  }
}

$slot=|pressed()

$slot=|released()

void SlotsQAbstractButton::toggled(bool checked)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "toggled(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pchecked = hb_itemPutL( NULL, checked );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pchecked );
    hb_itemRelease( psender );
    hb_itemRelease( pchecked );
  }
}

$signalMethod=|clicked(bool)
$signalMethod=|pressed()
$signalMethod=|released()
$signalMethod=|toggled(bool)

$endSlotsClass
