%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QPaintDevice

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QBitmap>
#include <QVariant>

$prototype=QPixmap ()
$internalConstructor=|new1|

$prototype=QPixmap ( int width, int height )
$internalConstructor=|new3|int,int

$prototype=QPixmap ( const QSize & size )
$internalConstructor=|new4|const QSize &

$prototype=QPixmap ( const QString & fileName, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
$internalConstructor=|new5|const QString &,const char *=0,Qt::ImageConversionFlags=Qt::AutoColor

$prototype=QPixmap ( const QPixmap & pixmap )
$internalConstructor=|new7|const QPixmap &

//[1]QPixmap()
//[2]QPixmap(QPlatformPixmap *data) // TODO: implementar(?)
//[3]QPixmap(int w, int h)
//[4]QPixmap(const QSize &)
//[5]QPixmap(const QString& fileName, const char *format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor)
//[6]QPixmap(const char * const xpm[]) // TODO: implementar(?)
//[7]QPixmap(const QPixmap &)

HB_FUNC_STATIC( QPIXMAP_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPixmap_new1();
  }
  //else if( ISNUMPAR(1) && ISQPLATFORMPIXMAP(1) )
  //{
  //  QPixmap_new2();
  //}
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPixmap_new3();
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QPixmap_new4();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTCHAR(2) && ISOPTNUM(3) )
  {
    QPixmap_new5();
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    QPixmap_new7();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void swap(QPixmap &other)
$method=|void|swap|QPixmap &

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=int devType() const
$method=|int|devType|

$prototype=int width() const
$method=|int|width|

$prototype=int height() const
$method=|int|height|

$prototype=QSize size() const
$method=|QSize|size|

$prototype=QRect rect() const
$method=|QRect|rect|

$prototype=int depth() const
$method=|int|depth|

$prototype=void fill(const QColor &fillColor = Qt::white)
$internalMethod=|void|fill,fill1|const QColor &=Qt::white

$prototype=void fill(const QPaintDevice *device, const QPoint &ofs)
$internalMethod=|void|fill,fill2|const QPaintDevice *,const QPoint &

$prototype=void fill(const QPaintDevice *device, int xofs, int yofs)
$internalMethod=|void|fill,fill3|const QPaintDevice *,int,int

//[1]void fill(const QColor &fillColor = Qt::white)
//[2]void fill(const QPaintDevice *device, const QPoint &ofs)
//[3]void fill(const QPaintDevice *device, int xofs, int yofs)

HB_FUNC_STATIC( QPIXMAP_FILL )
{
  if( ISBETWEEN(0,1) && (ISQCOLOR(1)||ISCHAR(1)||ISNIL(1)) )
  {
    QPixmap_fill1();
  }
  else if( ISNUMPAR(2) && ISOBJECT(1) && ISQPOINT(2) ) // TODO: implementar ISQPAINTDEVICE
  {
    QPixmap_fill2();
  }
  else if( ISNUMPAR(3) && ISOBJECT(1) && ISNUM(2) && ISNUM(3) ) // TODO: implementar ISQPAINTDEVICE
  {
    QPixmap_fill3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=fill

$prototype=QBitmap mask() const
$method=|QBitmap|mask|

$prototype=void setMask(const QBitmap &)
$method=|void|setMask|const QBitmap &

$prototype=qreal devicePixelRatio() const
$method=|qreal|devicePixelRatio|

$prototype=void setDevicePixelRatio(qreal scaleFactor)
$method=|void|setDevicePixelRatio|qreal

$prototype=bool hasAlpha() const
$method=|bool|hasAlpha|

$prototype=bool hasAlphaChannel() const
$method=|bool|hasAlphaChannel|

$prototype=QBitmap createHeuristicMask(bool clipTight = true) const
$method=|QBitmap|createHeuristicMask|bool=true

$prototype=QBitmap createMaskFromColor(const QColor &maskColor, Qt::MaskMode mode = Qt::MaskInColor) const
$method=|QBitmap|createMaskFromColor|const QColor &,Qt::MaskMode=Qt::MaskInColor

$prototype=QPixmap scaled(int w, int h, Qt::AspectRatioMode aspectMode = Qt::IgnoreAspectRatio,Qt::TransformationMode mode = Qt::FastTransformation) const
$internalMethod=|QPixmap|scaled,scaled1|int,int,Qt::AspectRatioMode=Qt::IgnoreAspectRatio,Qt::TransformationMode=Qt::FastTransformation

$prototype=QPixmap scaled(const QSize &s, Qt::AspectRatioMode aspectMode = Qt::IgnoreAspectRatio,Qt::TransformationMode mode = Qt::FastTransformation) const
$internalMethod=|QPixmap|scaled,scaled2|const QSize &,Qt::AspectRatioMode=Qt::IgnoreAspectRatio,Qt::TransformationMode=Qt::FastTransformation

//[1]QPixmap scaled(int w, int h, Qt::AspectRatioMode aspectMode = Qt::IgnoreAspectRatio,Qt::TransformationMode mode = Qt::FastTransformation) const
//[2]QPixmap scaled(const QSize &s, Qt::AspectRatioMode aspectMode = Qt::IgnoreAspectRatio,Qt::TransformationMode mode = Qt::FastTransformation) const

HB_FUNC_STATIC( QPIXMAP_SCALED )
{
  if( ISBETWEEN(2,4) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    QPixmap_scaled1();
  }
  else if( ISBETWEEN(1,3) && ISQSIZE(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QPixmap_scaled2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=scaled

$prototype=QPixmap scaledToWidth(int w, Qt::TransformationMode mode = Qt::FastTransformation) const
$method=|QPixmap|scaledToWidth|int,Qt::TransformationMode=Qt::FastTransformation

$prototype=QPixmap scaledToHeight(int h, Qt::TransformationMode mode = Qt::FastTransformation) const
$method=|QPixmap|scaledToHeight|int,Qt::TransformationMode=Qt::FastTransformation

$prototype=QPixmap transformed(const QMatrix &, Qt::TransformationMode mode = Qt::FastTransformation) const
$internalMethod=|QPixmap|transformed,transformed1|const QMatrix &,Qt::TransformationMode=Qt::FastTransformation

$prototype=QPixmap transformed(const QTransform &, Qt::TransformationMode mode = Qt::FastTransformation) const
$internalMethod=|QPixmap|transformed,transformed2|const QTransform &,Qt::TransformationMode=Qt::FastTransformation

//[1]QPixmap transformed(const QMatrix &, Qt::TransformationMode mode = Qt::FastTransformation) const
//[2]QPixmap transformed(const QTransform &, Qt::TransformationMode mode = Qt::FastTransformation) const

HB_FUNC_STATIC( QPIXMAP_TRANSFORMED )
{
  if( ISBETWEEN(1,2) && ISQMATRIX(1) && ISOPTNUM(2) )
  {
    QPixmap_transformed1();
  }
  else if( ISBETWEEN(1,2) && ISQTRANSFORM(1) && ISOPTNUM(2) )
  {
    QPixmap_transformed2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=transformed

$prototype=QImage toImage() const
$method=|QImage|toImage|

$prototype=bool load(const QString& fileName, const char *format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor)
$method=|bool|load|const QString &,const char *=0,Qt::ImageConversionFlags=Qt::AutoColor

$prototype=bool loadFromData(const uchar *buf, uint len, const char* format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor)
$internalMethod=|bool|loadFromData,loadFromData1|const uchar *,uint,const char *=0,Qt::ImageConversionFlags=Qt::AutoColor

$prototype=bool loadFromData(const QByteArray &data, const char* format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor)
$internalMethod=|bool|loadFromData,loadFromData2|const QByteArray &,const char *=0,Qt::ImageConversionFlags=Qt::AutoColor

//[1]bool loadFromData(const uchar *buf, uint len, const char* format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor)
//[2]bool loadFromData(const QByteArray &data, const char* format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor)

HB_FUNC_STATIC( QPIXMAP_LOADFROMDATA )
{
  if( ISBETWEEN(2,4) && ISCHAR(1) && ISNUM(2) && ISOPTCHAR(3) && ISOPTNUM(4) )
  {
    QPixmap_loadFromData1();
  }
  else if( ISBETWEEN(2,3) && ISQBYTEARRAY(1) && ISOPTCHAR(2) && ISOPTNUM(3) )
  {
    QPixmap_loadFromData2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=loadFromData

$prototype=bool save(const QString& fileName, const char* format = 0, int quality = -1) const
$internalMethod=|bool|save,save1|const QString &,const char *=0,int=-1

$prototype=bool save(QIODevice* device, const char* format = 0, int quality = -1) const
$internalMethod=|bool|save,save2|QIODevice *,const char *=0,int=-1

//[1]bool save(const QString& fileName, const char* format = 0, int quality = -1) const
//[2]bool save(QIODevice* device, const char* format = 0, int quality = -1) const

HB_FUNC_STATIC( QPIXMAP_SAVE )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTCHAR(2) && ISOPTNUM(3) )
  {
    QPixmap_save1();
  }
  else if( ISBETWEEN(1,3) && ISQIODEVICE(1) && ISOPTCHAR(2) && ISOPTNUM(3) )
  {
    QPixmap_save2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=save

$prototype=bool convertFromImage(const QImage &img, Qt::ImageConversionFlags flags = Qt::AutoColor)
$method=|bool|convertFromImage|const QImage &,Qt::ImageConversionFlags=Qt::AutoColor

$prototype=QPixmap copy(int x, int y, int width, int height) const
$internalMethod=|QPixmap|copy,copy1|int,int,int,int

$prototype=QPixmap copy(const QRect &rect = QRect()) const
$internalMethod=|QPixmap|copy,copy2|const QRect &=QRect()

//[1]QPixmap copy(int x, int y, int width, int height) const
//[2]QPixmap copy(const QRect &rect = QRect()) const

HB_FUNC_STATIC( QPIXMAP_COPY )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QPixmap_copy1();
  }
  else if( ISBETWEEN(0,1) && (ISQRECT(1)||ISNIL(1)) )
  {
    QPixmap_copy2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=copy

$prototype=void scroll(int dx, int dy, int x, int y, int width, int height, QRegion *exposed = 0)
$internalMethod=|void|scroll,scroll1|int,int,int,int,int,int,QRegion *=0

$prototype=void scroll(int dx, int dy, const QRect &rect, QRegion *exposed = 0)
$internalMethod=|void|scroll,scroll2|int,int,const QRect &,QRegion *=0

//[1]void scroll(int dx, int dy, int x, int y, int width, int height, QRegion *exposed = 0)
//[2]void scroll(int dx, int dy, const QRect &rect, QRegion *exposed = 0)

HB_FUNC_STATIC( QPIXMAP_SCROLL )
{
  if( ISBETWEEN(6,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && (ISQREGION(7)||ISNIL(7)) )
  {
    QPixmap_scroll1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISQRECT(3) && (ISQREGION(4)||ISNIL(4)) )
  {
    QPixmap_scroll2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=scroll

$prototype=qint64 cacheKey() const
$method=|qint64|cacheKey|

$prototype=bool isDetached() const
$method=|bool|isDetached|

$prototype=void detach()
$method=|void|detach|

$prototype=bool isQBitmap() const
$method=|bool|isQBitmap|

$prototype=QPaintEngine *paintEngine() const
$method=|QPaintEngine *|paintEngine|

$prototype=static int defaultDepth()
$staticMethod=|int|defaultDepth|

$prototype=static QPixmap grabWindow(WId, int x=0, int y=0, int w=-1, int h=-1)
$staticMethod=|QPixmap|grabWindow|WId,int=0,int=0,int=-1,int=-1

$prototype=static QPixmap grabWidget(QObject *widget, const QRect &rect)
$internalStaticMethod=|QPixmap|grabWidget,grabWidget1|QObject *,const QRect &

$prototype=static QPixmap grabWidget(QObject *widget, int x=0, int y=0, int w=-1, int h=-1)
$internalStaticMethod=|QPixmap|grabWidget,grabWidget2|QObject *,int=0,int=0,int=-1,int=-1

//[1]static QPixmap grabWidget(QObject *widget, const QRect &rect)
//[2]static QPixmap grabWidget(QObject *widget, int x=0, int y=0, int w=-1, int h=-1)

HB_FUNC_STATIC( QPIXMAP_GRABWIDGET )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISQRECT(2) )
  {
    QPixmap_grabWidget1();
  }
  else if( ISBETWEEN(1,5) && ISQOBJECT(1) && ISOPTNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    QPixmap_grabWidget2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=grabWidget

$prototype=static QMatrix trueMatrix(const QMatrix &m, int w, int h)
$internalStaticMethod=|QMatrix|trueMatrix,trueMatrix1|const QMatrix &,int,int

$prototype=static QTransform trueMatrix(const QTransform &m, int w, int h)
$internalStaticMethod=|QTransform|trueMatrix,trueMatrix2|const QTransform &,int,int

//[1]static QMatrix trueMatrix(const QMatrix &m, int w, int h)
//[2]static QTransform trueMatrix(const QTransform &m, int w, int h)

HB_FUNC_STATIC( QPIXMAP_TRUEMATRIX )
{
  if( ISNUMPAR(3) && ISQMATRIX(1) && ISNUM(2) && ISNUM(3) )
  {
    QPixmap_trueMatrix1();
  }
  else if( ISNUMPAR(3) && ISQTRANSFORM(1) && ISNUM(2) && ISNUM(3) )
  {
    QPixmap_trueMatrix2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=trueMatrix

$prototype=static QPixmap fromImage(const QImage &image, Qt::ImageConversionFlags flags = Qt::AutoColor)
$staticMethod=|QPixmap|fromImage|const QImage &,Qt::ImageConversionFlags=Qt::AutoColor

$prototype=static QPixmap fromImageReader(QImageReader *imageReader, Qt::ImageConversionFlags flags = Qt::AutoColor)
$staticMethod=|QPixmap|fromImageReader|QImageReader *,Qt::ImageConversionFlags=Qt::AutoColor

$variantMethods

#pragma ENDDUMP
