%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

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
    PHB_ITEM pmessage = hb_itemPutC( NULL, QSTRINGTOSTRING(message) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, perror, pmessage );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
    hb_itemRelease( pmessage );
  }
#endif
}

$signalMethod=5,3,0|statusChanged(QQuickWidget::Status)
$signalMethod=5,3,0|sceneGraphError(QQuickWindow::SceneGraphError,QString)

$endSlotsClass
