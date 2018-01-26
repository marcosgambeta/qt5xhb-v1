%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQCameraExposure::apertureChanged(qreal value)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "apertureChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

$slot=|apertureRangeChanged()

void SlotsQCameraExposure::exposureCompensationChanged(qreal value)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "exposureCompensationChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

void SlotsQCameraExposure::flashReady(bool ready)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "flashReady(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pready = hb_itemPutL( NULL, ready );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pready );
    hb_itemRelease( psender );
    hb_itemRelease( pready );
  }
}

void SlotsQCameraExposure::isoSensitivityChanged(int value)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "isoSensitivityChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

void SlotsQCameraExposure::shutterSpeedChanged(qreal speed)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "shutterSpeedChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pspeed = hb_itemPutND( NULL, speed );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pspeed );
    hb_itemRelease( psender );
    hb_itemRelease( pspeed );
  }
}

$slot=|shutterSpeedRangeChanged()

$signalMethod=|apertureChanged(qreal)
$signalMethod=|apertureRangeChanged()
$signalMethod=|exposureCompensationChanged(qreal)
$signalMethod=|flashReady(bool)
$signalMethod=|isoSensitivityChanged(int)
$signalMethod=|shutterSpeedChanged(qreal)
$signalMethod=|shutterSpeedRangeChanged()

$endSlotsClass
