%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQAbstractSlider::actionTriggered(int action)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "actionTriggered(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM paction = hb_itemPutNI( NULL, action );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, paction );
    hb_itemRelease( psender );
    hb_itemRelease( paction );
  }
}

void SlotsQAbstractSlider::rangeChanged( int min, int max )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rangeChanged(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmin = hb_itemPutNI( NULL, min );
    PHB_ITEM pmax = hb_itemPutNI( NULL, max );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pmin, pmax );
    hb_itemRelease( psender );
    hb_itemRelease( pmin );
    hb_itemRelease( pmax );
  }
}

void SlotsQAbstractSlider::sliderMoved( int value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sliderMoved(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

$slot=|sliderPressed()

$slot=|sliderReleased()

void SlotsQAbstractSlider::valueChanged( int value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

$signalMethod=|actionTriggered(int)
$signalMethod=|rangeChanged(int,int)
$signalMethod=|sliderMoved(int)
$signalMethod=|sliderPressed()
$signalMethod=|sliderReleased()
$signalMethod=|valueChanged(int)

$endSlotsClass
