$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QBYTEARRAY
#endif

CLASS QImageWriter

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD canWrite
   METHOD compression
   METHOD device
   METHOD error
   METHOD errorString
   METHOD fileName
   METHOD format
   METHOD gamma
   METHOD quality
   METHOD setCompression
   METHOD setDevice
   METHOD setFileName
   METHOD setFormat
   METHOD setGamma
   METHOD setQuality
   METHOD setText
   METHOD supportsOption
   METHOD write
   METHOD supportedImageFormats

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
QImageWriter ()
*/
$internalConstructor=|new1|

/*
QImageWriter ( QIODevice * device, const QByteArray & format )
*/
$internalConstructor=|new2|QIODevice *,const QByteArray &

/*
QImageWriter ( const QString & fileName, const QByteArray & format = QByteArray() )
*/
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

/*
bool canWrite () const
*/
$method=|bool|canWrite|

/*
int compression () const
*/
$method=|int|compression|

/*
QIODevice * device () const
*/
$method=|QIODevice *|device|

/*
ImageWriterError error () const
*/
$method=|QImageWriter::ImageWriterError|error|

/*
QString errorString () const
*/
$method=|QString|errorString|

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
QByteArray format () const
*/
$method=|QByteArray|format|

/*
float gamma () const
*/
$method=|float|gamma|

/*
int quality () const
*/
$method=|int|quality|

/*
void setCompression ( int compression )
*/
$method=|void|setCompression|int

/*
void setDevice ( QIODevice * device )
*/
$method=|void|setDevice|QIODevice *

/*
void setFileName ( const QString & fileName )
*/
$method=|void|setFileName|const QString &

/*
void setFormat ( const QByteArray & format )
*/
$method=|void|setFormat|const QByteArray &

/*
void setGamma ( float gamma )
*/
$method=|void|setGamma|float

/*
void setQuality ( int quality )
*/
$method=|void|setQuality|int

/*
void setText ( const QString & key, const QString & text )
*/
$method=|void|setText|const QString &,const QString &

/*
bool supportsOption ( QImageIOHandler::ImageOption option ) const
*/
$method=|bool|supportsOption|QImageIOHandler::ImageOption

/*
bool write ( const QImage & image )
*/
$method=|bool|write|const QImage &

/*
static QList<QByteArray> supportedImageFormats ()
*/
$staticMethod=|QList<QByteArray>|supportedImageFormats|

$extraMethods

#pragma ENDDUMP
