$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QQMLENGINE
REQUEST QSIZE
REQUEST QQMLCONTEXT
REQUEST QQUICKITEM
REQUEST QURL
#endif

CLASS QQuickView INHERIT QQuickWindow

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD engine
   METHOD initialSize
   METHOD resizeMode
   METHOD rootContext
   METHOD rootObject
   METHOD setResizeMode
   METHOD source
   METHOD status
   METHOD setSource

   METHOD onStatusChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QList>

/*
QQuickView(QWindow * parent = 0)
*/
$internalConstructor=|new1|QWindow *=0

/*
QQuickView(QQmlEngine * engine, QWindow * parent)
*/
$internalConstructor=|new2|QQmlEngine *,QWindow *

/*
QQuickView(const QUrl & source, QWindow * parent = 0)
*/
$internalConstructor=|new3|const QUrl &,QWindow *=0

//[1]QQuickView(QWindow * parent = 0)
//[2]QQuickView(QQmlEngine * engine, QWindow * parent)
//[3]QQuickView(const QUrl & source, QWindow * parent = 0)

HB_FUNC_STATIC( QQUICKVIEW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWINDOW(1)||ISNIL(1)) )
  {
    QQuickView_new1();
  }
  else if( ISNUMPAR(2) && ISQQMLENGINE(1) && ISQWINDOW(2) )
  {
    QQuickView_new2();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISQWINDOW(2)||ISNIL(2)) )
  {
    QQuickView_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QQmlEngine * engine() const
*/
$method=|QQmlEngine *|engine|

/*
QSize initialSize() const
*/
$method=|QSize|initialSize|

/*
ResizeMode resizeMode() const
*/
$method=|QQuickView::ResizeMode|resizeMode|

/*
QQmlContext * rootContext() const
*/
$method=|QQmlContext *|rootContext|

/*
QQuickItem * rootObject() const
*/
$method=|QQuickItem *|rootObject|

/*
void setResizeMode(ResizeMode)
*/
$method=|void|setResizeMode|QQuickView::ResizeMode

/*
QUrl source() const
*/
$method=|QUrl|source|

/*
Status status() const
*/
$method=|QQuickView::Status|status|

/*
void setSource(const QUrl & url)
*/
$method=|void|setSource|const QUrl &

#pragma ENDDUMP
