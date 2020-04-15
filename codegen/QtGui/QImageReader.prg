%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QColor>

$prototype=QImageReader ()
$internalConstructor=|new1|

$prototype=QImageReader ( QIODevice * device, const QByteArray & format = QByteArray() )
$internalConstructor=|new2|QIODevice *,const QByteArray &=QByteArray()

$prototype=QImageReader ( const QString & fileName, const QByteArray & format = QByteArray() )
$internalConstructor=|new3|const QString &,const QByteArray &=QByteArray()

/*
[1]QImageReader ()
[2]QImageReader ( QIODevice * device, const QByteArray & format = QByteArray() )
[3]QImageReader ( const QString & fileName, const QByteArray & format = QByteArray() )
*/

HB_FUNC_STATIC( QIMAGEREADER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QImageReader_new1();
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && ISOPTQBYTEARRAY(2) )
  {
    QImageReader_new2();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQBYTEARRAY(2) )
  {
    QImageReader_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool autoDetectImageFormat () const
$method=|bool|autoDetectImageFormat|

$prototype=QColor backgroundColor () const
$method=|QColor|backgroundColor|

$prototype=bool canRead () const
$method=|bool|canRead|

$prototype=QRect clipRect () const
$method=|QRect|clipRect|

$prototype=int currentImageNumber () const
$method=|int|currentImageNumber|

$prototype=QRect currentImageRect () const
$method=|QRect|currentImageRect|

$prototype=bool decideFormatFromContent () const
$method=|bool|decideFormatFromContent|

$prototype=QIODevice * device () const
$method=|QIODevice *|device|

$prototype=ImageReaderError error () const
$method=|QImageReader::ImageReaderError|error|

$prototype=QString errorString () const
$method=|QString|errorString|

$prototype=QString fileName () const
$method=|QString|fileName|

$prototype=QByteArray format () const
$method=|QByteArray|format|

$prototype=int imageCount () const
$method=|int|imageCount|

$prototype=bool jumpToImage ( int imageNumber )
$method=|bool|jumpToImage|int

$prototype=bool jumpToNextImage ()
$method=|bool|jumpToNextImage|

$prototype=int loopCount () const
$method=|int|loopCount|

$prototype=int nextImageDelay () const
$method=|int|nextImageDelay|

$prototype=int quality () const
$method=|int|quality|

$prototype=QImage read ()
$internalMethod=|QImage|read,read1|

$prototype=bool read ( QImage * image )
$internalMethod=|bool|read,read2|QImage *

/*
[1]QImage read ()
[2]bool read ( QImage * image )
*/

HB_FUNC_STATIC( QIMAGEREADER_READ )
{
  if( ISNUMPAR(0) )
  {
    QImageReader_read1();
  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    QImageReader_read2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=read

$prototype=QRect scaledClipRect () const
$method=|QRect|scaledClipRect|

$prototype=QSize scaledSize () const
$method=|QSize|scaledSize|

$prototype=void setAutoDetectImageFormat ( bool enabled )
$method=|void|setAutoDetectImageFormat|bool

$prototype=void setBackgroundColor ( const QColor & color )
$method=|void|setBackgroundColor|const QColor &

$prototype=void setClipRect ( const QRect & rect )
$method=|void|setClipRect|const QRect &

$prototype=void setDecideFormatFromContent ( bool ignored )
$method=|void|setDecideFormatFromContent|bool

$prototype=void setDevice ( QIODevice * device )
$method=|void|setDevice|QIODevice *

$prototype=void setFileName ( const QString & fileName )
$method=|void|setFileName|const QString &

$prototype=void setFormat ( const QByteArray & format )
$method=|void|setFormat|const QByteArray &

$prototype=void setQuality ( int quality )
$method=|void|setQuality|int

$prototype=void setScaledClipRect ( const QRect & rect )
$method=|void|setScaledClipRect|const QRect &

$prototype=void setScaledSize ( const QSize & size )
$method=|void|setScaledSize|const QSize &

$prototype=QSize size () const
$method=|QSize|size|

$prototype=bool supportsAnimation () const
$method=|bool|supportsAnimation|

$prototype=bool supportsOption ( QImageIOHandler::ImageOption option ) const
$method=|bool|supportsOption|QImageIOHandler::ImageOption

$prototype=QString text ( const QString & key ) const
$method=|QString|text|const QString &

$prototype=QStringList textKeys () const
$method=|QStringList|textKeys|

$prototype=QImage::Format imageFormat () const
$internalMethod=|QImage::Format|imageFormat,imageFormat1|

$prototype=static QByteArray imageFormat ( const QString & fileName )
$internalStaticMethod=|QByteArray|imageFormat,imageFormat2|const QString &

$prototype=static QByteArray imageFormat ( QIODevice * device )
$internalStaticMethod=|QByteArray|imageFormat,imageFormat3|QIODevice *

/*
[1]QImage::Format imageFormat () const
[2]QByteArray imageFormat ( const QString & fileName )
[3]QByteArray imageFormat ( QIODevice * device )
*/

HB_FUNC_STATIC( QIMAGEREADER_IMAGEFORMAT )
{
  if( ISNUMPAR(0) )
  {
    QImageReader_imageFormat1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QImageReader_imageFormat2();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QImageReader_imageFormat3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=imageFormat

$prototype=static QList<QByteArray> supportedImageFormats ()
$staticMethod=|QList<QByteArray>|supportedImageFormats|

$prototype=static QList<QByteArray> QImageReader::imageFormatsForMimeType(const QByteArray &mimeType)
$staticMethod=5,12,0|QList<QByteArray>|imageFormatsForMimeType|const QByteArray &

$extraMethods

#pragma ENDDUMP
