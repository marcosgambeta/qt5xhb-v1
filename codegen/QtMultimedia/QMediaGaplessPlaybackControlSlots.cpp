%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQMediaGaplessPlaybackControl::advancedToNextMedia()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "advancedToNextMedia()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQMediaGaplessPlaybackControl::crossfadeTimeChanged(qreal crossfadeTime)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "crossfadeTimeChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcrossfadeTime = hb_itemPutND( NULL, crossfadeTime );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcrossfadeTime );
    hb_itemRelease( psender );
    hb_itemRelease( pcrossfadeTime );
  }
}

void SlotsQMediaGaplessPlaybackControl::nextMediaChanged(const QMediaContent & media)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "nextMediaChanged(QMediaContent)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmedia = hb_itemPutPtr( NULL, (QMediaContent *) &media );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmedia );
    hb_itemRelease( psender );
    hb_itemRelease( pmedia );
  }
}

$signalMethod=|advancedToNextMedia()
$signalMethod=|crossfadeTimeChanged(qreal)
$signalMethod=|nextMediaChanged(QMediaContent)

$endSlotsClass
