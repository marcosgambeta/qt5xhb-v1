/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QQuickWidgetSlots.h"


static SlotsQQuickWidget * s = NULL;

SlotsQQuickWidget::SlotsQQuickWidget(QObject *parent) : QObject(parent)
{
}

SlotsQQuickWidget::~SlotsQQuickWidget()
{
}

void SlotsQQuickWidget::statusChanged(QQuickWidget::Status status)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "statusChanged(QQuickWidget::Status)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstatus );
    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
  }
#endif
}

void SlotsQQuickWidget::sceneGraphError(QQuickWindow::SceneGraphError error, const QString &message)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sceneGraphError(QQuickWindow::SceneGraphError,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    PHB_ITEM pmessage = hb_itemPutC( NULL, RQSTRING(message) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, perror, pmessage );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
    hb_itemRelease( pmessage );
  }
#endif
}

HB_FUNC( QQUICKWIDGET_ONSTATUSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQQuickWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "statusChanged(QQuickWidget::Status)", "statusChanged(QQuickWidget::Status)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QQUICKWIDGET_ONSCENEGRAPHERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQQuickWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sceneGraphError(QQuickWindow::SceneGraphError,QString)", "sceneGraphError(QQuickWindow::SceneGraphError,QString)" ) );
#else
  hb_retl(false);
#endif
}
