/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QRECT
REQUEST QSIZE
REQUEST QTRANSFORM
#endif

CLASS QImage INHERIT QPaintDevice // TODO: revisar e completar implementacao da classe

   //DATA class_id INIT Class_Id_QImage
   DATA class_flags INIT 0
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
   METHOD loadFromData2
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
   METHOD transformed2
   METHOD transformed
   METHOD valid
   METHOD width
   METHOD fromData2
   METHOD fromData
   METHOD trueMatrix2
   METHOD trueMatrix

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QImage
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QImage>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QImage>
#endif

#include <QStringList>
#include <QColor>

/*
QImage ()
*/
void QImage_new1 ()
{
  QImage * o = new QImage (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QImage ( const QSize & size, Format format )
*/
void QImage_new2 ()
{
  QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QImage * o = new QImage ( *par1,  (QImage::Format) par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QImage ( int width, int height, Format format )
*/
void QImage_new3 ()
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  QImage * o = new QImage ( par1, par2,  (QImage::Format) par3 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QImage ( const QString & fileName, const char * format = 0 )
*/
HB_FUNC_STATIC( QIMAGE_NEW9 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  const char * par2 = ISNIL(2)? 0 : hb_parc(2);
  QImage * o = new QImage ( par1,  (const char *) par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QImage ( const char * fileName, const char * format = 0 )
*/
HB_FUNC_STATIC( QIMAGE_NEW10 )
{
  const char * par1 = hb_parc(1);
  const char * par2 = ISNIL(2)? 0 : hb_parc(2);
  QImage * o = new QImage (  (const char *) par1,  (const char *) par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QImage ( const QImage & image )
*/
void QImage_new11 ()
{
  QImage * par1 = (QImage *) _qt5xhb_itemGetPtr(1);
  QImage * o = new QImage ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

// TODO: resolver conflitos
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

HB_FUNC_STATIC( QIMAGE_DELETE )
{
  QImage * obj = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool allGray () const
*/
HB_FUNC_STATIC( QIMAGE_ALLGRAY )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->allGray (  ) );
  }
}

/*
int bitPlaneCount () const
*/
HB_FUNC_STATIC( QIMAGE_BITPLANECOUNT )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->bitPlaneCount (  ) );
  }
}

/*
int byteCount () const
*/
HB_FUNC_STATIC( QIMAGE_BYTECOUNT )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->byteCount (  ) );
  }
}

/*
int bytesPerLine () const
*/
HB_FUNC_STATIC( QIMAGE_BYTESPERLINE )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->bytesPerLine (  ) );
  }
}

/*
qint64 cacheKey () const
*/
HB_FUNC_STATIC( QIMAGE_CACHEKEY )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->cacheKey (  ) );
  }
}

/*
QRgb color ( int i ) const
*/
HB_FUNC_STATIC( QIMAGE_COLOR )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retni( obj->color ( (int) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int colorCount () const
*/
HB_FUNC_STATIC( QIMAGE_COLORCOUNT )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->colorCount (  ) );
  }
}

