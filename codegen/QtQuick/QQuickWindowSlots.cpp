%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QQuickWindowSlots.h"

static SlotsQQuickWindow * s = NULL;

SlotsQQuickWindow::SlotsQQuickWindow(QObject *parent) : QObject(parent)
{
}

SlotsQQuickWindow::~SlotsQQuickWindow()
{
}

void SlotsQQuickWindow::afterRendering()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "afterRendering()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQQuickWindow::beforeRendering()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "beforeRendering()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQQuickWindow::beforeSynchronizing()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "beforeSynchronizing()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

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

void SlotsQQuickWindow::frameSwapped()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "frameSwapped()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQQuickWindow::sceneGraphInitialized()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sceneGraphInitialized()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQQuickWindow::sceneGraphInvalidated()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sceneGraphInvalidated()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QQUICKWINDOW_ONAFTERRENDERING )
{
  if( s == NULL )
  {
    s = new SlotsQQuickWindow(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "afterRendering()", "afterRendering()" ) );
}

HB_FUNC( QQUICKWINDOW_ONBEFORERENDERING )
{
  if( s == NULL )
  {
    s = new SlotsQQuickWindow(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "beforeRendering()", "beforeRendering()" ) );
}

HB_FUNC( QQUICKWINDOW_ONBEFORESYNCHRONIZING )
{
  if( s == NULL )
  {
    s = new SlotsQQuickWindow(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "beforeSynchronizing()", "beforeSynchronizing()" ) );
}

HB_FUNC( QQUICKWINDOW_ONCOLORCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQQuickWindow(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "colorChanged(QColor)", "colorChanged(QColor)" ) );
}

HB_FUNC( QQUICKWINDOW_ONFRAMESWAPPED )
{
  if( s == NULL )
  {
    s = new SlotsQQuickWindow(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "frameSwapped()", "frameSwapped()" ) );
}

HB_FUNC( QQUICKWINDOW_ONSCENEGRAPHINITIALIZED )
{
  if( s == NULL )
  {
    s = new SlotsQQuickWindow(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sceneGraphInitialized()", "sceneGraphInitialized()" ) );
}

HB_FUNC( QQUICKWINDOW_ONSCENEGRAPHINVALIDATED )
{
  if( s == NULL )
  {
    s = new SlotsQQuickWindow(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sceneGraphInvalidated()", "sceneGraphInvalidated()" ) );
}
