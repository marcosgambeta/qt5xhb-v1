/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QRECT
REQUEST QBITMAP
REQUEST QIMAGE
REQUEST QPAINTENGINE
REQUEST QMATRIX
REQUEST QTRANSFORM
#endif

CLASS QPixmap INHERIT QPaintDevice

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isNull
   METHOD devType
   METHOD width
   METHOD height
   METHOD size
   METHOD rect
   METHOD depth
   METHOD fill
   METHOD mask
   METHOD setMask
   METHOD devicePixelRatio
   METHOD setDevicePixelRatio
   METHOD hasAlpha
   METHOD hasAlphaChannel
   METHOD createHeuristicMask
   METHOD createMaskFromColor
   METHOD scaled
   METHOD scaledToWidth
   METHOD scaledToHeight
   METHOD transformed
   METHOD toImage
   METHOD load
   METHOD loadFromData
   METHOD save
   METHOD convertFromImage
   METHOD copy
   METHOD scroll
   METHOD cacheKey
   METHOD isDetached
   METHOD detach
   METHOD isQBitmap
   METHOD paintEngine
   METHOD defaultDepth
   METHOD grabWindow
   METHOD grabWidget
   METHOD trueMatrix
   METHOD fromImage
   METHOD fromImageReader
   METHOD toVariant
   METHOD fromVariant

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPixmap
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPixmap>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPixmap>
#endif

#include <QBitmap>
#include <QVariant>

