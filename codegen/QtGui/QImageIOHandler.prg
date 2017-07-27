$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QIODEVICE
REQUEST QBYTEARRAY
REQUEST QVARIANT
#endif

CLASS QImageIOHandler

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD canRead
   METHOD currentImageNumber
   METHOD currentImageRect
   METHOD device
   METHOD format
   METHOD imageCount
   METHOD jumpToImage
   METHOD jumpToNextImage
   METHOD loopCount
   METHOD nextImageDelay
   METHOD option
   METHOD read
   METHOD setDevice
   METHOD setFormat
   METHOD setOption
   METHOD supportsOption
   METHOD write

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

#include <QRect>
#include <QVariant>

$deleteMethod

/*
virtual bool canRead () const = 0
*/
$method=|bool|canRead|

/*
virtual int currentImageNumber () const
*/
$method=|int|currentImageNumber|

/*
virtual QRect currentImageRect () const
*/
$method=|QRect|currentImageRect|

/*
QIODevice * device () const
*/
$method=|QIODevice *|device|

/*
QByteArray format () const
*/
$method=|QByteArray|format|

/*
virtual int imageCount () const
*/
$method=|int|imageCount|

/*
virtual bool jumpToImage ( int imageNumber )
*/
$method=|bool|jumpToImage|int

/*
virtual bool jumpToNextImage ()
*/
$method=|bool|jumpToNextImage|

/*
virtual int loopCount () const
*/
$method=|int|loopCount|

/*
virtual int nextImageDelay () const
*/
$method=|int|nextImageDelay|

/*
virtual QVariant option ( ImageOption option ) const
*/
$method=|QVariant|option|QImageIOHandler::ImageOption

/*
virtual bool read ( QImage * image ) = 0
*/
$method=|bool|read|QImage *

/*
void setDevice ( QIODevice * device )
*/
$method=|void|setDevice|QIODevice *

/*
void setFormat ( const QByteArray & format )
*/
$method=|void|setFormat|const QByteArray &

/*
virtual void setOption ( ImageOption option, const QVariant & value )
*/
$method=|void|setOption|QImageIOHandler::ImageOption,const QVariant &

/*
virtual bool supportsOption ( ImageOption option ) const
*/
$method=|bool|supportsOption|QImageIOHandler::ImageOption

/*
virtual bool write ( const QImage & image )
*/
$method=|bool|write|const QImage &

$extraMethods

#pragma ENDDUMP
