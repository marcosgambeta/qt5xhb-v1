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

$prototype=QImageWriter ()
$internalConstructor=|new1|

$prototype=QImageWriter ( QIODevice * device, const QByteArray & format )
$internalConstructor=|new2|QIODevice *,const QByteArray &

$prototype=QImageWriter ( const QString & fileName, const QByteArray & format = QByteArray() )
$internalConstructor=|new3|const QString &,const QByteArray &=QByteArray()

//[1]QImageWriter ()
//[2]QImageWriter ( QIODevice * device, const QByteArray & format )
//[3]QImageWriter ( const QString & fileName, const QByteArray & format = QByteArray() )

HB_FUNC_STATIC( QIMAGEWRITER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QImageWriter_new1();
  }
  else if( ISNUMPAR(2) && ISQIODEVICE(1) && ISQBYTEARRAY(2) )
  {
    QImageWriter_new2();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQBYTEARRAY(2) )
  {
    QImageWriter_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool canWrite () const
$method=|bool|canWrite|

$prototype=int compression () const
$method=|int|compression|

$prototype=QIODevice * device () const
$method=|QIODevice *|device|

$prototype=ImageWriterError error () const
$method=|QImageWriter::ImageWriterError|error|

$prototype=QString errorString () const
$method=|QString|errorString|

$prototype=QString fileName () const
$method=|QString|fileName|

$prototype=QByteArray format () const
$method=|QByteArray|format|

$prototype=float gamma () const
$method=|float|gamma|

$prototype=int quality () const
$method=|int|quality|

$prototype=void setCompression ( int compression )
$method=|void|setCompression|int

$prototype=void setDevice ( QIODevice * device )
$method=|void|setDevice|QIODevice *

$prototype=void setFileName ( const QString & fileName )
$method=|void|setFileName|const QString &

$prototype=void setFormat ( const QByteArray & format )
$method=|void|setFormat|const QByteArray &

$prototype=void setGamma ( float gamma )
$method=|void|setGamma|float

$prototype=void setQuality ( int quality )
$method=|void|setQuality|int

$prototype=void setText ( const QString & key, const QString & text )
$method=|void|setText|const QString &,const QString &

$prototype=bool supportsOption ( QImageIOHandler::ImageOption option ) const
$method=|bool|supportsOption|QImageIOHandler::ImageOption

$prototype=bool write ( const QImage & image )
$method=|bool|write|const QImage &

$prototype=static QList<QByteArray> supportedImageFormats ()
$staticMethod=|QList<QByteArray>|supportedImageFormats|

$prototype=static QList<QByteArray> QImageWriter::imageFormatsForMimeType(const QByteArray &mimeType)
$staticMethod=5,12,0|QList<QByteArray>|imageFormatsForMimeType|const QByteArray &

$extraMethods

#pragma ENDDUMP
