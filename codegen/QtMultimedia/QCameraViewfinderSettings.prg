%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,5,0

$prototype=QCameraViewfinderSettings()
$internalConstructor=5,5,0|new1|

$prototype=QCameraViewfinderSettings(const QCameraViewfinderSettings& other)
$internalConstructor=5,5,0|new2|const QCameraViewfinderSettings &

/*
[1]QCameraViewfinderSettings()
[2]QCameraViewfinderSettings(const QCameraViewfinderSettings& other)
*/

HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QCameraViewfinderSettings_new1();
  }
  else if( ISNUMPAR(1) && ISQCAMERAVIEWFINDERSETTINGS(1) )
  {
    QCameraViewfinderSettings_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QCameraViewfinderSettings()
$deleteMethod=5,5,0

$prototype=void swap(QCameraViewfinderSettings &other) Q_DECL_NOTHROW
$method=5,5,0|void|swap|QCameraViewfinderSettings &

$prototype=bool isNull() const
$method=5,5,0|bool|isNull|

$prototype=QSize resolution() const
$method=5,5,0|QSize|resolution|

$prototype=void setResolution(const QSize &)
$internalMethod=5,5,0|void|setResolution,setResolution1|const QSize &

$prototype=void setResolution(int width, int height)
$internalMethod=5,5,0|void|setResolution,setResolution2|int,int

/*
[1]void setResolution(const QSize &)
[2]void setResolution(int width, int height)
*/

HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_SETRESOLUTION )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QCameraViewfinderSettings_setResolution1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QCameraViewfinderSettings_setResolution2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setResolution

$prototype=qreal minimumFrameRate() const
$method=5,5,0|qreal|minimumFrameRate|

$prototype=void setMinimumFrameRate(qreal rate)
$method=5,5,0|void|setMinimumFrameRate|qreal

$prototype=qreal maximumFrameRate() const
$method=5,5,0|qreal|maximumFrameRate|

$prototype=void setMaximumFrameRate(qreal rate)
$method=5,5,0|void|setMaximumFrameRate|qreal

$prototype=QVideoFrame::PixelFormat pixelFormat() const
$method=5,5,0|QVideoFrame::PixelFormat|pixelFormat|

$prototype=void setPixelFormat(QVideoFrame::PixelFormat format)
$method=5,5,0|void|setPixelFormat|QVideoFrame::PixelFormat

$prototype=QSize pixelAspectRatio() const
$method=5,5,0|QSize|pixelAspectRatio|

$prototype=void setPixelAspectRatio(const QSize &ratio)
$internalMethod=5,5,0|void|setPixelAspectRatio,setPixelAspectRatio1|const QSize &

$prototype=void setPixelAspectRatio(int horizontal, int vertical)
$internalMethod=5,5,0|void|setPixelAspectRatio,setPixelAspectRatio2|int,int

/*
[1]void setPixelAspectRatio(const QSize &ratio)
[2]void setPixelAspectRatio(int horizontal, int vertical)
*/

HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGS_SETPIXELASPECTRATIO )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QCameraViewfinderSettings_setPixelAspectRatio1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QCameraViewfinderSettings_setPixelAspectRatio2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setPixelAspectRatio

#pragma ENDDUMP
