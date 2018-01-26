%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|afterRendering()

$slot=|beforeRendering()

$slot=|beforeSynchronizing()

void SlotsQQuickWindow::colorChanged(const QColor & color)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "colorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcolor = hb_itemPutPtr( NULL, (QColor *) &color );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}

$slot=|frameSwapped()

$slot=|sceneGraphInitialized()

$slot=|sceneGraphInvalidated()

$signalMethod=|afterRendering()
$signalMethod=|beforeRendering()
$signalMethod=|beforeSynchronizing()
$signalMethod=|colorChanged(QColor)
$signalMethod=|frameSwapped()
$signalMethod=|sceneGraphInitialized()
$signalMethod=|sceneGraphInvalidated()

$endSlotsClass
