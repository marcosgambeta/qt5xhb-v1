%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QRect>
#include <QVariant>

$deleteMethod

$prototype=virtual bool canRead () const = 0
$virtualMethod=|bool|canRead|

$prototype=virtual int currentImageNumber () const
$virtualMethod=|int|currentImageNumber|

$prototype=virtual QRect currentImageRect () const
$virtualMethod=|QRect|currentImageRect|

$prototype=QIODevice * device () const
$method=|QIODevice *|device|

$prototype=QByteArray format () const
$method=|QByteArray|format|

$prototype=virtual int imageCount () const
$virtualMethod=|int|imageCount|

$prototype=virtual bool jumpToImage ( int imageNumber )
$virtualMethod=|bool|jumpToImage|int

$prototype=virtual bool jumpToNextImage ()
$virtualMethod=|bool|jumpToNextImage|

$prototype=virtual int loopCount () const
$virtualMethod=|int|loopCount|

$prototype=virtual int nextImageDelay () const
$virtualMethod=|int|nextImageDelay|

$prototype=virtual QVariant option ( ImageOption option ) const
$virtualMethod=|QVariant|option|QImageIOHandler::ImageOption

$prototype=virtual bool read ( QImage * image ) = 0
$virtualMethod=|bool|read|QImage *

$prototype=void setDevice ( QIODevice * device )
$method=|void|setDevice|QIODevice *

$prototype=void setFormat ( const QByteArray & format )
$method=|void|setFormat|const QByteArray &

$prototype=virtual void setOption ( ImageOption option, const QVariant & value )
$virtualMethod=|void|setOption|QImageIOHandler::ImageOption,const QVariant &

$prototype=virtual bool supportsOption ( ImageOption option ) const
$virtualMethod=|bool|supportsOption|QImageIOHandler::ImageOption

$prototype=virtual bool write ( const QImage & image )
$virtualMethod=|bool|write|const QImage &

$extraMethods

#pragma ENDDUMP
