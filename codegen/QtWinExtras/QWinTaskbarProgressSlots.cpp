%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQWinTaskbarProgress::valueChanged(int value)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
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
#endif
}

void SlotsQWinTaskbarProgress::minimumChanged(int minimum)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "minimumChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pminimum = hb_itemPutNI( NULL, minimum );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pminimum );
    hb_itemRelease( psender );
    hb_itemRelease( pminimum );
  }
#endif
}

void SlotsQWinTaskbarProgress::maximumChanged(int maximum)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "maximumChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmaximum = hb_itemPutNI( NULL, maximum );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmaximum );
    hb_itemRelease( psender );
    hb_itemRelease( pmaximum );
  }
#endif
}

void SlotsQWinTaskbarProgress::visibilityChanged(bool visible)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "visibilityChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvisible );
    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
#endif
}

void SlotsQWinTaskbarProgress::pausedChanged(bool paused)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pausedChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppaused = hb_itemPutL( NULL, paused );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppaused );
    hb_itemRelease( psender );
    hb_itemRelease( ppaused );
  }
#endif
}

void SlotsQWinTaskbarProgress::stoppedChanged(bool stopped)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stoppedChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstopped = hb_itemPutL( NULL, stopped );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstopped );
    hb_itemRelease( psender );
    hb_itemRelease( pstopped );
  }
#endif
}

$signalMethod=5,2,0|valueChanged(int)
$signalMethod=5,2,0|minimumChanged(int)
$signalMethod=5,2,0|maximumChanged(int)
$signalMethod=5,2,0|visibilityChanged(bool)
$signalMethod=5,2,0|pausedChanged(bool)
$signalMethod=5,2,0|stoppedChanged(bool)

$endSlotsClass
