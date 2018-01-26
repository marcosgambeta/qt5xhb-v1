%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQDockWidget::allowedAreasChanged( Qt::DockWidgetAreas allowedAreas )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "allowedAreasChanged(Qt::DockWidgetAreas)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pallowedAreas = hb_itemPutNI( NULL, (int) allowedAreas );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pallowedAreas );
    hb_itemRelease( psender );
    hb_itemRelease( pallowedAreas );
  }
}

void SlotsQDockWidget::dockLocationChanged( Qt::DockWidgetArea area )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dockLocationChanged(Qt::DockWidgetArea)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM parea = hb_itemPutNI( NULL, (int) area );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, parea );
    hb_itemRelease( psender );
    hb_itemRelease( parea );
  }
}

void SlotsQDockWidget::featuresChanged( QDockWidget::DockWidgetFeatures features )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "featuresChanged(QDockWidget::DockWidgetFeatures)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfeatures = hb_itemPutNI( NULL, (int) features );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfeatures );
    hb_itemRelease( psender );
    hb_itemRelease( pfeatures );
  }
}

void SlotsQDockWidget::topLevelChanged( bool topLevel )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "topLevelChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptopLevel = hb_itemPutL( NULL, topLevel );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptopLevel );
    hb_itemRelease( psender );
    hb_itemRelease( ptopLevel );
  }
}

void SlotsQDockWidget::visibilityChanged( bool visible )
{
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
}

$signalMethod=|allowedAreasChanged(Qt::DockWidgetAreas)
$signalMethod=|dockLocationChanged(Qt::DockWidgetArea)
$signalMethod=|featuresChanged(QDockWidget::DockWidgetFeatures)
$signalMethod=|topLevelChanged(bool)
$signalMethod=|visibilityChanged(bool)

$endSlotsClass
