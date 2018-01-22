%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QVARIANT
REQUEST QBYTEARRAY
REQUEST QRECT
#endif

CLASS QVideoSurfaceFormat

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD frameHeight
   METHOD frameRate
   METHOD frameSize
   METHOD frameWidth
   METHOD handleType
   METHOD isValid
   METHOD pixelAspectRatio
   METHOD pixelFormat
   METHOD property
   METHOD propertyNames
   METHOD scanLineDirection
   METHOD setFrameRate
   METHOD setFrameSize
   METHOD setPixelAspectRatio
   METHOD setProperty
   METHOD setScanLineDirection
   METHOD setViewport
   METHOD setYCbCrColorSpace
   METHOD sizeHint
   METHOD viewport
   METHOD yCbCrColorSpace

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

#include <QVariant>

$prototype=QVideoSurfaceFormat ()
$internalConstructor=|new1|

$prototype=QVideoSurfaceFormat ( const QSize & size, QVideoFrame::PixelFormat format, QAbstractVideoBuffer::HandleType type = QAbstractVideoBuffer::NoHandle )
$internalConstructor=|new2|const QSize &,QVideoFrame::PixelFormat,QAbstractVideoBuffer::HandleType=QAbstractVideoBuffer::NoHandle

$prototype=QVideoSurfaceFormat ( const QVideoSurfaceFormat & other )
$internalConstructor=|new3|const QVideoSurfaceFormat &

//[1]QVideoSurfaceFormat ()
//[2]QVideoSurfaceFormat ( const QSize & size, QVideoFrame::PixelFormat pixelFormat, QAbstractVideoBuffer::HandleType handleType = QAbstractVideoBuffer::NoHandle )
//[3]QVideoSurfaceFormat ( const QVideoSurfaceFormat & other )

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVideoSurfaceFormat_new1();
  }
  else if( ISBETWEEN(2,3) && ISQSIZE(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QVideoSurfaceFormat_new2();
  }
  else if( ISNUMPAR(1) && ISQVIDEOSURFACEFORMAT(1) )
  {
    QVideoSurfaceFormat_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QVideoSurfaceFormat()
$deleteMethod

$prototype=int frameHeight () const
$method=|int|frameHeight|

$prototype=qreal frameRate () const
$method=|qreal|frameRate|

$prototype=QSize frameSize () const
$method=|QSize|frameSize|

$prototype=int frameWidth () const
$method=|int|frameWidth|

$prototype=QAbstractVideoBuffer::HandleType handleType () const
$method=|QAbstractVideoBuffer::HandleType|handleType|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QSize pixelAspectRatio () const
$method=|QSize|pixelAspectRatio|

$prototype=QVideoFrame::PixelFormat pixelFormat () const
$method=|QVideoFrame::PixelFormat|pixelFormat|

$prototype=QVariant property ( const char * name ) const
$method=|QVariant|property|const char *

$prototype=QList<QByteArray> propertyNames () const
$method=|QList<QByteArray>|propertyNames|

$prototype=Direction scanLineDirection () const
$method=|QVideoSurfaceFormat::Direction|scanLineDirection|

$prototype=void setFrameRate ( qreal rate )
$method=|void|setFrameRate|qreal

$prototype=void setFrameSize ( const QSize & size )
$internalMethod=|void|setFrameSize,setFrameSize1|const QSize &

$prototype=void setFrameSize ( int width, int height )
$internalMethod=|void|setFrameSize,setFrameSize2|int,int

//[1]void setFrameSize ( const QSize & size )
//[2]void setFrameSize ( int width, int height )

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETFRAMESIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QVideoSurfaceFormat_setFrameSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QVideoSurfaceFormat_setFrameSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setPixelAspectRatio ( const QSize & ratio )
$internalMethod=|void|setPixelAspectRatio,setPixelAspectRatio1|const QSize &

$prototype=void setPixelAspectRatio ( int horizontal, int vertical )
$internalMethod=|void|setPixelAspectRatio,setPixelAspectRatio2|int,int

//[1]void setPixelAspectRatio ( const QSize & ratio )
//[2]void setPixelAspectRatio ( int horizontal, int vertical )

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETPIXELASPECTRATIO )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QVideoSurfaceFormat_setPixelAspectRatio1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QVideoSurfaceFormat_setPixelAspectRatio2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setProperty ( const char * name, const QVariant & value )
$method=|void|setProperty|const char *,const QVariant &

$prototype=void setScanLineDirection ( Direction direction )
$method=|void|setScanLineDirection|QVideoSurfaceFormat::Direction

$prototype=void setViewport ( const QRect & viewport )
$method=|void|setViewport|const QRect &

$prototype=void setYCbCrColorSpace ( YCbCrColorSpace colorSpace )
$method=|void|setYCbCrColorSpace|QVideoSurfaceFormat::YCbCrColorSpace

$prototype=QSize sizeHint () const
$method=|QSize|sizeHint|

$prototype=QRect viewport () const
$method=|QRect|viewport|

$prototype=YCbCrColorSpace yCbCrColorSpace () const
$method=|QVideoSurfaceFormat::YCbCrColorSpace|yCbCrColorSpace|

$extraMethods

#pragma ENDDUMP
