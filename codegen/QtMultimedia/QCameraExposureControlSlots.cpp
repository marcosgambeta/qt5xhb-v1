%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQCameraExposureControl::actualValueChanged(int parameter)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "actualValueChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparameter = hb_itemPutNI( NULL, parameter );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pparameter );
    hb_itemRelease( psender );
    hb_itemRelease( pparameter );
  }
}

void SlotsQCameraExposureControl::parameterRangeChanged(int parameter)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "parameterRangeChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparameter = hb_itemPutNI( NULL, parameter );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pparameter );
    hb_itemRelease( psender );
    hb_itemRelease( pparameter );
  }
}

void SlotsQCameraExposureControl::requestedValueChanged(int parameter)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "requestedValueChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparameter = hb_itemPutNI( NULL, parameter );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pparameter );
    hb_itemRelease( psender );
    hb_itemRelease( pparameter );
  }
}

$signalMethod=|actualValueChanged(int)
$signalMethod=|parameterRangeChanged(int)
$signalMethod=|requestedValueChanged(int)

$endSlotsClass
