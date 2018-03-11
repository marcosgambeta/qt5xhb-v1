%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QQMLENGINE
REQUEST QQMLCONTEXT
REQUEST QQUICKITEM
REQUEST QQMLERROR
REQUEST QSIZE
REQUEST QSURFACEFORMAT
#endif

CLASS QQuickWidget INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD source
   METHOD setSource
   METHOD engine
   METHOD rootContext
   METHOD rootObject
   METHOD resizeMode
   METHOD setResizeMode
   METHOD status
   METHOD errors
   METHOD sizeHint
   METHOD initialSize
   METHOD setContent
   METHOD format
   METHOD setFormat

   METHOD onStatusChanged
   METHOD onSceneGraphError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,3,0

#include <QQmlError>
#include <QQmlEngine>
#include <QQmlContext>
#include <QQuickItem>

$prototype=explicit QQuickWidget(QWidget *parent = 0)
$internalConstructor=5,3,0|new1|QWidget *=0

$prototype=QQuickWidget(QQmlEngine* engine, QWidget *parent)
$internalConstructor=5,3,0|new2|QQmlEngine *,QWidget *

$prototype=QQuickWidget(const QUrl &source, QWidget *parent = 0)
$internalConstructor=5,3,0|new3|const QUrl &,QWidget *=0

//[1]explicit QQuickWidget(QWidget *parent = 0)
//[2]QQuickWidget(QQmlEngine* engine, QWidget *parent)
//[3]QQuickWidget(const QUrl &source, QWidget *parent = 0)

HB_FUNC_STATIC( QQUICKWIDGET_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QQuickWidget_new1();
  }
  else if( ISNUMPAR(2) && ISQQMLENGINE(1) && ISQWIDGET(2) )
  {
    QQuickWidget_new2();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTQWIDGET(2) )
  {
    QQuickWidget_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$deleteMethod=5,3,0

$prototype=QUrl source() const
$method=5,3,0|QUrl|source|

$prototype=void setSource(const QUrl&)
$method=5,3,0|void|setSource|const QUrl &

$prototype=QQmlEngine* engine() const
$method=5,3,0|QQmlEngine *|engine|

$prototype=QQmlContext* rootContext() const
$method=5,3,0|QQmlContext *|rootContext|

$prototype=QQuickItem *rootObject() const
$method=5,3,0|QQuickItem *|rootObject|

$prototype=ResizeMode resizeMode() const
$method=5,3,0|QQuickWidget::ResizeMode|resizeMode|

$prototype=void setResizeMode(ResizeMode)
$method=5,3,0|void|setResizeMode|QQuickWidget::ResizeMode

$prototype=Status status() const
$method=5,3,0|QQuickWidget::Status|status|

$prototype=QList<QQmlError> errors() const
$method=5,3,0|QList<QQmlError>|errors|

$prototype=QSize sizeHint() const
$method=5,3,0|QSize|sizeHint|

$prototype=QSize initialSize() const
$method=5,3,0|QSize|initialSize|

$prototype=void setContent(const QUrl& url, QQmlComponent *component, QObject *item)
$method=5,3,0|void|setContent|const QUrl &,QQmlComponent *,QObject *

$prototype=QSurfaceFormat format() const
$method=5,3,0|QSurfaceFormat|format|

$prototype=void setFormat(const QSurfaceFormat &format)
$method=5,3,0|void|setFormat|const QSurfaceFormat &

$beginSignals
$signal=5,3,0|statusChanged(QQuickWidget::Status)
$signal=5,3,0|sceneGraphError(QQuickWindow::SceneGraphError,QString)
$endSignals

#pragma ENDDUMP
