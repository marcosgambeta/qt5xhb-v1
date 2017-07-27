$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QRECT
REQUEST QSIZE
REQUEST QTRANSFORM
#endif

%% TODO: revisar e completar implementacao da classe

CLASS QImage INHERIT QPaintDevice

   DATA self_destruction INIT .F.

   METHOD new9
   METHOD new10
   METHOD new
   METHOD delete
   METHOD allGray
   METHOD bitPlaneCount
   METHOD byteCount
   METHOD bytesPerLine
   METHOD cacheKey
   METHOD color
   METHOD colorCount
   METHOD colorTable
   METHOD convertToFormat
   METHOD copy
   METHOD createAlphaMask
   METHOD createHeuristicMask
   METHOD createMaskFromColor
   METHOD depth
   METHOD dotsPerMeterX
   METHOD dotsPerMeterY
   METHOD fill
   METHOD format
   METHOD hasAlphaChannel
   METHOD height
   METHOD invertPixels
   METHOD isGrayscale
   METHOD isNull
   METHOD load
   METHOD loadFromData
   METHOD mirrored
   METHOD offset
   METHOD pixel
   METHOD pixelIndex
   METHOD rect
   METHOD rgbSwapped
   METHOD save
   METHOD scaled
   METHOD scaledToHeight
   METHOD scaledToWidth
   METHOD scanLine
   METHOD setColor
   METHOD setColorCount
   METHOD setDotsPerMeterX
   METHOD setDotsPerMeterY
   METHOD setOffset
   METHOD setPixel
   METHOD setText
   METHOD size
   METHOD swap
   METHOD text
   METHOD textKeys
   METHOD transformed
   METHOD valid
   METHOD width
   METHOD fromData
   METHOD trueMatrix
   METHOD pixelColor
   METHOD reinterpretAsFormat
   METHOD setPixelColor

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>
#include <QColor>

/*
QImage ()
*/
$internalConstructor=|new1|

/*
QImage ( const QSize & size, Format format )
*/
$internalConstructor=|new2|const QSize &,QImage::Format

/*
QImage ( int width, int height, Format format )
*/
$internalConstructor=|new3|int,int,QImage::Format

/*
QImage ( uchar * data, int width, int height, Format format )
*/
$internalConstructor=|new4|uchar *,int,int,QImage::Format

/*
QImage ( const uchar * data, int width, int height, Format format )
*/
$internalConstructor=|new5|const uchar *,int,int,QImage::Format

/*
QImage ( uchar * data, int width, int height, int bytesPerLine, Format format )
*/
$internalConstructor=|new6|uchar *,int,int,int,QImage::Format

/*
QImage ( const uchar * data, int width, int height, int bytesPerLine, Format format )
*/
$internalConstructor=|new7|const uchar *,int,int,int,QImage::Format

/*
QImage ( const char * const[] xpm )
*/
$internalConstructor=|new8|const char * const[]

/*
QImage ( const QString & fileName, const char * format = 0 )
*/
$constructor=|new9|const QString &,const char *=0

/*
QImage ( const char * fileName, const char * format = 0 )
*/
$constructor=|new10|const char *,const char *=0

/*
QImage ( const QImage & image )
*/
$internalConstructor=|new11|const QImage &

%% TODO: resolver conflitos
//[01]QImage ()
//[02]QImage ( const QSize & size, Format format )
//[03]QImage ( int width, int height, Format format )
//[04]QImage ( uchar * data, int width, int height, Format format )
//[05]QImage ( const uchar * data, int width, int height, Format format )
//[06]QImage ( uchar * data, int width, int height, int bytesPerLine, Format format )
//[07]QImage ( const uchar * data, int width, int height, int bytesPerLine, Format format )
//[08]QImage ( const char * const[] xpm )
//[09]QImage ( const QString & fileName, const char * format = 0 )
//[10]QImage ( const char * fileName, const char * format = 0 )
//[11]QImage ( const QImage & image )

