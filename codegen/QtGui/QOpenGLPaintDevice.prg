$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAINTENGINE
REQUEST QOPENGLCONTEXT
REQUEST QSIZE
#endif

CLASS QOpenGLPaintDevice INHERIT QPaintDevice

   METHOD new
   METHOD delete
   METHOD devType
   METHOD paintEngine
   METHOD context
   METHOD size
   METHOD setSize
   METHOD setDevicePixelRatio
   METHOD dotsPerMeterX
   METHOD dotsPerMeterY
   METHOD setDotsPerMeterX
   METHOD setDotsPerMeterY
   METHOD setPaintFlipped
   METHOD paintFlipped
   METHOD ensureActiveTarget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QOpenGLPaintDevice()
$internalConstructor=|new1|

$prototype=QOpenGLPaintDevice(const QSize &size)
$internalConstructor=|new2|const QSize &

$prototype=QOpenGLPaintDevice(int width, int height)
$internalConstructor=|new3|int,int

//[1]QOpenGLPaintDevice()
//[2]QOpenGLPaintDevice(const QSize &size)
//[3]QOpenGLPaintDevice(int width, int height)

HB_FUNC_STATIC( QOPENGLPAINTDEVICE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLPaintDevice_new1();
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QOpenGLPaintDevice_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QOpenGLPaintDevice_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=int devType() const
$method=|int|devType|

$prototype=QPaintEngine *paintEngine() const
$method=|QPaintEngine *|paintEngine|

$prototype=QOpenGLContext *context() const
$method=|QOpenGLContext *|context|

$prototype=QSize size() const
$method=|QSize|size|

$prototype=void setSize(const QSize &size)
$method=|void|setSize|const QSize &

$prototype=void setDevicePixelRatio(qreal devicePixelRatio)
$method=|void|setDevicePixelRatio|qreal

$prototype=qreal dotsPerMeterX() const
$method=|qreal|dotsPerMeterX|

$prototype=qreal dotsPerMeterY() const
$method=|qreal|dotsPerMeterY|

$prototype=void setDotsPerMeterX(qreal)
$method=|void|setDotsPerMeterX|qreal

$prototype=void setDotsPerMeterY(qreal)
$method=|void|setDotsPerMeterY|qreal

$prototype=void setPaintFlipped(bool flipped)
$method=|void|setPaintFlipped|bool

$prototype=bool paintFlipped() const
$method=|bool|paintFlipped|

$prototype=virtual void ensureActiveTarget()
$virtualMethod=|void|ensureActiveTarget|

#pragma ENDDUMP