/*
QVector<QRgb> colorTable () const
*/
HB_FUNC_STATIC( QIMAGE_COLORTABLE )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVector<QRgb> list = obj->colorTable (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QImage convertToFormat ( Format format, Qt::ImageConversionFlags flags = Qt::AutoColor ) const
*/
void QImage_convertToFormat1 ()
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) Qt::AutoColor : hb_parni(2);
    QImage * ptr = new QImage( obj->convertToFormat (  (QImage::Format) par1,  (Qt::ImageConversionFlags) par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}

/*
QImage convertToFormat ( Format format, const QVector<QRgb> & colorTable, Qt::ImageConversionFlags flags = Qt::AutoColor ) const
*/
void QImage_convertToFormat2 ()
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    QVector<QRgb> par2;
    PHB_ITEM aValues2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aValues2);
    int temp2;
    for (i2=0;i2<nLen2;i2++)
    {
      temp2 = hb_arrayGetNI(aValues2, i2+1);
      par2 << temp2;
    }
    int par3 = ISNIL(3)? (int) Qt::AutoColor : hb_parni(3);
    QImage * ptr = new QImage( obj->convertToFormat (  (QImage::Format) par1, par2,  (Qt::ImageConversionFlags) par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}

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
void QImage_copy1 ()
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect par1 = ISNIL(1)? QRect() : *(QRect *) _qt5xhb_itemGetPtr(1);
    QImage * ptr = new QImage( obj->copy ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}

/*
QImage copy ( int x, int y, int width, int height ) const
*/
void QImage_copy2 ()
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QImage * ptr = new QImage( obj->copy ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) ) );
    _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}

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
HB_FUNC_STATIC( QIMAGE_CREATEALPHAMASK )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) Qt::AutoColor : hb_parni(1);
      QImage * ptr = new QImage( obj->createAlphaMask (  (Qt::ImageConversionFlags) par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QImage createHeuristicMask ( bool clipTight = true ) const
*/
HB_FUNC_STATIC( QIMAGE_CREATEHEURISTICMASK )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) )
    {
      QImage * ptr = new QImage( obj->createHeuristicMask ( (bool) ISNIL(1)? true : hb_parl(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QImage createMaskFromColor ( QRgb color, Qt::MaskMode mode = Qt::MaskInColor ) const
*/
HB_FUNC_STATIC( QIMAGE_CREATEMASKFROMCOLOR )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) Qt::MaskInColor : hb_parni(2);
      QImage * ptr = new QImage( obj->createMaskFromColor ( (QRgb) hb_parni(1),  (Qt::MaskMode) par2 ) );
      _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int depth () const
*/
HB_FUNC_STATIC( QIMAGE_DEPTH )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->depth (  ) );
  }
}

/*
int dotsPerMeterX () const
*/
HB_FUNC_STATIC( QIMAGE_DOTSPERMETERX )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->dotsPerMeterX (  ) );
  }
}

/*
int dotsPerMeterY () const
*/
HB_FUNC_STATIC( QIMAGE_DOTSPERMETERY )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->dotsPerMeterY (  ) );
  }
}

/*
void fill ( uint pixelValue )
*/
void QImage_fill1 ()
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->fill ( (uint) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fill ( Qt::GlobalColor color )
*/
void QImage_fill2 ()
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->fill (  (Qt::GlobalColor) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fill ( const QColor & color )
*/
void QImage_fill3 ()
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->fill ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void fill ( uint pixelValue )
//[2]void fill ( Qt::GlobalColor color )
//[3]void fill ( const QColor & color )

HB_FUNC_STATIC( QIMAGE_FILL )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QImage_fill1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )  // TODO: conflito entre [1] e [2]
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
HB_FUNC_STATIC( QIMAGE_FORMAT )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->format (  ) );
  }
}

/*
bool hasAlphaChannel () const
*/
HB_FUNC_STATIC( QIMAGE_HASALPHACHANNEL )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->hasAlphaChannel (  ) );
  }
}

/*
int height () const
*/
HB_FUNC_STATIC( QIMAGE_HEIGHT )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->height (  ) );
  }
}

/*
void invertPixels ( InvertMode mode = InvertRgb )
*/
HB_FUNC_STATIC( QIMAGE_INVERTPIXELS )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QImage::InvertRgb : hb_parni(1);
      obj->invertPixels (  (QImage::InvertMode) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isGrayscale () const
*/
HB_FUNC_STATIC( QIMAGE_ISGRAYSCALE )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isGrayscale (  ) );
  }
}

/*
bool isNull () const
*/
HB_FUNC_STATIC( QIMAGE_ISNULL )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}

/*
bool load ( const QString & fileName, const char * format = 0 )
*/
void QImage_load1 ()
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    const char * par2 = ISNIL(2)? 0 : hb_parc(2);
    hb_retl( obj->load ( par1,  (const char *) par2 ) );
  }
}

/*
bool load ( QIODevice * device, const char * format )
*/
void QImage_load2 ()
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    const char * par2 = hb_parc(2);
    hb_retl( obj->load ( par1,  (const char *) par2 ) );
  }
}

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
bool loadFromData ( const QByteArray & data, const char * format = 0 )
*/
HB_FUNC_STATIC( QIMAGE_LOADFROMDATA2 )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
    const char * par2 = ISNIL(2)? 0 : hb_parc(2);
    hb_retl( obj->loadFromData ( *par1,  (const char *) par2 ) );
  }
}

