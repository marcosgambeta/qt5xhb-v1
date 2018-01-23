%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QCameraViewfinderSettings

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD isNull
   METHOD maximumFrameRate
   METHOD minimumFrameRate
   METHOD pixelAspectRatio
   METHOD pixelFormat
   METHOD resolution
   METHOD setMaximumFrameRate
   METHOD setMinimumFrameRate
   METHOD setPixelAspectRatio
   METHOD setPixelFormat
   METHOD setResolution
   METHOD swap

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCameraViewfinderSettings()
$internalConstructor=|new1|

$prototype=QCameraViewfinderSettings(const QCameraViewfinderSettings& other)
$internalConstructor=|new2|const QCameraViewfinderSettings &

//[1]QCameraViewfinderSettings()
//[2]QCameraViewfinderSettings(const QCameraViewfinderSettings& other)

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
$deleteMethod

$prototype=void swap(QCameraViewfinderSettings &other) Q_DECL_NOTHROW
$method=|void|swap|QCameraViewfinderSettings &

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=QSize resolution() const
$method=|QSize|resolution|

$prototype=void setResolution(const QSize &)
$internalMethod=|void|setResolution,setResolution1|const QSize &

$prototype=void setResolution(int width, int height)
$internalMethod=|void|setResolution,setResolution2|int,int

//[1]void setResolution(const QSize &)
//[2]void setResolution(int width, int height)

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

$prototype=qreal minimumFrameRate() const
$method=|qreal|minimumFrameRate|

$prototype=void setMinimumFrameRate(qreal rate)
$method=|void|setMinimumFrameRate|qreal

$prototype=qreal maximumFrameRate() const
$method=|qreal|maximumFrameRate|

$prototype=void setMaximumFrameRate(qreal rate)
$method=|void|setMaximumFrameRate|qreal

$prototype=QVideoFrame::PixelFormat pixelFormat() const
$method=|QVideoFrame::PixelFormat|pixelFormat|

$prototype=void setPixelFormat(QVideoFrame::PixelFormat format)
$method=|void|setPixelFormat|QVideoFrame::PixelFormat

$prototype=QSize pixelAspectRatio() const
$method=|QSize|pixelAspectRatio|

$prototype=void setPixelAspectRatio(const QSize &ratio)
$internalMethod=|void|setPixelAspectRatio,setPixelAspectRatio1|const QSize &

$prototype=void setPixelAspectRatio(int horizontal, int vertical)
$internalMethod=|void|setPixelAspectRatio,setPixelAspectRatio2|int,int

//[1]void setPixelAspectRatio(const QSize &ratio)
//[2]void setPixelAspectRatio(int horizontal, int vertical)

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

#pragma ENDDUMP
