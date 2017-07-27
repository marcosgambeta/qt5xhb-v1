$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLATFORMBACKINGSTORE
REQUEST QPAINTDEVICE
REQUEST QSIZE
REQUEST QREGION
REQUEST QWINDOW
#endif

CLASS QBackingStore

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD beginPaint
   METHOD endPaint
   METHOD flush
   METHOD handle
   METHOD hasStaticContents
   METHOD paintDevice
   METHOD resize
   METHOD scroll
   METHOD setStaticContents
   METHOD size
   METHOD staticContents
   METHOD window

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QBackingStore(QWindow * window)
*/
$constructor=|new|QWindow *

$deleteMethod

/*
void beginPaint(const QRegion & region)
*/
$method=|void|beginPaint|const QRegion &

/*
void endPaint()
*/
$method=|void|endPaint|

/*
void flush(const QRegion & region, QWindow * win = 0, const QPoint & offset = QPoint())
*/
$method=|void|flush|const QRegion &,QWindow *=0,const QPoint &=QPoint()

/*
QPlatformBackingStore * handle() const
*/
$method=|QPlatformBackingStore *|handle|

/*
bool hasStaticContents() const
*/
$method=|bool|hasStaticContents|

/*
QPaintDevice * paintDevice()
*/
$method=|QPaintDevice *|paintDevice|

/*
void resize(const QSize & size)
*/
$method=|void|resize|const QSize &

/*
bool scroll(const QRegion & area, int dx, int dy)
*/
$method=|bool|scroll|const QRegion &,int,int

/*
void setStaticContents(const QRegion & region)
*/
$method=|void|setStaticContents|const QRegion &

/*
QSize size() const
*/
$method=|QSize|size|

/*
QRegion staticContents() const
*/
$method=|QRegion|staticContents|

/*
QWindow * window() const
*/
$method=|QWindow *|window|

$extraMethods

#pragma ENDDUMP