HB_FUNC_STATIC( QIMAGE_LOADFROMDATA )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && ISOPTCHAR(3) )
  {
    //HB_FUNC_EXEC( QIMAGE_LOADFROMDATA1 );
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTCHAR(2) )
  {
    HB_FUNC_EXEC( QIMAGE_LOADFROMDATA2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QImage mirrored ( bool horizontal = false, bool vertical = true ) const
*/
HB_FUNC_STATIC( QIMAGE_MIRRORED )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) && ISOPTLOG(2) )
    {
      QImage * ptr = new QImage( obj->mirrored ( (bool) ISNIL(1)? false : hb_parl(1), (bool) ISNIL(2)? true : hb_parl(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPoint offset () const
*/
HB_FUNC_STATIC( QIMAGE_OFFSET )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->offset (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QRgb pixel ( const QPoint & position ) const
*/
void QImage_pixel1 ()
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->pixel ( *par1 ) );
  }
}

/*
QRgb pixel ( int x, int y ) const
*/
void QImage_pixel2 ()
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->pixel ( (int) hb_parni(1), (int) hb_parni(2) ) );
  }
}

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
void QImage_pixelIndex1 ()
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->pixelIndex ( *par1 ) );
  }
}

/*
int pixelIndex ( int x, int y ) const
*/
void QImage_pixelIndex2 ()
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->pixelIndex ( (int) hb_parni(1), (int) hb_parni(2) ) );
  }
}

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
HB_FUNC_STATIC( QIMAGE_RECT )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->rect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QImage rgbSwapped () const
*/
HB_FUNC_STATIC( QIMAGE_RGBSWAPPED )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QImage * ptr = new QImage( obj->rgbSwapped (  ) );
    _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}

/*
bool save ( const QString & fileName, const char * format = 0, int quality = -1 ) const
*/
void QImage_save1 ()
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    const char * par2 = ISNIL(2)? 0 : hb_parc(2);
    hb_retl( obj->save ( par1,  (const char *) par2, (int) ISNIL(3)? -1 : hb_parni(3) ) );
  }
}

/*
bool save ( QIODevice * device, const char * format = 0, int quality = -1 ) const
*/
void QImage_save2 ()
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    const char * par2 = ISNIL(2)? 0 : hb_parc(2);
    hb_retl( obj->save ( par1,  (const char *) par2, (int) ISNIL(3)? -1 : hb_parni(3) ) );
  }
}

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
void QImage_scaled1 ()
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) Qt::IgnoreAspectRatio : hb_parni(2);
    int par3 = ISNIL(3)? (int) Qt::FastTransformation : hb_parni(3);
    QImage * ptr = new QImage( obj->scaled ( *par1,  (Qt::AspectRatioMode) par2,  (Qt::TransformationMode) par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}

/*
QImage scaled ( int width, int height, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
*/
void QImage_scaled2 ()
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par3 = ISNIL(3)? (int) Qt::IgnoreAspectRatio : hb_parni(3);
    int par4 = ISNIL(4)? (int) Qt::FastTransformation : hb_parni(4);
    QImage * ptr = new QImage( obj->scaled ( (int) hb_parni(1), (int) hb_parni(2),  (Qt::AspectRatioMode) par3,  (Qt::TransformationMode) par4 ) );
    _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}

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
HB_FUNC_STATIC( QIMAGE_SCALEDTOHEIGHT )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) Qt::FastTransformation : hb_parni(2);
      QImage * ptr = new QImage( obj->scaledToHeight ( (int) hb_parni(1),  (Qt::TransformationMode) par2 ) );
      _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QImage scaledToWidth ( int width, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
HB_FUNC_STATIC( QIMAGE_SCALEDTOWIDTH )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) Qt::FastTransformation : hb_parni(2);
      QImage * ptr = new QImage( obj->scaledToWidth ( (int) hb_parni(1),  (Qt::TransformationMode) par2 ) );
      _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QIMAGE_SCANLINE ) // TODO: implementar
{
  //HB_FUNC_EXEC( QIMAGE_SCANLINE1 );
}

