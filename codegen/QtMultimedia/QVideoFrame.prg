%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST UCHAR
REQUEST QVARIANT
REQUEST QSIZE
#endif

CLASS QVideoFrame

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD bits1
   METHOD bits2
   METHOD bits
   METHOD bytesPerLine
   METHOD endTime
   METHOD fieldType
   METHOD handle
   METHOD handleType
   METHOD height
   METHOD isMapped
   METHOD isReadable
   METHOD isValid
   METHOD isWritable
   METHOD map
   METHOD mapMode
   METHOD mappedBytes
   METHOD pixelFormat
   METHOD setEndTime
   METHOD setFieldType
   METHOD setStartTime
   METHOD size
   METHOD startTime
   METHOD unmap
   METHOD width
   METHOD imageFormatFromPixelFormat
   METHOD pixelFormatFromImageFormat

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

$prototype=QVideoFrame ()
$constructor=|new1|

$prototype=QVideoFrame ( QAbstractVideoBuffer * buffer, const QSize & size, PixelFormat format )
$constructor=|new2|QAbstractVideoBuffer *,const QSize &,QVideoFrame::PixelFormat

$prototype=QVideoFrame ( int bytes, const QSize & size, int bytesPerLine, PixelFormat format )
$constructor=|new3|int,const QSize &,int,QVideoFrame::PixelFormat

$prototype=QVideoFrame ( const QImage & image )
$constructor=|new4|const QImage &

$prototype=QVideoFrame ( const QVideoFrame & other )
$constructor=|new5|const QVideoFrame &

//[1]QVideoFrame ()
//[2]QVideoFrame ( QAbstractVideoBuffer * buffer, const QSize & size, PixelFormat format )
//[3]QVideoFrame ( int bytes, const QSize & size, int bytesPerLine, PixelFormat format )
//[4]QVideoFrame ( const QImage & image )
//[5]QVideoFrame ( const QVideoFrame & other )

HB_FUNC_STATIC( QVIDEOFRAME_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QVIDEOFRAME_NEW1 );
  }
  else if( ISNUMPAR(3) && ISQABSTRACTVIDEOBUFFER(1) && ISQSIZE(2) && ISNUM(3)  )
  {
    HB_FUNC_EXEC( QVIDEOFRAME_NEW2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISQSIZE(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QVIDEOFRAME_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    HB_FUNC_EXEC( QVIDEOFRAME_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQVIDEOFRAME(1) )
  {
    HB_FUNC_EXEC( QVIDEOFRAME_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=uchar * bits ()
$method=|uchar *|bits,bits1|

$prototype=const uchar * bits () const
$method=|const uchar *|bits,bits2|

//[1]uchar * bits ()
//[2]const uchar * bits () const

HB_FUNC_STATIC( QVIDEOFRAME_BITS )
{
  HB_FUNC_EXEC( QVIDEOFRAME_BITS1 );
}

$prototype=int bytesPerLine () const
$method=|int|bytesPerLine|

$prototype=qint64 endTime () const
$method=|qint64|endTime|

$prototype=FieldType fieldType () const
$method=|QVideoFrame::FieldType|fieldType|

$prototype=QVariant handle () const
$method=|QVariant|handle|

$prototype=QAbstractVideoBuffer::HandleType handleType () const
$method=|QAbstractVideoBuffer::HandleType|handleType|

$prototype=int height () const
$method=|int|height|

$prototype=bool isMapped () const
$method=|bool|isMapped|

$prototype=bool isReadable () const
$method=|bool|isReadable|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=bool isWritable () const
$method=|bool|isWritable|

$prototype=bool map ( QAbstractVideoBuffer::MapMode mode )
$method=|bool|map|QAbstractVideoBuffer::MapMode

$prototype=QAbstractVideoBuffer::MapMode mapMode () const
$method=|QAbstractVideoBuffer::MapMode|mapMode|

$prototype=int mappedBytes () const
$method=|int|mappedBytes|

$prototype=PixelFormat pixelFormat () const
$method=|QVideoFrame::PixelFormat|pixelFormat|

$prototype=void setEndTime ( qint64 time )
$method=|void|setEndTime|qint64

$prototype=void setFieldType ( FieldType field )
$method=|void|setFieldType|QVideoFrame::FieldType

$prototype=void setStartTime ( qint64 time )
$method=|void|setStartTime|qint64

$prototype=QSize size () const
$method=|QSize|size|

$prototype=qint64 startTime () const
$method=|qint64|startTime|

$prototype=void unmap ()
$method=|void|unmap|

$prototype=int width () const
$method=|int|width|

$prototype=static QImage::Format imageFormatFromPixelFormat ( PixelFormat format )
$staticMethod=|QImage::Format|imageFormatFromPixelFormat|QVideoFrame::PixelFormat

$prototype=static PixelFormat pixelFormatFromImageFormat ( QImage::Format format )
$staticMethod=|QVideoFrame::PixelFormat|pixelFormatFromImageFormat|QImage::Format

$extraMethods

#pragma ENDDUMP
