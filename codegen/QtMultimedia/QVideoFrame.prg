%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD new
   METHOD delete

%%   METHOD bits1
%%   METHOD bits2
%%   METHOD bits3
%%   METHOD bits4
%%   METHOD bits
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
   METHOD planeCount
%%   METHOD availableMetaData
   METHOD metaData
   METHOD setMetaData

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>

$prototype=QVideoFrame ()
$internalConstructor=|new1|

$prototype=QVideoFrame ( QAbstractVideoBuffer * buffer, const QSize & size, PixelFormat format )
$internalConstructor=|new2|QAbstractVideoBuffer *,const QSize &,QVideoFrame::PixelFormat

$prototype=QVideoFrame ( int bytes, const QSize & size, int bytesPerLine, PixelFormat format )
$internalConstructor=|new3|int,const QSize &,int,QVideoFrame::PixelFormat

$prototype=QVideoFrame ( const QImage & image )
$internalConstructor=|new4|const QImage &

$prototype=QVideoFrame ( const QVideoFrame & other )
$internalConstructor=|new5|const QVideoFrame &

//[1]QVideoFrame ()
//[2]QVideoFrame ( QAbstractVideoBuffer * buffer, const QSize & size, PixelFormat format )
//[3]QVideoFrame ( int bytes, const QSize & size, int bytesPerLine, PixelFormat format )
//[4]QVideoFrame ( const QImage & image )
//[5]QVideoFrame ( const QVideoFrame & other )

HB_FUNC_STATIC( QVIDEOFRAME_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVideoFrame_new1();
  }
  else if( ISNUMPAR(3) && ISQABSTRACTVIDEOBUFFER(1) && ISQSIZE(2) && ISNUM(3)  )
  {
    QVideoFrame_new2();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISQSIZE(2) && ISNUM(3) && ISNUM(4) )
  {
    QVideoFrame_new3();
  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    QVideoFrame_new4();
  }
  else if( ISNUMPAR(1) && ISQVIDEOFRAME(1) )
  {
    QVideoFrame_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QVideoFrame()
$deleteMethod

%% TODO: implementar

$prototype=uchar * bits ()
%% $method=|uchar *|bits,bits1|

$prototype=uchar *bits(int plane)
%% $method=|uchar *|bits,bits2|int

$prototype=const uchar * bits () const
%% $method=|const uchar *|bits,bits3|

$prototype=const uchar *bits(int plane) const
%% $method=|const uchar *|bits,bits4|int

//[1]uchar *bits()
//[2]uchar *bits(int plane)
//[3]const uchar *bits() const
//[4]const uchar *bits(int plane) const

%%HB_FUNC_STATIC( QVIDEOFRAME_BITS )
%%{
%%   if( ISNUMPAR(0) )
%%   {
%%     HB_FUNC_EXEC( QVIDEOFRAME_BITS1 );
%%   }
%%   else if( ISNUMPAR(1) && ISNUM(1) )
%%   {
%%     HB_FUNC_EXEC( QVIDEOFRAME_BITS2 );
%%   }
%%   else
%%   {
%%    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%   }
%%}

$prototype=int bytesPerLine () const
$internalMethod=|int|bytesPerLine,bytesPerLine1|

$prototype=int bytesPerLine(int plane) const
$internalMethod=|int|bytesPerLine,bytesPerLine2|int

//[1]int bytesPerLine () const
//[2]int bytesPerLine(int plane) const

HB_FUNC_STATIC( QVIDEOFRAME_BYTESPERLINE )
{
  if( ISNUMPAR(0) )
  {
    QVideoFrame_bytesPerLine1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QVideoFrame_bytesPerLine2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

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

$prototype=int planeCount() const
$method=|int|planeCount|

$prototype=QVariantMap availableMetaData() const
%% TODO: QVariantMap

$prototype=QVariant metaData(const QString &key) const
$method=|QVariant|metaData|const QString &

$prototype=void setMetaData(const QString &key, const QVariant &value)
$method=|void|setMetaData|const QString &,const QVariant &

$prototype=static QImage::Format imageFormatFromPixelFormat ( PixelFormat format )
$staticMethod=|QImage::Format|imageFormatFromPixelFormat|QVideoFrame::PixelFormat

$prototype=static PixelFormat pixelFormatFromImageFormat ( QImage::Format format )
$staticMethod=|QVideoFrame::PixelFormat|pixelFormatFromImageFormat|QImage::Format

$extraMethods

#pragma ENDDUMP
