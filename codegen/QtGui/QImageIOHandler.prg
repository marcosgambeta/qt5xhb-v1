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

$prototype=virtual bool canRead () const = 0
$method=|bool|canRead|

$prototype=virtual int currentImageNumber () const
$method=|int|currentImageNumber|

$prototype=virtual QRect currentImageRect () const
$method=|QRect|currentImageRect|

$prototype=QIODevice * device () const
$method=|QIODevice *|device|

$prototype=QByteArray format () const
$method=|QByteArray|format|

$prototype=virtual int imageCount () const
$method=|int|imageCount|

$prototype=virtual bool jumpToImage ( int imageNumber )
$method=|bool|jumpToImage|int

$prototype=virtual bool jumpToNextImage ()
$method=|bool|jumpToNextImage|

$prototype=virtual int loopCount () const
$method=|int|loopCount|

$prototype=virtual int nextImageDelay () const
$method=|int|nextImageDelay|

$prototype=virtual QVariant option ( ImageOption option ) const
$method=|QVariant|option|QImageIOHandler::ImageOption

$prototype=virtual bool read ( QImage * image ) = 0
$method=|bool|read|QImage *

$prototype=void setDevice ( QIODevice * device )
$method=|void|setDevice|QIODevice *

$prototype=void setFormat ( const QByteArray & format )
$method=|void|setFormat|const QByteArray &

$prototype=virtual void setOption ( ImageOption option, const QVariant & value )
$method=|void|setOption|QImageIOHandler::ImageOption,const QVariant &

$prototype=virtual bool supportsOption ( ImageOption option ) const
$method=|bool|supportsOption|QImageIOHandler::ImageOption

$prototype=virtual bool write ( const QImage & image )
$method=|bool|write|const QImage &

$extraMethods

#pragma ENDDUMP
