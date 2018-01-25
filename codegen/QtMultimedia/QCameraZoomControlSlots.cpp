%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQCameraZoomControl::currentDigitalZoomChanged(qreal zoom)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentDigitalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pzoom = hb_itemPutND( NULL, zoom );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pzoom );
    hb_itemRelease( psender );
    hb_itemRelease( pzoom );
  }
}

void SlotsQCameraZoomControl::currentOpticalZoomChanged(qreal zoom)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentOpticalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pzoom = hb_itemPutND( NULL, zoom );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pzoom );
    hb_itemRelease( psender );
    hb_itemRelease( pzoom );
  }
}

void SlotsQCameraZoomControl::maximumDigitalZoomChanged(qreal zoom)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "maximumDigitalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pzoom = hb_itemPutND( NULL, zoom );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pzoom );
    hb_itemRelease( psender );
    hb_itemRelease( pzoom );
  }
}

void SlotsQCameraZoomControl::maximumOpticalZoomChanged(qreal zoom)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "maximumOpticalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pzoom = hb_itemPutND( NULL, zoom );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pzoom );
    hb_itemRelease( psender );
    hb_itemRelease( pzoom );
  }
}

void SlotsQCameraZoomControl::requestedDigitalZoomChanged(qreal zoom)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "requestedDigitalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pzoom = hb_itemPutND( NULL, zoom );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pzoom );
    hb_itemRelease( psender );
    hb_itemRelease( pzoom );
  }
}

void SlotsQCameraZoomControl::requestedOpticalZoomChanged(qreal zoom)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "requestedOpticalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pzoom = hb_itemPutND( NULL, zoom );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pzoom );
    hb_itemRelease( psender );
    hb_itemRelease( pzoom );
  }
}

$signalMethod=|currentDigitalZoomChanged(qreal)
$signalMethod=|currentOpticalZoomChanged(qreal)
$signalMethod=|maximumDigitalZoomChanged(qreal)
$signalMethod=|maximumOpticalZoomChanged(qreal)
$signalMethod=|requestedDigitalZoomChanged(qreal)
$signalMethod=|requestedOpticalZoomChanged(qreal)

$endSlotsClass
