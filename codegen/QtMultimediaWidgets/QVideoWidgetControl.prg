%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QVideoWidgetControl INHERIT QMediaControl

   METHOD delete
   METHOD videoWidget
   METHOD aspectRatioMode
   METHOD setAspectRatioMode
   METHOD isFullScreen
   METHOD setFullScreen
   METHOD brightness
   METHOD setBrightness
   METHOD contrast
   METHOD setContrast
   METHOD hue
   METHOD setHue
   METHOD saturation
   METHOD setSaturation

   METHOD onFullScreenChanged
   METHOD onBrightnessChanged
   METHOD onContrastChanged
   METHOD onHueChanged
   METHOD onSaturationChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QWidget *videoWidget() = 0
$virtualMethod=|QWidget *|videoWidget|

$prototype=virtual Qt::AspectRatioMode aspectRatioMode() const = 0
$virtualMethod=|Qt::AspectRatioMode|aspectRatioMode|

$prototype=virtual void setAspectRatioMode(Qt::AspectRatioMode mode) = 0
$virtualMethod=|void|setAspectRatioMode|Qt::AspectRatioMode

$prototype=virtual bool isFullScreen() const = 0
$virtualMethod=|bool|isFullScreen|

$prototype=virtual void setFullScreen(bool fullScreen) = 0
$virtualMethod=|void|setFullScreen|bool

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

$beginSignals
$signal=|fullScreenChanged(bool)
$signal=|brightnessChanged(int)
$signal=|contrastChanged(int)
$signal=|hueChanged(int)
$signal=|saturationChanged(int)
$endSignals

#pragma ENDDUMP
