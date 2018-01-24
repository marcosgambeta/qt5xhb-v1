%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QQuickPaintedItemSlots.h"

static SlotsQQuickPaintedItem * s = NULL;

SlotsQQuickPaintedItem::SlotsQQuickPaintedItem(QObject *parent) : QObject(parent)
{
}

SlotsQQuickPaintedItem::~SlotsQQuickPaintedItem()
{
}

void SlotsQQuickPaintedItem::contentsScaleChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "contentsScaleChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQQuickPaintedItem::contentsSizeChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "contentsSizeChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQQuickPaintedItem::fillColorChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "fillColorChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQQuickPaintedItem::renderTargetChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "renderTargetChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QQUICKPAINTEDITEM_ONCONTENTSSCALECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQQuickPaintedItem(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "contentsScaleChanged()", "contentsScaleChanged()" ) );
}

HB_FUNC( QQUICKPAINTEDITEM_ONCONTENTSSIZECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQQuickPaintedItem(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "contentsSizeChanged()", "contentsSizeChanged()" ) );
}

HB_FUNC( QQUICKPAINTEDITEM_ONFILLCOLORCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQQuickPaintedItem(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "fillColorChanged()", "fillColorChanged()" ) );
}

HB_FUNC( QQUICKPAINTEDITEM_ONRENDERTARGETCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQQuickPaintedItem(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "renderTargetChanged()", "renderTargetChanged()" ) );
}
