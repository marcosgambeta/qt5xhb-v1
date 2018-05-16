%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
#endif

$beginClassFrom=QMediaControl

%%   METHOD new
   METHOD delete

   METHOD aspectRatioMode
   METHOD brightness
   METHOD contrast
   METHOD displayRect
   METHOD hue
   METHOD isFullScreen
   METHOD nativeSize
   METHOD repaint
   METHOD saturation
   METHOD setAspectRatioMode
   METHOD setBrightness
   METHOD setContrast
   METHOD setDisplayRect
   METHOD setFullScreen
   METHOD setHue
   METHOD setSaturation
   METHOD setWinId
   METHOD winId

   METHOD onBrightnessChanged
   METHOD onContrastChanged
   METHOD onFullScreenChanged
   METHOD onHueChanged
   METHOD onNativeSizeChanged
   METHOD onSaturationChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QVideoWindowControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=~QVideoWindowControl()
$deleteMethod

$prototype=virtual QRect displayRect() const = 0
$virtualMethod=|QRect|displayRect|

$prototype=virtual void setDisplayRect(const QRect &rect) = 0
$virtualMethod=|void|setDisplayRect|const QRect &

$prototype=virtual bool isFullScreen() const = 0
$virtualMethod=|bool|isFullScreen|

$prototype=virtual void setFullScreen(bool fullScreen) = 0
$virtualMethod=|void|setFullScreen|bool

$prototype=virtual void repaint() = 0
$virtualMethod=|void|repaint|

$prototype=virtual QSize nativeSize() const = 0
$virtualMethod=|QSize|nativeSize|

$prototype=virtual Qt::AspectRatioMode aspectRatioMode() const = 0
$virtualMethod=|Qt::AspectRatioMode|aspectRatioMode|

$prototype=virtual void setAspectRatioMode(Qt::AspectRatioMode mode) = 0
$virtualMethod=|void|setAspectRatioMode|Qt::AspectRatioMode

$prototype=virtual int brightness() const = 0
$virtualMethod=|int|brightness|

$prototype=virtual void setBrightness(int brightness) = 0
$virtualMethod=|void|setBrightness|int

$prototype=virtual int contrast() const = 0
$virtualMethod=|int|contrast|

$prototype=virtual void setContrast(int contrast) = 0
$virtualMethod=|void|setContrast|int

$prototype=virtual int hue() const = 0
$virtualMethod=|int|hue|

$prototype=virtual void setHue(int hue) = 0
$virtualMethod=|void|setHue|int

$prototype=virtual int saturation() const = 0
$virtualMethod=|int|saturation|

$prototype=virtual void setSaturation(int saturation) = 0
$virtualMethod=|void|setSaturation|int

$prototype=virtual WId winId() const = 0
$virtualMethod=|WId|winId|

$prototype=virtual void setWinId(WId id) = 0
$virtualMethod=|void|setWinId|WId

$beginSignals
$signal=|fullScreenChanged(bool)
$signal=|brightnessChanged(int)
$signal=|contrastChanged(int)
$signal=|hueChanged(int)
$signal=|saturationChanged(int)
$signal=|nativeSizeChanged()
$endSignals

#pragma ENDDUMP
