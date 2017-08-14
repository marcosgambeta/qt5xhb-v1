$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIAOBJECT
REQUEST QSIZE
#endif

CLASS QVideoWidget INHERIT QWidget,QMediaBindableInterface

   DATA self_destruction INIT .F.

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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QVideoWidget(QWidget *parent = 0)
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
QMediaObject *mediaObject() const
*/
$method=|QMediaObject *|mediaObject|

/*
bool isFullScreen() const
*/
$method=|bool|isFullScreen|

/*
Qt::AspectRatioMode aspectRatioMode() const
*/
$method=|Qt::AspectRatioMode|aspectRatioMode|

/*
int brightness() const
*/
$method=|int|brightness|

/*
int contrast() const
*/
$method=|int|contrast|

/*
int hue() const
*/
$method=|int|hue|

/*
int saturation() const
*/
$method=|int|saturation|

/*
QSize sizeHint() const
*/
$method=|QSize|sizeHint|

/*
void setFullScreen(bool fullScreen)
*/
$method=|void|setFullScreen|bool

/*
void setAspectRatioMode(Qt::AspectRatioMode mode)
*/
$method=|void|setAspectRatioMode|Qt::AspectRatioMode

/*
void setBrightness(int brightness)
*/
$method=|void|setBrightness|int

/*
void setContrast(int contrast)
*/
$method=|void|setContrast|int

/*
void setHue(int hue)
*/
$method=|void|setHue|int

/*
void setSaturation(int saturation)
*/
$method=|void|setSaturation|int

#pragma ENDDUMP
