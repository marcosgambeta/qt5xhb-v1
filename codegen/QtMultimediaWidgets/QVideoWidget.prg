%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget,QMediaBindableInterface

   METHOD new
   METHOD delete
   METHOD mediaObject
   METHOD isFullScreen
   METHOD aspectRatioMode
   METHOD brightness
   METHOD contrast
   METHOD hue
   METHOD saturation
   METHOD sizeHint
   METHOD setFullScreen
   METHOD setAspectRatioMode
   METHOD setBrightness
   METHOD setContrast
   METHOD setHue
   METHOD setSaturation

   METHOD onFullScreenChanged
   METHOD onBrightnessChanged
   METHOD onContrastChanged
   METHOD onHueChanged
   METHOD onSaturationChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QVideoWidget(QWidget *parent = 0)
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=QMediaObject *mediaObject() const
$method=|QMediaObject *|mediaObject|

$prototype=bool isFullScreen() const
$method=|bool|isFullScreen|

$prototype=Qt::AspectRatioMode aspectRatioMode() const
$method=|Qt::AspectRatioMode|aspectRatioMode|

$prototype=int brightness() const
$method=|int|brightness|

$prototype=int contrast() const
$method=|int|contrast|

$prototype=int hue() const
$method=|int|hue|

$prototype=int saturation() const
$method=|int|saturation|

$prototype=QSize sizeHint() const
$method=|QSize|sizeHint|

$prototype=void setFullScreen(bool fullScreen)
$method=|void|setFullScreen|bool

$prototype=void setAspectRatioMode(Qt::AspectRatioMode mode)
$method=|void|setAspectRatioMode|Qt::AspectRatioMode

$prototype=void setBrightness(int brightness)
$method=|void|setBrightness|int

$prototype=void setContrast(int contrast)
$method=|void|setContrast|int

$prototype=void setHue(int hue)
$method=|void|setHue|int

$prototype=void setSaturation(int saturation)
$method=|void|setSaturation|int

$beginSignals
$signal=|fullScreenChanged(bool)
$signal=|brightnessChanged(int)
$signal=|contrastChanged(int)
$signal=|hueChanged(int)
$signal=|saturationChanged(int)
$endSignals

#pragma ENDDUMP