%% TODO: revisar construtores
%% QImage()
%% QImage(const QSize &size, Format format)
%% QImage(int width, int height, Format format)
%% QImage(uchar *data, int width, int height, Format format, QImageCleanupFunction cleanupFunction = Q_NULLPTR, void *cleanupInfo = Q_NULLPTR)
%% QImage(const uchar *data, int width, int height, Format format, QImageCleanupFunction cleanupFunction = Q_NULLPTR, void *cleanupInfo = Q_NULLPTR)
%% QImage(uchar *data, int width, int height, int bytesPerLine, Format format, QImageCleanupFunction cleanupFunction = Q_NULLPTR, void *cleanupInfo = Q_NULLPTR)
%% QImage(const uchar *data, int width, int height, int bytesPerLine, Format format, QImageCleanupFunction cleanupFunction = Q_NULLPTR, void *cleanupInfo = Q_NULLPTR)
%% QImage(const char * const[] xpm)
%% QImage(const QString &fileName, const char *format = Q_NULLPTR)
%% QImage(const QImage &image)
%% QImage(QImage &&other) >=5.2

HB_FUNC_STATIC( QIMAGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QImage_new1();
  }
  else if( ISNUMPAR(2) && ISQSIZE(1) && ISNUM(2) )
  {
    QImage_new2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QImage_new3();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTCHAR(2) )
  {
    HB_FUNC_EXEC( QIMAGE_NEW9 );
  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    QImage_new11();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool allGray () const
*/
$method=|bool|allGray|

/*
int bitPlaneCount () const
*/
$method=|int|bitPlaneCount|

/*
int byteCount () const
*/
$method=|int|byteCount|

/*
int bytesPerLine () const
*/
$method=|int|bytesPerLine|

/*
qint64 cacheKey () const
*/
$method=|qint64|cacheKey|

/*
QRgb color ( int i ) const
*/
$method=|QRgb|color|int

/*
int colorCount () const
*/
$method=|int|colorCount|

/*
QVector<QRgb> colorTable () const
*/
$method=|QVector<QRgb>|colorTable|

/*
QImage convertToFormat ( Format format, Qt::ImageConversionFlags flags = Qt::AutoColor ) const
*/
$internalMethod=|QImage|convertToFormat,convertToFormat1|QImage::Format,Qt::ImageConversionFlags=Qt::AutoColor

/*
QImage convertToFormat ( Format format, const QVector<QRgb> & colorTable, Qt::ImageConversionFlags flags = Qt::AutoColor ) const
*/
$internalMethod=|QImage|convertToFormat,convertToFormat2|QImage::Format,const QVector<QRgb> &,Qt::ImageConversionFlags=Qt::AutoColor

//[1]QImage convertToFormat ( Format format, Qt::ImageConversionFlags flags = Qt::AutoColor ) const
//[2]QImage convertToFormat ( Format format, const QVector<QRgb> & colorTable, Qt::ImageConversionFlags flags = Qt::AutoColor ) const

HB_FUNC_STATIC( QIMAGE_CONVERTTOFORMAT )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QImage_convertToFormat1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISARRAY(2) && ISOPTNUM(3) )
  {
    QImage_convertToFormat2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QImage copy ( const QRect & rectangle = QRect() ) const
*/
$internalMethod=|QImage|copy,copy1|const QRect &=QRect()

/*
QImage copy ( int x, int y, int width, int height ) const
*/
$internalMethod=|QImage|copy,copy2|int,int,int,int

//[1]QImage copy ( const QRect & rectangle = QRect() ) const
//[2]QImage copy ( int x, int y, int width, int height ) const

HB_FUNC_STATIC( QIMAGE_COPY )
{
  if( ISBETWEEN(0,1) && (ISQRECT(1)||ISNIL(1)) )
  {
    QImage_copy1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QImage_copy2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QImage createAlphaMask ( Qt::ImageConversionFlags flags = Qt::AutoColor ) const
*/
$method=|QImage|createAlphaMask|Qt::ImageConversionFlags=Qt::AutoColor

/*
QImage createHeuristicMask ( bool clipTight = true ) const
*/
$method=|QImage|createHeuristicMask|bool=true

/*
QImage createMaskFromColor ( QRgb color, Qt::MaskMode mode = Qt::MaskInColor ) const
*/
$method=|QImage|createMaskFromColor|QRgb,Qt::MaskMode=Qt::MaskInColor

/*
int depth () const
*/
$method=|int|depth|

/*
int dotsPerMeterX () const
*/
$method=|int|dotsPerMeterX|

/*
int dotsPerMeterY () const
*/
$method=|int|dotsPerMeterY|

/*
void fill ( uint pixelValue )
*/
$internalMethod=|void|fill,fill1|uint

/*
void fill ( Qt::GlobalColor color )
*/
$internalMethod=|void|fill,fill2|Qt::GlobalColor

/*
void fill ( const QColor & color )
*/
$internalMethod=|void|fill,fill3|const QColor &

//[1]void fill ( uint pixelValue )
//[2]void fill ( Qt::GlobalColor color )
//[3]void fill ( const QColor & color )

%% TODO: conflito entre [1] e [2]
HB_FUNC_STATIC( QIMAGE_FILL )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QImage_fill1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QImage_fill2();
  }
  else if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    QImage_fill3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Format format () const
*/
$method=|QImage::Format|format|

/*
bool hasAlphaChannel () const
*/
$method=|bool|hasAlphaChannel|

/*
int height () const
*/
$method=|int|height|

/*
void invertPixels ( InvertMode mode = InvertRgb )
*/
$method=|void|invertPixels|QImage::InvertMode=QImage::InvertRgb

/*
bool isGrayscale () const
*/
$method=|bool|isGrayscale|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
bool load ( const QString & fileName, const char * format = 0 )
*/
$internalMethod=|bool|load,load1|const QString &,const char *=0

/*
bool load ( QIODevice * device, const char * format )
*/
$internalMethod=|bool|load,load2|QIODevice *,const char *

//[1]bool load ( const QString & fileName, const char * format = 0 )
//[2]bool load ( QIODevice * device, const char * format )

HB_FUNC_STATIC( QIMAGE_LOAD )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTCHAR(2) )
  {
    QImage_load1();
  }
  else if( ISNUMPAR(2) && ISQIODEVICE(1) && ISCHAR(2) )
  {
    QImage_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool loadFromData ( const uchar * data, int len, const char * format = 0 )
*/
$internalMethod=|bool|loadFromData,loadFromData1|const uchar *,int,const char *=0

/*
bool loadFromData ( const QByteArray & data, const char * format = 0 )
*/
$internalMethod=|bool|loadFromData,loadFromData2|const QByteArray &,const char *=0

//[1]bool loadFromData(const uchar *data, int len, const char *format = 0)
//[2]bool loadFromData(const QByteArray &data, const char *format = 0)

HB_FUNC_STATIC( QIMAGE_LOADFROMDATA )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && ISOPTCHAR(3) )
  {
    QImage_loadFromData1();
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTCHAR(2) )
  {
    QImage_loadFromData2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QImage mirrored ( bool horizontal = false, bool vertical = true ) const
*/
$method=|QImage|mirrored|bool=false,bool=true

/*
QPoint offset () const
*/
$method=|QPoint|offset|

/*
QRgb pixel ( const QPoint & position ) const
*/
$internalMethod=|QRgb|pixel,pixel1|const QPoint &

/*
QRgb pixel ( int x, int y ) const
*/
$internalMethod=|QRgb|pixel,pixel2|int,int

//[1]QRgb pixel ( const QPoint & position ) const
//[2]QRgb pixel ( int x, int y ) const

HB_FUNC_STATIC( QIMAGE_PIXEL )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QImage_pixel1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QImage_pixel2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int pixelIndex ( const QPoint & position ) const
*/
$internalMethod=|int|pixelIndex,pixelIndex1|const QPoint &

/*
int pixelIndex ( int x, int y ) const
*/
$internalMethod=|int|pixelIndex,pixelIndex2|int,int

//[1]int pixelIndex ( const QPoint & position ) const
//[2]int pixelIndex ( int x, int y ) const

HB_FUNC_STATIC( QIMAGE_PIXELINDEX )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QImage_pixelIndex1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QImage_pixelIndex2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect rect () const
*/
$method=|QRect|rect|

/*
QImage rgbSwapped () const
*/
$method=|QImage|rgbSwapped|

/*
bool save ( const QString & fileName, const char * format = 0, int quality = -1 ) const
*/
$internalMethod=|bool|save,save1|const QString &,const char *=0,int=-1

/*
bool save ( QIODevice * device, const char * format = 0, int quality = -1 ) const
*/
$internalMethod=|bool|save,save2|QIODevice *,const char *=0,int=-1 ) const

//[1]bool save ( const QString & fileName, const char * format = 0, int quality = -1 ) const
//[2]bool save ( QIODevice * device, const char * format = 0, int quality = -1 ) const

HB_FUNC_STATIC( QIMAGE_SAVE )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTCHAR(2) && ISOPTNUM(3) )
  {
    QImage_save1();
  }
  else if( ISBETWEEN(1,3) && ISQIODEVICE(1) && ISOPTCHAR(2) && ISOPTNUM(3) )
  {
    QImage_save2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QImage scaled ( const QSize & size, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
*/
$internalMethod=|QImage|scaled,scaled1|const QSize &,Qt::AspectRatioMode=Qt::IgnoreAspectRatio,Qt::TransformationMode=Qt::FastTransformation

/*
QImage scaled ( int width, int height, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
*/
$internalMethod=|QImage|scaled,scaled2|int,int,Qt::AspectRatioMode=Qt::IgnoreAspectRatio,Qt::TransformationMode=Qt::FastTransformation

//[1]QImage scaled ( const QSize & size, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
//[2]QImage scaled ( int width, int height, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const

HB_FUNC_STATIC( QIMAGE_SCALED )
{
  if( ISBETWEEN(1,3) && ISQSIZE(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QImage_scaled1();
  }
  else if( ISBETWEEN(2,4) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    QImage_scaled2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QImage scaledToHeight ( int height, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
$method=|QImage|scaledToHeight|int,Qt::TransformationMode=Qt::FastTransformation

/*
QImage scaledToWidth ( int width, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
$method=|QImage|scaledToWidth|int,Qt::TransformationMode=Qt::FastTransformation

/*
uchar * scanLine(int i)
*/

/*
const uchar * scanLine(int i) const
*/

%% TODO: implementar
//[1]uchar * scanLine(int i)
//[2]const uchar * scanLine(int i) const

HB_FUNC_STATIC( QIMAGE_SCANLINE )
{
}

/*
void setColor ( int index, QRgb colorValue )
*/
$method=|void|setColor|int,QRgb

/*
void setColorCount ( int colorCount )
*/
$method=|void|setColorCount|int

/*
void setDotsPerMeterX ( int x )
*/
$method=|void|setDotsPerMeterX|int

/*
void setDotsPerMeterY ( int y )
*/
$method=|void|setDotsPerMeterY|int

/*
void setOffset ( const QPoint & offset )
*/
$method=|void|setOffset|const QPoint &

/*
void setPixel ( const QPoint & position, uint index_or_rgb )
*/
$internalMethod=|void|setPixel,setPixel1|const QPoint &,uint

/*
void setPixel ( int x, int y, uint index_or_rgb )
*/
$internalMethod=|void|setPixel,setPixel2|int,int,uint

//[1]void setPixel ( const QPoint & position, uint index_or_rgb )
//[2]void setPixel ( int x, int y, uint index_or_rgb )

HB_FUNC_STATIC( QIMAGE_SETPIXEL )
{
  if( ISNUMPAR(2) && ISQPOINT(1) && ISNUM(2) )
  {
    QImage_setPixel1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QImage_setPixel2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setText ( const QString & key, const QString & text )
*/
$method=|void|setText|const QString &,const QString &

/*
QSize size () const
*/
$method=|QSize|size|

/*
void swap ( QImage & other )
*/
$method=|void|swap|QImage &

/*
QString text ( const QString & key = QString() ) const
*/
$method=|QString|text|const QString &=QString()

/*
QStringList textKeys () const
*/
$method=|QStringList|textKeys|

/*
QImage transformed ( const QMatrix & matrix, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
$internalMethod=|QImage|transformed,transformed1|const QMatrix &,Qt::TransformationMode=Qt::FastTransformation

/*
QImage transformed ( const QTransform & matrix, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
$internalMethod=|QImage|transformed,transformed2|const QTransform &,Qt::TransformationMode=Qt::FastTransformation

//[1]QImage transformed(const QMatrix &matrix, Qt::TransformationMode mode = Qt::FastTransformation) const
//[2]QImage transformed(const QTransform &matrix, Qt::TransformationMode mode = Qt::FastTransformation) const

HB_FUNC_STATIC( QIMAGE_TRANSFORMED )
{
  if( ISBETWEEN(1,2) && ISQMATRIX(1) && ISOPTNUM(2) )
  {
    QImage_transformed1();
  }
  else if( ISBETWEEN(1,2) && ISQTRANSFORM(1) && ISOPTNUM(2) )
  {
    QImage_transformed2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool valid ( const QPoint & pos ) const
*/
$internalMethod=|bool|valid,valid1|const QPoint &

/*
bool valid ( int x, int y ) const
*/
$internalMethod=|bool|valid,valid2|int,int

//[1]bool valid ( const QPoint & pos ) const
//[2]bool valid ( int x, int y ) const

HB_FUNC_STATIC( QIMAGE_VALID )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QImage_valid1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QImage_valid2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int width () const
*/
$method=|int|width|

/*
static QImage fromData ( const uchar * data, int size, const char * format = 0 )
*/
$staticInternalMethod=|QImage|fromData,fromData1|const uchar *,int,const char *=0

/*
static QImage fromData ( const QByteArray & data, const char * format = 0 )
*/
$staticInternalMethod=|QImage|fromData,fromData2|const QByteArray &,const char *=0

//[1]static QImage fromData(const uchar *data, int size, const char *format = 0)
//[2]static QImage fromData(const QByteArray &data, const char *format = 0)

HB_FUNC_STATIC( QIMAGE_FROMDATA )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && ISOPTCHAR(3) )
  {
    QImage_fromData1();
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTCHAR(2) )
  {
    QImage_fromData2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QMatrix trueMatrix ( const QMatrix & matrix, int width, int height )
*/
$staticInternalMethod=|QMatrix|trueMatrix,trueMatrix1|const QMatrix &,int,int

/*
static QTransform trueMatrix ( const QTransform & matrix, int width, int height )
*/
$staticInternalMethod=|QTransform|trueMatrix,trueMatrix2|const QTransform &,int,int

//[1]QMatrix trueMatrix(const QMatrix &matrix, int width, int height)
//[2]QTransform trueMatrix(const QTransform &matrix, int width, int height)

HB_FUNC_STATIC( QIMAGE_TRUEMATRIX )
{
  if( ISNUMPAR(3) && ISQMATRIX(1) && ISNUM(2) && ISNUM(3) )
  {
    QImage_trueMatrix1();
  }
  else if( ISNUMPAR(3) && ISQTRANSFORM(1) && ISNUM(2) && ISNUM(3) )
  {
    QImage_trueMatrix2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QColor QImage::pixelColor(const QPoint &position) const
*/
$internalMethod=5,6,0|QColor|pixelColor,pixelColor1|const QPoint &

/*
QColor QImage::pixelColor(int x, int y) const
*/
$internalMethod=5,6,0|QColor|pixelColor,pixelColor2|int,int

//[1]QColor QImage::pixelColor(const QPoint &position) const
//[2]QColor QImage::pixelColor(int x, int y) const

HB_FUNC_STATIC( QIMAGE_PIXELCOLOR )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QImage_pixelColor1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QImage_pixelColor2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool QImage::reinterpretAsFormat(Format format)
*/
$method=5,9,0|bool|reinterpretAsFormat|QImage::Format

/*
void QImage::setPixelColor(const QPoint &position, const QColor &color)
*/
$internalMethod=5,6,0|void|setPixelColor,setPixelColor1|const QPoint &,const QColor &

/*
void QImage::setPixelColor(int x, int y, const QColor &color)
*/
$internalMethod=5,6,0|void|setPixelColor,setPixelColor2|int,int,const QColor &

//[1]void QImage::setPixelColor(const QPoint &position, const QColor &color)
//[2]void QImage::setPixelColor(int x, int y, const QColor &color)

HB_FUNC_STATIC( QIMAGE_SETPIXELCOLOR )
{
  if( ISNUMPAR(2) && ISQPOINT(1) && ISQCOLOR(2) )
  {
    QImage_setPixelColor1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQCOLOR(3) )
  {
    QImage_setPixelColor2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
