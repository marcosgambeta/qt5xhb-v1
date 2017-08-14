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

/*
QVideoFrame ()
*/
$constructor=|new1|

/*
QVideoFrame ( QAbstractVideoBuffer * buffer, const QSize & size, PixelFormat format )
*/
$constructor=|new2|QAbstractVideoBuffer *,const QSize &,QVideoFrame::PixelFormat

/*
QVideoFrame ( int bytes, const QSize & size, int bytesPerLine, PixelFormat format )
*/
$constructor=|new3|int,const QSize &,int,QVideoFrame::PixelFormat

/*
QVideoFrame ( const QImage & image )
*/
$constructor=|new4|const QImage &

/*
QVideoFrame ( const QVideoFrame & other )
*/
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

/*
uchar * bits ()
*/
$method=|uchar *|bits,bits1|

/*
const uchar * bits () const
*/
$method=|const uchar *|bits,bits2|

//[1]uchar * bits ()
//[2]const uchar * bits () const

HB_FUNC_STATIC( QVIDEOFRAME_BITS )
{
  HB_FUNC_EXEC( QVIDEOFRAME_BITS1 );
}

/*
int bytesPerLine () const
*/
$method=|int|bytesPerLine|

/*
qint64 endTime () const
*/
$method=|qint64|endTime|

/*
FieldType fieldType () const
*/
$method=|QVideoFrame::FieldType|fieldType|

/*
QVariant handle () const
*/
$method=|QVariant|handle|

/*
QAbstractVideoBuffer::HandleType handleType () const
*/
$method=|QAbstractVideoBuffer::HandleType|handleType|

/*
int height () const
*/
$method=|int|height|

/*
bool isMapped () const
*/
$method=|bool|isMapped|

/*
bool isReadable () const
*/
$method=|bool|isReadable|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
bool isWritable () const
*/
$method=|bool|isWritable|

/*
bool map ( QAbstractVideoBuffer::MapMode mode )
*/
$method=|bool|map|QAbstractVideoBuffer::MapMode

/*
QAbstractVideoBuffer::MapMode mapMode () const
*/
$method=|QAbstractVideoBuffer::MapMode|mapMode|

/*
int mappedBytes () const
*/
$method=|int|mappedBytes|

/*
PixelFormat pixelFormat () const
*/
$method=|QVideoFrame::PixelFormat|pixelFormat|

/*
void setEndTime ( qint64 time )
*/
$method=|void|setEndTime|qint64

/*
void setFieldType ( FieldType field )
*/
$method=|void|setFieldType|QVideoFrame::FieldType

/*
void setStartTime ( qint64 time )
*/
$method=|void|setStartTime|qint64

/*
QSize size () const
*/
$method=|QSize|size|

/*
qint64 startTime () const
*/
$method=|qint64|startTime|

/*
void unmap ()
*/
$method=|void|unmap|

/*
int width () const
*/
$method=|int|width|

/*
static QImage::Format imageFormatFromPixelFormat ( PixelFormat format )
*/
$staticMethod=|QImage::Format|imageFormatFromPixelFormat|QVideoFrame::PixelFormat

/*
static PixelFormat pixelFormatFromImageFormat ( QImage::Format format )
*/
$staticMethod=|QVideoFrame::PixelFormat|pixelFormatFromImageFormat|QImage::Format

$extraMethods

#pragma ENDDUMP
