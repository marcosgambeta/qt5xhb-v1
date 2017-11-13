/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QOpenGLWidgetSlots.h"


static SlotsQOpenGLWidget * s = NULL;

SlotsQOpenGLWidget::SlotsQOpenGLWidget(QObject *parent) : QObject(parent)
{
}

SlotsQOpenGLWidget::~SlotsQOpenGLWidget()
{
}

void SlotsQOpenGLWidget::aboutToCompose()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "aboutToCompose()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQOpenGLWidget::frameSwapped()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "frameSwapped()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQOpenGLWidget::aboutToResize()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "aboutToResize()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQOpenGLWidget::resized()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "resized()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

HB_FUNC( QOPENGLWIDGET_ONABOUTTOCOMPOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQOpenGLWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "aboutToCompose()", "aboutToCompose()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QOPENGLWIDGET_ONFRAMESWAPPED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQOpenGLWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "frameSwapped()", "frameSwapped()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QOPENGLWIDGET_ONABOUTTORESIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQOpenGLWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "aboutToResize()", "aboutToResize()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QOPENGLWIDGET_ONRESIZED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQOpenGLWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "resized()", "resized()" ) );
#else
  hb_retl(false);
#endif
}