/*
void setColor ( int index, QRgb colorValue )
*/
HB_FUNC_STATIC( QIMAGE_SETCOLOR )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->setColor ( (int) hb_parni(1), (QRgb) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColorCount ( int colorCount )
*/
HB_FUNC_STATIC( QIMAGE_SETCOLORCOUNT )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setColorCount ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDotsPerMeterX ( int x )
*/
HB_FUNC_STATIC( QIMAGE_SETDOTSPERMETERX )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setDotsPerMeterX ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDotsPerMeterY ( int y )
*/
HB_FUNC_STATIC( QIMAGE_SETDOTSPERMETERY )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setDotsPerMeterY ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOffset ( const QPoint & offset )
*/
HB_FUNC_STATIC( QIMAGE_SETOFFSET )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) )
    {
      QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
      obj->setOffset ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPixel ( const QPoint & position, uint index_or_rgb )
*/
void QImage_setPixel1 ()
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    obj->setPixel ( *par1, (uint) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPixel ( int x, int y, uint index_or_rgb )
*/
void QImage_setPixel2 ()
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setPixel ( (int) hb_parni(1), (int) hb_parni(2), (uint) hb_parni(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QIMAGE_SETTEXT )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISCHAR(2) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      QString par2 = QLatin1String( hb_parc(2) );
      obj->setText ( par1, par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize size () const
*/
HB_FUNC_STATIC( QIMAGE_SIZE )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->size (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void swap ( QImage & other )
*/
HB_FUNC_STATIC( QIMAGE_SWAP )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQIMAGE(1) )
    {
      QImage  * par1 = (QImage  *) _qt5xhb_itemGetPtr(1);
      obj->swap ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text ( const QString & key = QString() ) const
*/
HB_FUNC_STATIC( QIMAGE_TEXT )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTCHAR(1) )
    {
      QString par1 = ISNIL(1)? QString() : QLatin1String( hb_parc(1) );
      hb_retc( (const char *) obj->text ( par1 ).toLatin1().data() );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList textKeys () const
*/
HB_FUNC_STATIC( QIMAGE_TEXTKEYS )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringList strl = obj->textKeys (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}

/*
QImage transformed ( const QTransform & matrix, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
HB_FUNC_STATIC( QIMAGE_TRANSFORMED2 )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTRANSFORM(1) && ISOPTNUM(2) )
    {
      QTransform * par1 = (QTransform *) _qt5xhb_itemGetPtr(1);
      int par2 = ISNIL(2)? (int) Qt::FastTransformation : hb_parni(2);
      QImage * ptr = new QImage( obj->transformed ( *par1,  (Qt::TransformationMode) par2 ) );
      _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QIMAGE_TRANSFORMED )
{
  HB_FUNC_EXEC( QIMAGE_TRANSFORMED2 );
}

/*
bool valid ( const QPoint & pos ) const
*/
void QImage_valid1 ()
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->valid ( *par1 ) );
  }
}

/*
bool valid ( int x, int y ) const
*/
void QImage_valid2 ()
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->valid ( (int) hb_parni(1), (int) hb_parni(2) ) );
  }
}

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
HB_FUNC_STATIC( QIMAGE_WIDTH )
{
  QImage * obj = (QImage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->width (  ) );
  }
}

/*
static QImage fromData ( const QByteArray & data, const char * format = 0 )
*/
HB_FUNC_STATIC( QIMAGE_FROMDATA2 )
{
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  const char * par2 = ISNIL(2)? 0 : hb_parc(2);
  QImage * ptr = new QImage( QImage::fromData ( *par1,  (const char *) par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
}

HB_FUNC_STATIC( QIMAGE_FROMDATA )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && ISOPTCHAR(3) )
  {
    //HB_FUNC_EXEC( QIMAGE_FROMDATA1 );
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTCHAR(2) )
  {
    HB_FUNC_EXEC( QIMAGE_FROMDATA2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QTransform trueMatrix ( const QTransform & matrix, int width, int height )
*/
HB_FUNC_STATIC( QIMAGE_TRUEMATRIX2 )
{
  QTransform * par1 = (QTransform *) _qt5xhb_itemGetPtr(1);
  QTransform * ptr = new QTransform( QImage::trueMatrix ( *par1, (int) hb_parni(2), (int) hb_parni(3) ) );
  _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
}

HB_FUNC_STATIC( QIMAGE_TRUEMATRIX )
{
  HB_FUNC_EXEC( QIMAGE_TRUEMATRIX2 );
}

#pragma ENDDUMP
