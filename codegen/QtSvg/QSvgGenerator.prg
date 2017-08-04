$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QSIZE
REQUEST QRECT
REQUEST QRECTF
#endif

CLASS QSvgGenerator INHERIT QPaintDevice

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD description
   METHOD fileName
   METHOD outputDevice
   METHOD resolution
   METHOD setDescription
   METHOD setFileName
   METHOD setOutputDevice
   METHOD setResolution
   METHOD setSize
   METHOD setTitle
   METHOD setViewBox
   METHOD size
   METHOD title
   METHOD viewBox
   METHOD viewBoxF

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSvgGenerator ()
*/
$constructor=|new|

$deleteMethod

/*
QString description () const
*/
$method=|QString|description|

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
QIODevice * outputDevice () const
*/
$method=|QIODevice *|outputDevice|

/*
int resolution () const
*/
$method=|int|resolution|

/*
void setDescription ( const QString & description )
*/
$method=|void|setDescription|const QString &

/*
void setFileName ( const QString & fileName )
*/
$method=|void|setFileName|const QString &

/*
void setOutputDevice ( QIODevice * outputDevice )
*/
$method=|void|setOutputDevice|QIODevice *

/*
void setResolution ( int dpi )
*/
$method=|void|setResolution|int

/*
void setSize ( const QSize & size )
*/
$method=|void|setSize|const QSize &

/*
void setTitle ( const QString & title )
*/
$method=|void|setTitle|const QString &

/*
void setViewBox ( const QRect & viewBox )
*/
$internalMethod=|void|setViewBox,setViewBox1|const QRect &

/*
void setViewBox ( const QRectF & viewBox )
*/
$internalMethod=|void|setViewBox,setViewBox2|const QRectF &

//[1]void setViewBox ( const QRect & viewBox )
//[2]void setViewBox ( const QRectF & viewBox )

HB_FUNC_STATIC( QSVGGENERATOR_SETVIEWBOX )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QSvgGenerator_setViewBox1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QSvgGenerator_setViewBox2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSize size () const
*/
$method=|QSize|size|

/*
QString title () const
*/
$method=|QString|title|

/*
QRect viewBox () const
*/
$method=|QRect|viewBox|

/*
QRectF viewBoxF () const
*/
$method=|QRectF|viewBoxF|

#pragma ENDDUMP
