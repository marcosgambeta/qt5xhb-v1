/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QDockWidgetSlots.h"


static SlotsQDockWidget * s = NULL;

SlotsQDockWidget::SlotsQDockWidget(QObject *parent) : QObject(parent)
{
}

SlotsQDockWidget::~SlotsQDockWidget()
{
}

void SlotsQDockWidget::allowedAreasChanged ( Qt::DockWidgetAreas allowedAreas )
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

void SlotsQDockWidget::dockLocationChanged ( Qt::DockWidgetArea area )
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

void SlotsQDockWidget::featuresChanged ( QDockWidget::DockWidgetFeatures features )
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

void SlotsQDockWidget::topLevelChanged ( bool topLevel )
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

void SlotsQDockWidget::visibilityChanged ( bool visible )
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

HB_FUNC( QDOCKWIDGET_ONALLOWEDAREASCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDockWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "allowedAreasChanged(Qt::DockWidgetAreas)", "allowedAreasChanged(Qt::DockWidgetAreas)" ) );
}

HB_FUNC( QDOCKWIDGET_ONDOCKLOCATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDockWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "dockLocationChanged(Qt::DockWidgetArea)", "dockLocationChanged(Qt::DockWidgetArea)" ) );
}

HB_FUNC( QDOCKWIDGET_ONFEATURESCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDockWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "featuresChanged(QDockWidget::DockWidgetFeatures)", "featuresChanged(QDockWidget::DockWidgetFeatures)" ) );
}

HB_FUNC( QDOCKWIDGET_ONTOPLEVELCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDockWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "topLevelChanged(bool)", "topLevelChanged(bool)" ) );
}

HB_FUNC( QDOCKWIDGET_ONVISIBILITYCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDockWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "visibilityChanged(bool)", "visibilityChanged(bool)" ) );
}