/*
QPixmap ()
*/
void QPixmap_new1 ()
{
  QPixmap * o = new QPixmap ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPixmap ( int width, int height )
*/
void QPixmap_new3 ()
{
  QPixmap * o = new QPixmap ( PINT(1), PINT(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPixmap ( const QSize & size )
*/
void QPixmap_new4 ()
{
  QPixmap * o = new QPixmap ( *PQSIZE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPixmap ( const QString & fileName, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
void QPixmap_new5 ()
{
  int par3 = ISNIL(3)? (int) Qt::AutoColor : hb_parni(3);
  QPixmap * o = new QPixmap ( PQSTRING(1), OPCONSTCHAR(2,0), (Qt::ImageConversionFlags) par3 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPixmap ( const QPixmap & pixmap )
*/
void QPixmap_new7 ()
{
  QPixmap * o = new QPixmap ( *PQPIXMAP(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

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

HB_FUNC_STATIC( QPIXMAP_DELETE )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void swap(QPixmap &other)
*/
HB_FUNC_STATIC( QPIXMAP_SWAP )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPIXMAP(1) )
    {
      QPixmap * par1 = (QPixmap *) _qt5xhb_itemGetPtr(1);
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
bool isNull() const
*/
HB_FUNC_STATIC( QPIXMAP_ISNULL )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isNull () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int devType() const
*/
HB_FUNC_STATIC( QPIXMAP_DEVTYPE )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->devType () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int width() const
*/
HB_FUNC_STATIC( QPIXMAP_WIDTH )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->width () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int height() const
*/
HB_FUNC_STATIC( QPIXMAP_HEIGHT )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->height () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize size() const
*/
HB_FUNC_STATIC( QPIXMAP_SIZE )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->size () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRect rect() const
*/
HB_FUNC_STATIC( QPIXMAP_RECT )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->rect () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int depth() const
*/
HB_FUNC_STATIC( QPIXMAP_DEPTH )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->depth () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void fill(const QColor &fillColor = Qt::white)
*/
void QPixmap_fill1 ()
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QColor par1 = ISNIL(1)? Qt::white : ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->fill ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fill(const QPaintDevice *device, const QPoint &ofs)
*/
void QPixmap_fill2 ()
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QPaintDevice * par1 = (const QPaintDevice *) _qt5xhb_itemGetPtr(1);
    obj->fill ( par1, *PQPOINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fill(const QPaintDevice *device, int xofs, int yofs)
*/
void QPixmap_fill3 ()
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QPaintDevice * par1 = (const QPaintDevice *) _qt5xhb_itemGetPtr(1);
    obj->fill ( par1, PINT(2), PINT(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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

/*
QBitmap mask() const
*/
HB_FUNC_STATIC( QPIXMAP_MASK )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBitmap * ptr = new QBitmap( obj->mask () );
      _qt5xhb_createReturnClass ( ptr, "QBITMAP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setMask(const QBitmap &)
*/
HB_FUNC_STATIC( QPIXMAP_SETMASK )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBITMAP(1) )
    {
      obj->setMask ( *PQBITMAP(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal devicePixelRatio() const
*/
HB_FUNC_STATIC( QPIXMAP_DEVICEPIXELRATIO )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->devicePixelRatio () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setDevicePixelRatio(qreal scaleFactor)
*/
HB_FUNC_STATIC( QPIXMAP_SETDEVICEPIXELRATIO )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setDevicePixelRatio ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool hasAlpha() const
*/
HB_FUNC_STATIC( QPIXMAP_HASALPHA )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->hasAlpha () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool hasAlphaChannel() const
*/
HB_FUNC_STATIC( QPIXMAP_HASALPHACHANNEL )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->hasAlphaChannel () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QBitmap createHeuristicMask(bool clipTight = true) const
*/
HB_FUNC_STATIC( QPIXMAP_CREATEHEURISTICMASK )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      QBitmap * ptr = new QBitmap( obj->createHeuristicMask ( OPBOOL(1,true) ) );
      _qt5xhb_createReturnClass ( ptr, "QBITMAP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QBitmap createMaskFromColor(const QColor &maskColor, Qt::MaskMode mode = Qt::MaskInColor) const
*/
HB_FUNC_STATIC( QPIXMAP_CREATEMASKFROMCOLOR )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && (ISQCOLOR(1)||ISCHAR(1)) && ISOPTNUM(2) )
    {
      QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
      int par2 = ISNIL(2)? (int) Qt::MaskInColor : hb_parni(2);
      QBitmap * ptr = new QBitmap( obj->createMaskFromColor ( par1, (Qt::MaskMode) par2 ) );
      _qt5xhb_createReturnClass ( ptr, "QBITMAP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPixmap scaled(int w, int h, Qt::AspectRatioMode aspectMode = Qt::IgnoreAspectRatio,Qt::TransformationMode mode = Qt::FastTransformation) const
*/
void QPixmap_scaled1 ()
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par3 = ISNIL(3)? (int) Qt::IgnoreAspectRatio : hb_parni(3);
    int par4 = ISNIL(4)? (int) Qt::FastTransformation : hb_parni(4);
    QPixmap * ptr = new QPixmap( obj->scaled ( PINT(1), PINT(2), (Qt::AspectRatioMode) par3, (Qt::TransformationMode) par4 ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
QPixmap scaled(const QSize &s, Qt::AspectRatioMode aspectMode = Qt::IgnoreAspectRatio,Qt::TransformationMode mode = Qt::FastTransformation) const
*/
void QPixmap_scaled2 ()
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::IgnoreAspectRatio : hb_parni(2);
    int par3 = ISNIL(3)? (int) Qt::FastTransformation : hb_parni(3);
    QPixmap * ptr = new QPixmap( obj->scaled ( *PQSIZE(1), (Qt::AspectRatioMode) par2, (Qt::TransformationMode) par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

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

/*
QPixmap scaledToWidth(int w, Qt::TransformationMode mode = Qt::FastTransformation) const
*/
HB_FUNC_STATIC( QPIXMAP_SCALEDTOWIDTH )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) Qt::FastTransformation : hb_parni(2);
      QPixmap * ptr = new QPixmap( obj->scaledToWidth ( PINT(1), (Qt::TransformationMode) par2 ) );
      _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPixmap scaledToHeight(int h, Qt::TransformationMode mode = Qt::FastTransformation) const
*/
HB_FUNC_STATIC( QPIXMAP_SCALEDTOHEIGHT )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) Qt::FastTransformation : hb_parni(2);
      QPixmap * ptr = new QPixmap( obj->scaledToHeight ( PINT(1), (Qt::TransformationMode) par2 ) );
      _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPixmap transformed(const QMatrix &, Qt::TransformationMode mode = Qt::FastTransformation) const
*/
void QPixmap_transformed1 ()
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::FastTransformation : hb_parni(2);
    QPixmap * ptr = new QPixmap( obj->transformed ( *PQMATRIX(1), (Qt::TransformationMode) par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
QPixmap transformed(const QTransform &, Qt::TransformationMode mode = Qt::FastTransformation) const
*/
void QPixmap_transformed2 ()
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::FastTransformation : hb_parni(2);
    QPixmap * ptr = new QPixmap( obj->transformed ( *PQTRANSFORM(1), (Qt::TransformationMode) par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

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

/*
QImage toImage() const
*/
HB_FUNC_STATIC( QPIXMAP_TOIMAGE )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QImage * ptr = new QImage( obj->toImage () );
      _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool load(const QString& fileName, const char *format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor)
*/
HB_FUNC_STATIC( QPIXMAP_LOAD )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTCHAR(2) && ISOPTNUM(3) )
    {
      int par3 = ISNIL(3)? (int) Qt::AutoColor : hb_parni(3);
      RBOOL( obj->load ( PQSTRING(1), OPCONSTCHAR(2,0), (Qt::ImageConversionFlags) par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool loadFromData(const uchar *buf, uint len, const char* format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor)
*/
void QPixmap_loadFromData1 ()
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const uchar * par1 = (const uchar *) _qt5xhb_itemGetPtr(1);
    int par4 = ISNIL(4)? (int) Qt::AutoColor : hb_parni(4);
    RBOOL( obj->loadFromData ( par1, (uint) hb_parni(2), OPCONSTCHAR(3,0), (Qt::ImageConversionFlags) par4 ) );
  }
}

/*
bool loadFromData(const QByteArray &data, const char* format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor)
*/
void QPixmap_loadFromData2 ()
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par3 = ISNIL(3)? (int) Qt::AutoColor : hb_parni(3);
    RBOOL( obj->loadFromData ( *PQBYTEARRAY(1), OPCONSTCHAR(2,0), (Qt::ImageConversionFlags) par3 ) );
  }
}

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

/*
bool save(const QString& fileName, const char* format = 0, int quality = -1) const
*/
void QPixmap_save1 ()
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->save ( PQSTRING(1), OPCONSTCHAR(2,0), OPINT(3,-1) ) );
  }
}

/*
bool save(QIODevice* device, const char* format = 0, int quality = -1) const
*/
void QPixmap_save2 ()
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->save ( PQIODEVICE(1), OPCONSTCHAR(2,0), OPINT(3,-1) ) );
  }
}

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

/*
bool convertFromImage(const QImage &img, Qt::ImageConversionFlags flags = Qt::AutoColor)
*/
HB_FUNC_STATIC( QPIXMAP_CONVERTFROMIMAGE )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISQIMAGE(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) Qt::AutoColor : hb_parni(2);
      RBOOL( obj->convertFromImage ( *PQIMAGE(1), (Qt::ImageConversionFlags) par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPixmap copy(int x, int y, int width, int height) const
*/
void QPixmap_copy1 ()
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->copy ( PINT(1), PINT(2), PINT(3), PINT(4) ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
QPixmap copy(const QRect &rect = QRect()) const
*/
void QPixmap_copy2 ()
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect par1 = ISNIL(1)? QRect() : *(QRect *) _qt5xhb_itemGetPtr(1);
    QPixmap * ptr = new QPixmap( obj->copy ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

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

/*
void scroll(int dx, int dy, int x, int y, int width, int height, QRegion *exposed = 0)
*/
void QPixmap_scroll1 ()
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegion * par7 = ISNIL(7)? 0 : (QRegion *) _qt5xhb_itemGetPtr(7);
    obj->scroll ( PINT(1), PINT(2), PINT(3), PINT(4), PINT(5), PINT(6), par7 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scroll(int dx, int dy, const QRect &rect, QRegion *exposed = 0)
*/
void QPixmap_scroll2 ()
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegion * par4 = ISNIL(4)? 0 : (QRegion *) _qt5xhb_itemGetPtr(4);
    obj->scroll ( PINT(1), PINT(2), *PQRECT(3), par4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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

/*
qint64 cacheKey() const
*/
HB_FUNC_STATIC( QPIXMAP_CACHEKEY )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQINT64( obj->cacheKey () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isDetached() const
*/
HB_FUNC_STATIC( QPIXMAP_ISDETACHED )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isDetached () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void detach()
*/
HB_FUNC_STATIC( QPIXMAP_DETACH )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->detach ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isQBitmap() const
*/
HB_FUNC_STATIC( QPIXMAP_ISQBITMAP )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isQBitmap () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPaintEngine *paintEngine() const
*/
HB_FUNC_STATIC( QPIXMAP_PAINTENGINE )
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPaintEngine * ptr = obj->paintEngine ();
      _qt5xhb_createReturnClass ( ptr, "QPAINTENGINE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
static int defaultDepth()
*/
HB_FUNC_STATIC( QPIXMAP_DEFAULTDEPTH )
{
  if( ISNUMPAR(0) )
  {
    RINT( QPixmap::defaultDepth () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QPixmap grabWindow(WId, int x=0, int y=0, int w=-1, int h=-1)
*/
HB_FUNC_STATIC( QPIXMAP_GRABWINDOW )
{
  if( ISBETWEEN(1,5) && ISPOINTER(1) && ISOPTNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    WId par1 = (WId) hb_parptr(1);
    QPixmap * ptr = new QPixmap( QPixmap::grabWindow ( par1, OPINT(2,0), OPINT(3,0), OPINT(4,-1), OPINT(5,-1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QPixmap grabWidget(QObject *widget, const QRect &rect)
*/
void QPixmap_grabWidget1 ()
{
  QPixmap * ptr = new QPixmap( QPixmap::grabWidget ( PQOBJECT(1), *PQRECT(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
}

/*
static QPixmap grabWidget(QObject *widget, int x=0, int y=0, int w=-1, int h=-1)
*/
void QPixmap_grabWidget2 ()
{
  QPixmap * ptr = new QPixmap( QPixmap::grabWidget ( PQOBJECT(1), OPINT(2,0), OPINT(3,0), OPINT(4,-1), OPINT(5,-1) ) );
  _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
}

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

/*
static QMatrix trueMatrix(const QMatrix &m, int w, int h)
*/
void QPixmap_trueMatrix1 ()
{
  QMatrix * ptr = new QMatrix( QPixmap::trueMatrix ( *PQMATRIX(1), PINT(2), PINT(3) ) );
  _qt5xhb_createReturnClass ( ptr, "QMATRIX" );
}

/*
static QTransform trueMatrix(const QTransform &m, int w, int h)
*/
void QPixmap_trueMatrix2 ()
{
  QTransform * ptr = new QTransform( QPixmap::trueMatrix ( *PQTRANSFORM(1), PINT(2), PINT(3) ) );
  _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
}

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

/*
static QPixmap fromImage(const QImage &image, Qt::ImageConversionFlags flags = Qt::AutoColor)
*/
HB_FUNC_STATIC( QPIXMAP_FROMIMAGE )
{
  if( ISBETWEEN(1,2) && ISQIMAGE(1) && ISOPTNUM(2) )
  {
    int par2 = ISNIL(2)? (int) Qt::AutoColor : hb_parni(2);
    QPixmap * ptr = new QPixmap( QPixmap::fromImage ( *PQIMAGE(1), (Qt::ImageConversionFlags) par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QPixmap fromImageReader(QImageReader *imageReader, Qt::ImageConversionFlags flags = Qt::AutoColor)
*/
HB_FUNC_STATIC( QPIXMAP_FROMIMAGEREADER )
{
  if( ISBETWEEN(1,2) && ISQIMAGEREADER(1) && ISOPTNUM(2) )
  {
    QImageReader * par1 = (QImageReader *) _qt5xhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) Qt::AutoColor : hb_parni(2);
    QPixmap * ptr = new QPixmap( QPixmap::fromImageReader ( par1, (Qt::ImageConversionFlags) par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QVariant toVariant ()
*/
void QPixmap_toVariant1 ()
{
  QPixmap * obj = (QPixmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * variant = new QVariant();
    variant->setValue<QPixmap>( *obj );
    _qt5xhb_createReturnClass ( variant, "QVARIANT", true );
  }
}

/*
static QVariant toVariant ( const QPixmap & )
*/
void QPixmap_toVariant2 ()
{
  QPixmap * pixmap = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVariant * variant = new QVariant();
  variant->setValue<QPixmap>( *pixmap );
  _qt5xhb_createReturnClass ( variant, "QVARIANT", true );
}

//[1]QVariant toVariant ()
//[2]static QVariant toVariant ( const QPixmap & )

HB_FUNC_STATIC( QPIXMAP_TOVARIANT )
{
  if( ISNUMPAR(0) )
  {
    QPixmap_toVariant1();
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    QPixmap_toVariant2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QPixmap fromVariant ( const QVariant & )
*/
HB_FUNC_STATIC( QPIXMAP_FROMVARIANT )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    QVariant * variant = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPixmap * pixmap = new QPixmap( variant->value<QPixmap>() );
    _qt5xhb_createReturnClass ( pixmap, "QPIXMAP", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
