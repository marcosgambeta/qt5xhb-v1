%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QPixmap>

$deleteMethod

$prototype=QPlatformScreen *handle() const
%% TODO: implementar ?
%% $method=|QPlatformScreen *|handle|

$prototype=QString name() const
$method=|QString|name|

$prototype=int depth() const
$method=|int|depth|

$prototype=QSize size() const
$method=|QSize|size|

$prototype=QRect geometry() const
$method=|QRect|geometry|

$prototype=QSizeF physicalSize() const
$method=|QSizeF|physicalSize|

$prototype=qreal physicalDotsPerInchX() const
$method=|qreal|physicalDotsPerInchX|

$prototype=qreal physicalDotsPerInchY() const
$method=|qreal|physicalDotsPerInchY|

$prototype=qreal physicalDotsPerInch() const
$method=|qreal|physicalDotsPerInch|

$prototype=qreal logicalDotsPerInchX() const
$method=|qreal|logicalDotsPerInchX|

$prototype=qreal logicalDotsPerInchY() const
$method=|qreal|logicalDotsPerInchY|

$prototype=qreal logicalDotsPerInch() const
$method=|qreal|logicalDotsPerInch|

$prototype=qreal devicePixelRatio() const
$method=|qreal|devicePixelRatio|

$prototype=QSize availableSize() const
$method=|QSize|availableSize|

$prototype=QRect availableGeometry() const
$method=|QRect|availableGeometry|

$prototype=QList<QScreen *> virtualSiblings() const // TODO: implementar método
$method=|QList<QScreen *>|virtualSiblings|

$prototype=QSize virtualSize() const
$method=|QSize|virtualSize|

$prototype=QRect virtualGeometry() const
$method=|QRect|virtualGeometry|

$prototype=QSize availableVirtualSize() const
$method=|QSize|availableVirtualSize|

$prototype=QRect availableVirtualGeometry() const
$method=|QRect|availableVirtualGeometry|

$prototype=Qt::ScreenOrientation primaryOrientation() const
$method=|Qt::ScreenOrientation|primaryOrientation|

$prototype=Qt::ScreenOrientation orientation() const
$method=|Qt::ScreenOrientation|orientation|

$prototype=Qt::ScreenOrientations orientationUpdateMask() const
$method=|Qt::ScreenOrientations|orientationUpdateMask|

$prototype=void setOrientationUpdateMask(Qt::ScreenOrientations mask)
$method=|void|setOrientationUpdateMask|Qt::ScreenOrientations

$prototype=int angleBetween(Qt::ScreenOrientation a, Qt::ScreenOrientation b) const
$method=|int|angleBetween|Qt::ScreenOrientation,Qt::ScreenOrientation

$prototype=QTransform transformBetween(Qt::ScreenOrientation a, Qt::ScreenOrientation b, const QRect &target) const
$method=|QTransform|transformBetween|Qt::ScreenOrientation,Qt::ScreenOrientation,const QRect &

$prototype=QRect mapBetween(Qt::ScreenOrientation a, Qt::ScreenOrientation b, const QRect &rect) const
$method=|QRect|mapBetween|Qt::ScreenOrientation,Qt::ScreenOrientation,const QRect &

$prototype=bool isPortrait(Qt::ScreenOrientation orientation) const
$method=|bool|isPortrait|Qt::ScreenOrientation

$prototype=bool isLandscape(Qt::ScreenOrientation orientation) const
$method=|bool|isLandscape|Qt::ScreenOrientation

$prototype=QPixmap grabWindow(WId window, int x = 0, int y = 0, int w = -1, int h = -1)
$method=|QPixmap|grabWindow|WId,int=0,int=0,int=-1,int=-1

$prototype=qreal refreshRate() const
$method=|qreal|refreshRate|

$beginSignals
$signal=|geometryChanged(QRect)
$signal=|physicalSizeChanged(QSizeF)
$signal=|physicalDotsPerInchChanged(qreal)
$signal=|logicalDotsPerInchChanged(qreal)
$signal=|virtualGeometryChanged(QRect)
$signal=|primaryOrientationChanged(Qt::ScreenOrientation)
$signal=|orientationChanged(Qt::ScreenOrientation)
$signal=|refreshRateChanged(qreal)
$endSignals

#pragma ENDDUMP
