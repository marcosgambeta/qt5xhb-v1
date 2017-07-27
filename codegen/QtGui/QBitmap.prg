$header

#include "hbclass.ch"

CLASS QBitmap INHERIT QPixmap

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clear
   METHOD transformed
   METHOD fromData
   METHOD fromImage

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QBitmap ()
*/
$internalConstructor=|new1|

/*
QBitmap ( const QPixmap & pixmap )
*/
$internalConstructor=|new2|const QPixmap &

/*
QBitmap ( int width, int height )
*/
$internalConstructor=|new3|int,int

/*
QBitmap ( const QSize & size )
*/
$internalConstructor=|new4|const QSize &

/*
QBitmap ( const QString & fileName, const char * format = 0 )
*/
$internalConstructor=|new5|const QString &,const char *=0

//[1]QBitmap ()
//[2]QBitmap ( const QPixmap & pixmap )
//[3]QBitmap ( int width, int height )
//[4]QBitmap ( const QSize & size )
//[5]QBitmap ( const QString & fileName, const char * format = 0 )

HB_FUNC_STATIC( QBITMAP_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBitmap_new1();
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    QBitmap_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QBitmap_new3();
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QBitmap_new4();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTCHAR(2) )
  {
    QBitmap_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void clear ()
*/
$method=|void|clear|

/*
QBitmap transformed ( const QTransform & matrix ) const
*/
$method=|QBitmap|transformed|const QTransform &

/*
static QBitmap fromData ( const QSize & size, const uchar * bits, QImage::Format monoFormat = QImage::Format_MonoLSB )
*/
$staticMethod=|QBitmap|fromData|const QSize &,const uchar *,QImage::Format=QImage::Format_MonoLSB

/*
static QBitmap fromImage ( const QImage & image, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
$staticMethod=|QBitmap|fromImage|const QImage &,Qt::ImageConversionFlags=Qt::AutoColor

#pragma ENDDUMP
