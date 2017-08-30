$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLATFORMSCREEN
REQUEST QSIZE
REQUEST QRECT
REQUEST QSIZEF
REQUEST QTRANSFORM
REQUEST QPIXMAP
#endif

CLASS QScreen INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD handle
   METHOD name
   METHOD depth
   METHOD size
   METHOD geometry
   METHOD physicalSize
   METHOD physicalDotsPerInchX
   METHOD physicalDotsPerInchY
   METHOD physicalDotsPerInch
   METHOD logicalDotsPerInchX
   METHOD logicalDotsPerInchY
   METHOD logicalDotsPerInch
   METHOD devicePixelRatio
   METHOD availableSize
   METHOD availableGeometry
   METHOD virtualSiblings
   METHOD virtualSize
   METHOD virtualGeometry
   METHOD availableVirtualSize
   METHOD availableVirtualGeometry
   METHOD primaryOrientation
   METHOD orientation
   METHOD orientationUpdateMask
   METHOD setOrientationUpdateMask
   METHOD angleBetween
   METHOD transformBetween
   METHOD mapBetween
   METHOD isPortrait
   METHOD isLandscape
   METHOD grabWindow
   METHOD refreshRate

   METHOD onGeometryChanged
   METHOD onPhysicalSizeChanged
   METHOD onPhysicalDotsPerInchChanged
   METHOD onLogicalDotsPerInchChanged
   METHOD onVirtualGeometryChanged
   METHOD onPrimaryOrientationChanged
   METHOD onOrientationChanged
   METHOD onRefreshRateChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QPixmap>

$deleteMethod

/*
QPlatformScreen *handle() const
*/
$method=|QPlatformScreen *|handle|

/*
QString name() const
*/
$method=|QString|name|

/*
int depth() const
*/
$method=|int|depth|

/*
QSize size() const
*/
$method=|QSize|size|

/*
QRect geometry() const
*/
$method=|QRect|geometry|

/*
QSizeF physicalSize() const
*/
$method=|QSizeF|physicalSize|

/*
qreal physicalDotsPerInchX() const
*/
$method=|qreal|physicalDotsPerInchX|

/*
qreal physicalDotsPerInchY() const
*/
$method=|qreal|physicalDotsPerInchY|

/*
qreal physicalDotsPerInch() const
*/
$method=|qreal|physicalDotsPerInch|

/*
qreal logicalDotsPerInchX() const
*/
$method=|qreal|logicalDotsPerInchX|

/*
qreal logicalDotsPerInchY() const
*/
$method=|qreal|logicalDotsPerInchY|

/*
qreal logicalDotsPerInch() const
*/
$method=|qreal|logicalDotsPerInch|

/*
qreal devicePixelRatio() const
*/
$method=|qreal|devicePixelRatio|

/*
QSize availableSize() const
*/
$method=|QSize|availableSize|

/*
QRect availableGeometry() const
*/
$method=|QRect|availableGeometry|

/*
QList<QScreen *> virtualSiblings() const // TODO: implementar método
*/
$method=|QList<QScreen *>|virtualSiblings|

/*
QSize virtualSize() const
*/
$method=|QSize|virtualSize|

/*
QRect virtualGeometry() const
*/
$method=|QRect|virtualGeometry|

/*
QSize availableVirtualSize() const
*/
$method=|QSize|availableVirtualSize|

/*
QRect availableVirtualGeometry() const
*/
$method=|QRect|availableVirtualGeometry|

/*
Qt::ScreenOrientation primaryOrientation() const
*/
$method=|Qt::ScreenOrientation|primaryOrientation|

/*
Qt::ScreenOrientation orientation() const
*/
$method=|Qt::ScreenOrientation|orientation|

/*
Qt::ScreenOrientations orientationUpdateMask() const
*/
$method=|Qt::ScreenOrientations|orientationUpdateMask|

/*
void setOrientationUpdateMask(Qt::ScreenOrientations mask)
*/
$method=|void|setOrientationUpdateMask|Qt::ScreenOrientations

/*
int angleBetween(Qt::ScreenOrientation a, Qt::ScreenOrientation b) const
*/
$method=|int|angleBetween|Qt::ScreenOrientation,Qt::ScreenOrientation

/*
QTransform transformBetween(Qt::ScreenOrientation a, Qt::ScreenOrientation b, const QRect &target) const
*/
$method=|QTransform|transformBetween|Qt::ScreenOrientation,Qt::ScreenOrientation,const QRect &

/*
QRect mapBetween(Qt::ScreenOrientation a, Qt::ScreenOrientation b, const QRect &rect) const
*/
$method=|QRect|mapBetween|Qt::ScreenOrientation,Qt::ScreenOrientation,const QRect &

/*
bool isPortrait(Qt::ScreenOrientation orientation) const
*/
$method=|bool|isPortrait|Qt::ScreenOrientation

/*
bool isLandscape(Qt::ScreenOrientation orientation) const
*/
$method=|bool|isLandscape|Qt::ScreenOrientation

/*
QPixmap grabWindow(WId window, int x = 0, int y = 0, int w = -1, int h = -1)
*/
$method=|QPixmap|grabWindow|WId,int=0,int=0,int=-1,int=-1

/*
qreal refreshRate() const
*/
$method=|qreal|refreshRate|

#pragma ENDDUMP
