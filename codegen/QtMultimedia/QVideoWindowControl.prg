$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QVideoWindowControl INHERIT QMediaControl

   METHOD delete
   METHOD displayRect
   METHOD setDisplayRect
   METHOD isFullScreen
   METHOD setFullScreen
   METHOD repaint
   METHOD nativeSize
   METHOD aspectRatioMode
   METHOD setAspectRatioMode
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
   METHOD onNativeSizeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QRect displayRect() const = 0
$method=|QRect|displayRect|

$prototype=virtual void setDisplayRect(const QRect &rect) = 0
$method=|void|setDisplayRect|const QRect &

$prototype=virtual bool isFullScreen() const = 0
$method=|bool|isFullScreen|

$prototype=virtual void setFullScreen(bool fullScreen) = 0
$method=|void|setFullScreen|bool

$prototype=virtual void repaint() = 0
$method=|void|repaint|

$prototype=virtual QSize nativeSize() const = 0
$method=|QSize|nativeSize|

$prototype=virtual Qt::AspectRatioMode aspectRatioMode() const = 0
$method=|Qt::AspectRatioMode|aspectRatioMode|

$prototype=virtual void setAspectRatioMode(Qt::AspectRatioMode mode) = 0
$method=|void|setAspectRatioMode|Qt::AspectRatioMode

$prototype=virtual int brightness() const = 0
$method=|int|brightness|

$prototype=virtual void setBrightness(int brightness) = 0
$method=|void|setBrightness|int

$prototype=virtual int contrast() const = 0
$method=|int|contrast|

$prototype=virtual void setContrast(int contrast) = 0
$method=|void|setContrast|int

$prototype=virtual int hue() const = 0
$method=|int|hue|

$prototype=virtual void setHue(int hue) = 0
$method=|void|setHue|int

$prototype=virtual int saturation() const = 0
$method=|int|saturation|

$prototype=virtual void setSaturation(int saturation) = 0
$method=|void|setSaturation|int

#pragma ENDDUMP
