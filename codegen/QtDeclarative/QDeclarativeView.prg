$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDECLARATIVEENGINE
REQUEST QDECLARATIVEERROR
REQUEST QSIZE
REQUEST QDECLARATIVECONTEXT
REQUEST QGRAPHICSOBJECT
REQUEST QURL
#endif

CLASS QDeclarativeView INHERIT QGraphicsView

   METHOD new
   METHOD delete
   METHOD engine
   METHOD errors
   METHOD initialSize
   METHOD resizeMode
   METHOD rootContext
   METHOD rootObject
   METHOD setResizeMode
   METHOD setSource
   METHOD source
   METHOD status

   METHOD onSceneResized
   METHOD onStatusChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QDeclarativeError>

$prototype=QDeclarativeView ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QDeclarativeView ( const QUrl & source, QWidget * parent = 0 )
$internalConstructor=|new2|const QUrl &,QWidget *=0

//[1]QDeclarativeView ( QWidget * parent = 0 )
//[2]QDeclarativeView ( const QUrl & source, QWidget * parent = 0 )

HB_FUNC_STATIC( QDECLARATIVEVIEW_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QDeclarativeView_new1();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTQWIDGET(2) )
  {
    QDeclarativeView_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QDeclarativeEngine * engine () const
$method=|QDeclarativeEngine *|engine|

$prototype=QList<QDeclarativeError> errors () const
$method=|QList<QDeclarativeError>|errors|

$prototype=QSize initialSize () const
$method=|QSize|initialSize|

$prototype=ResizeMode resizeMode () const
$method=|QDeclarativeView::ResizeMode|resizeMode|

$prototype=QDeclarativeContext * rootContext () const
$method=|QDeclarativeContext *|rootContext|

$prototype=QGraphicsObject * rootObject () const
$method=|QGraphicsObject *|rootObject|

$prototype=void setResizeMode ( ResizeMode )
$method=|void|setResizeMode|QDeclarativeView::ResizeMode

$prototype=void setSource ( const QUrl & url )
$method=|void|setSource|const QUrl &

$prototype=QUrl source () const
$method=|QUrl|source|

$prototype=Status status () const
$method=|QDeclarativeView::Status|status|

#pragma ENDDUMP
