$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QVideoWidgetControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

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

/*
virtual QWidget *videoWidget() = 0
*/
$method=|QWidget *|videoWidget|

/*
virtual Qt::AspectRatioMode aspectRatioMode() const = 0
*/
$method=|Qt::AspectRatioMode|aspectRatioMode|

/*
virtual void setAspectRatioMode(Qt::AspectRatioMode mode) = 0
*/
$method=|void|setAspectRatioMode|Qt::AspectRatioMode

/*
virtual bool isFullScreen() const = 0
*/
$method=|bool|isFullScreen|

/*
virtual void setFullScreen(bool fullScreen) = 0
*/
$method=|void|setFullScreen|bool

/*
virtual int brightness() const = 0
*/
$method=|int|brightness|

/*
virtual void setBrightness(int brightness) = 0
*/
$method=|void|setBrightness|int

/*
virtual int contrast() const = 0
*/
$method=|int|contrast|

/*
virtual void setContrast(int contrast) = 0
*/
$method=|void|setContrast|int

/*
virtual int hue() const = 0
*/
$method=|int|hue|

/*
virtual void setHue(int hue) = 0
*/
$method=|void|setHue|int

/*
virtual int saturation() const = 0
*/
$method=|int|saturation|

/*
virtual void setSaturation(int saturation) = 0
*/
$method=|void|setSaturation|int

#pragma ENDDUMP
