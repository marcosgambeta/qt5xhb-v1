/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QRECT
REQUEST QBITMAP
REQUEST QIMAGE
REQUEST QPAINTENGINE
REQUEST QMATRIX
REQUEST QTRANSFORM
#endif

CLASS QPixmap INHERIT QPaintDevice

   DATA class_id INIT Class_Id_QPixmap
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new7
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
   METHOD fill1
   METHOD fill2
   METHOD fill3
   METHOD fill
   METHOD mask
   METHOD setMask
   METHOD devicePixelRatio
   METHOD setDevicePixelRatio
   METHOD hasAlpha
   METHOD hasAlphaChannel
   METHOD createHeuristicMask
   METHOD createMaskFromColor
   METHOD scaled1
   METHOD scaled2
   METHOD scaled
   METHOD scaledToWidth
   METHOD scaledToHeight
   METHOD transformed1
   METHOD transformed2
   METHOD transformed
   METHOD toImage
   METHOD load
   METHOD loadFromData1
   METHOD loadFromData2
   METHOD loadFromData
   METHOD save1
   METHOD save2
   METHOD save
   METHOD convertFromImage
   METHOD copy1
   METHOD copy2
   METHOD copy
   METHOD scroll1
   METHOD scroll2
   METHOD scroll
   METHOD cacheKey
   METHOD isDetached
   METHOD detach
   METHOD isQBitmap
   METHOD paintEngine
   METHOD defaultDepth
   METHOD grabWindow
   METHOD grabWidget1
   METHOD grabWidget2
   METHOD grabWidget
   METHOD trueMatrix1
   METHOD trueMatrix2
   METHOD trueMatrix
   METHOD fromImage
   METHOD fromImageReader
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QPixmap>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QPixmap>
#endif
#endif

#include <QBitmap>

/*
QPixmap ()
*/
HB_FUNC_STATIC( QPIXMAP_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPixmap * o = new QPixmap (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPixmap *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QPixmap ( int width, int height )
*/
HB_FUNC_STATIC( QPIXMAP_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  QPixmap * o = new QPixmap ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPixmap *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QPixmap ( const QSize & size )
*/
HB_FUNC_STATIC( QPIXMAP_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
  QPixmap * o = new QPixmap ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPixmap *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QPixmap ( const QString & fileName, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPIXMAP_NEW5 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  const char * par2 = ISNIL(2)? 0 : hb_parc(2);
  int par3 = ISNIL(3)? (int) Qt::AutoColor : hb_parni(3);
  QPixmap * o = new QPixmap ( par1,  (const char *) par2,  (Qt::ImageConversionFlags) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPixmap *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QPixmap ( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QPIXMAP_NEW7 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPixmap * par1 = (QPixmap *) _qtxhb_itemGetPtr(1);
  QPixmap * o = new QPixmap ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPixmap *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QPixmap()
//[2]QPixmap(QPlatformPixmap *data)
//[3]QPixmap(int w, int h)
//[4]QPixmap(const QSize &)
//[5]QPixmap(const QString& fileName, const char *format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor)
//[6]QPixmap(const char * const xpm[])
//[7]QPixmap(const QPixmap &)

HB_FUNC_STATIC( QPIXMAP_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW1 );
  }
  //else if( ISNUMPAR(1) && ISQPLATFORMPIXMAP(1) )
  //{
  //  HB_FUNC_EXEC( QPIXMAP_NEW2 );
  //}
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW4 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW5 );
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW7 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPIXMAP_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
void swap(QPixmap &other)
*/
HB_FUNC_STATIC( QPIXMAP_SWAP )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * par1 = (QPixmap *) _qtxhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QPIXMAP_ISNULL )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
int devType() const
*/
HB_FUNC_STATIC( QPIXMAP_DEVTYPE )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->devType (  ) );
  }
}


/*
int width() const
*/
HB_FUNC_STATIC( QPIXMAP_WIDTH )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->width (  ) );
  }
}


/*
int height() const
*/
HB_FUNC_STATIC( QPIXMAP_HEIGHT )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->height (  ) );
  }
}


/*
QSize size() const
*/
HB_FUNC_STATIC( QPIXMAP_SIZE )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->size (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QRect rect() const
*/
HB_FUNC_STATIC( QPIXMAP_RECT )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->rect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
int depth() const
*/
HB_FUNC_STATIC( QPIXMAP_DEPTH )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->depth (  ) );
  }
}


/*
void fill(const QColor &fillColor = Qt::white)
*/
HB_FUNC_STATIC( QPIXMAP_FILL1 )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par1 = ISNIL(1)? Qt::white : ISOBJECT(1)? *(QColor *) _qtxhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->fill ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void fill(const QPaintDevice *device, const QPoint &ofs)
*/
HB_FUNC_STATIC( QPIXMAP_FILL2 )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPaintDevice * par1 = (const QPaintDevice *) _qtxhb_itemGetPtr(1);
    QPoint * par2 = (QPoint *) _qtxhb_itemGetPtr(2);
    obj->fill ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void fill(const QPaintDevice *device, int xofs, int yofs)
*/
HB_FUNC_STATIC( QPIXMAP_FILL3 )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPaintDevice * par1 = (const QPaintDevice *) _qtxhb_itemGetPtr(1);
    obj->fill ( par1, (int) hb_parni(2), (int) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void fill(const QColor &fillColor = Qt::white)
//[2]void fill(const QPaintDevice *device, const QPoint &ofs)
//[3]void fill(const QPaintDevice *device, int xofs, int yofs)

HB_FUNC_STATIC( QPIXMAP_FILL )
{
  if( ISBETWEEN(0,1) && (ISQCOLOR(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QPIXMAP_FILL1 );
  }
  else if( ISNUMPAR(2) && ISOBJECT(1) && ISQPOINT(2) )
  {
    HB_FUNC_EXEC( QPIXMAP_FILL2 );
  }
  else if( ISNUMPAR(3) && ISOBJECT(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPIXMAP_FILL3 );
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
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBitmap * ptr = new QBitmap( obj->mask (  ) );
    _qt5xhb_createReturnClass ( ptr, "QBITMAP", true );
  }
}


/*
void setMask(const QBitmap &)
*/
HB_FUNC_STATIC( QPIXMAP_SETMASK )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBitmap * par1 = (QBitmap *) _qtxhb_itemGetPtr(1);
    obj->setMask ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal devicePixelRatio() const
*/
HB_FUNC_STATIC( QPIXMAP_DEVICEPIXELRATIO )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->devicePixelRatio (  ) );
  }
}


/*
void setDevicePixelRatio(qreal scaleFactor)
*/
HB_FUNC_STATIC( QPIXMAP_SETDEVICEPIXELRATIO )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setDevicePixelRatio ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool hasAlpha() const
*/
HB_FUNC_STATIC( QPIXMAP_HASALPHA )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasAlpha (  ) );
  }
}


/*
bool hasAlphaChannel() const
*/
HB_FUNC_STATIC( QPIXMAP_HASALPHACHANNEL )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasAlphaChannel (  ) );
  }
}


/*
QBitmap createHeuristicMask(bool clipTight = true) const
*/
HB_FUNC_STATIC( QPIXMAP_CREATEHEURISTICMASK )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBitmap * ptr = new QBitmap( obj->createHeuristicMask ( (bool) ISNIL(1)? true : hb_parl(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QBITMAP", true );
  }
}


/*
QBitmap createMaskFromColor(const QColor &maskColor, Qt::MaskMode mode = Qt::MaskInColor) const
*/
HB_FUNC_STATIC( QPIXMAP_CREATEMASKFROMCOLOR )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qtxhb_itemGetPtr(1) : QColor(hb_parc(1));
    int par2 = ISNIL(2)? (int) Qt::MaskInColor : hb_parni(2);
    QBitmap * ptr = new QBitmap( obj->createMaskFromColor ( par1,  (Qt::MaskMode) par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QBITMAP", true );
  }
}


/*
QPixmap scaled(int w, int h, Qt::AspectRatioMode aspectMode = Qt::IgnoreAspectRatio,Qt::TransformationMode mode = Qt::FastTransformation) const
*/
HB_FUNC_STATIC( QPIXMAP_SCALED1 )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par3 = ISNIL(3)? (int) Qt::IgnoreAspectRatio : hb_parni(3);
    int par4 = ISNIL(4)? (int) Qt::FastTransformation : hb_parni(4);
    QPixmap * ptr = new QPixmap( obj->scaled ( (int) hb_parni(1), (int) hb_parni(2),  (Qt::AspectRatioMode) par3,  (Qt::TransformationMode) par4 ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
QPixmap scaled(const QSize &s, Qt::AspectRatioMode aspectMode = Qt::IgnoreAspectRatio,Qt::TransformationMode mode = Qt::FastTransformation) const
*/
HB_FUNC_STATIC( QPIXMAP_SCALED2 )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) Qt::IgnoreAspectRatio : hb_parni(2);
    int par3 = ISNIL(3)? (int) Qt::FastTransformation : hb_parni(3);
    QPixmap * ptr = new QPixmap( obj->scaled ( *par1,  (Qt::AspectRatioMode) par2,  (Qt::TransformationMode) par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


//[1]QPixmap scaled(int w, int h, Qt::AspectRatioMode aspectMode = Qt::IgnoreAspectRatio,Qt::TransformationMode mode = Qt::FastTransformation) const
//[2]QPixmap scaled(const QSize &s, Qt::AspectRatioMode aspectMode = Qt::IgnoreAspectRatio,Qt::TransformationMode mode = Qt::FastTransformation) const

HB_FUNC_STATIC( QPIXMAP_SCALED )
{
  if( ISBETWEEN(2,4) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPIXMAP_SCALED1 );
  }
  else if( ISBETWEEN(1,3) && ISQSIZE(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPIXMAP_SCALED2 );
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
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::FastTransformation : hb_parni(2);
    QPixmap * ptr = new QPixmap( obj->scaledToWidth ( (int) hb_parni(1),  (Qt::TransformationMode) par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
QPixmap scaledToHeight(int h, Qt::TransformationMode mode = Qt::FastTransformation) const
*/
HB_FUNC_STATIC( QPIXMAP_SCALEDTOHEIGHT )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::FastTransformation : hb_parni(2);
    QPixmap * ptr = new QPixmap( obj->scaledToHeight ( (int) hb_parni(1),  (Qt::TransformationMode) par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
QPixmap transformed(const QMatrix &, Qt::TransformationMode mode = Qt::FastTransformation) const
*/
HB_FUNC_STATIC( QPIXMAP_TRANSFORMED1 )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMatrix * par1 = (QMatrix *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) Qt::FastTransformation : hb_parni(2);
    QPixmap * ptr = new QPixmap( obj->transformed ( *par1,  (Qt::TransformationMode) par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
QPixmap transformed(const QTransform &, Qt::TransformationMode mode = Qt::FastTransformation) const
*/
HB_FUNC_STATIC( QPIXMAP_TRANSFORMED2 )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTransform * par1 = (QTransform *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) Qt::FastTransformation : hb_parni(2);
    QPixmap * ptr = new QPixmap( obj->transformed ( *par1,  (Qt::TransformationMode) par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


//[1]QPixmap transformed(const QMatrix &, Qt::TransformationMode mode = Qt::FastTransformation) const
//[2]QPixmap transformed(const QTransform &, Qt::TransformationMode mode = Qt::FastTransformation) const

HB_FUNC_STATIC( QPIXMAP_TRANSFORMED )
{
  if( ISBETWEEN(1,2) && ISQMATRIX(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPIXMAP_TRANSFORMED1 );
  }
  else if( ISBETWEEN(1,2) && ISQTRANSFORM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPIXMAP_TRANSFORMED2 );
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
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImage * ptr = new QImage( obj->toImage (  ) );
    _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}


/*
bool load(const QString& fileName, const char *format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor)
*/
HB_FUNC_STATIC( QPIXMAP_LOAD )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    const char * par2 = ISNIL(2)? 0 : hb_parc(2);
    int par3 = ISNIL(3)? (int) Qt::AutoColor : hb_parni(3);
    hb_retl( obj->load ( par1,  (const char *) par2,  (Qt::ImageConversionFlags) par3 ) );
  }
}


/*
bool loadFromData(const uchar *buf, uint len, const char* format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor)
*/
HB_FUNC_STATIC( QPIXMAP_LOADFROMDATA1 )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const uchar * par1 = (const uchar *) _qtxhb_itemGetPtr(1);
    const char * par3 = ISNIL(3)? 0 : hb_parc(3);
    int par4 = ISNIL(4)? (int) Qt::AutoColor : hb_parni(4);
    hb_retl( obj->loadFromData ( par1, (uint) hb_parni(2),  (const char *) par3,  (Qt::ImageConversionFlags) par4 ) );
  }
}


/*
bool loadFromData(const QByteArray &data, const char* format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor)
*/
HB_FUNC_STATIC( QPIXMAP_LOADFROMDATA2 )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    const char * par2 = ISNIL(2)? 0 : hb_parc(2);
    int par3 = ISNIL(3)? (int) Qt::AutoColor : hb_parni(3);
    hb_retl( obj->loadFromData ( *par1,  (const char *) par2,  (Qt::ImageConversionFlags) par3 ) );
  }
}


//[1]bool loadFromData(const uchar *buf, uint len, const char* format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor)
//[2]bool loadFromData(const QByteArray &data, const char* format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor)

HB_FUNC_STATIC( QPIXMAP_LOADFROMDATA )
{
  if( ISBETWEEN(2,4) && ISCHAR(1) && ISNUM(2) && (ISCHAR(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPIXMAP_LOADFROMDATA1 );
  }
  else if( ISBETWEEN(2,3) && ISQBYTEARRAY(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPIXMAP_LOADFROMDATA2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool save(const QString& fileName, const char* format = 0, int quality = -1) const
*/
HB_FUNC_STATIC( QPIXMAP_SAVE1 )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    const char * par2 = ISNIL(2)? 0 : hb_parc(2);
    hb_retl( obj->save ( par1,  (const char *) par2, (int) ISNIL(3)? -1 : hb_parni(3) ) );
  }
}


/*
bool save(QIODevice* device, const char* format = 0, int quality = -1) const
*/
HB_FUNC_STATIC( QPIXMAP_SAVE2 )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qtxhb_itemGetPtr(1);
    const char * par2 = ISNIL(2)? 0 : hb_parc(2);
    hb_retl( obj->save ( par1,  (const char *) par2, (int) ISNIL(3)? -1 : hb_parni(3) ) );
  }
}


//[1]bool save(const QString& fileName, const char* format = 0, int quality = -1) const
//[2]bool save(QIODevice* device, const char* format = 0, int quality = -1) const

HB_FUNC_STATIC( QPIXMAP_SAVE )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPIXMAP_SAVE1 );
  }
  else if( ISBETWEEN(1,3) && ISQIODEVICE(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPIXMAP_SAVE2 );
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
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImage * par1 = (QImage *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) Qt::AutoColor : hb_parni(2);
    hb_retl( obj->convertFromImage ( *par1,  (Qt::ImageConversionFlags) par2 ) );
  }
}


/*
QPixmap copy(int x, int y, int width, int height) const
*/
HB_FUNC_STATIC( QPIXMAP_COPY1 )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->copy ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
QPixmap copy(const QRect &rect = QRect()) const
*/
HB_FUNC_STATIC( QPIXMAP_COPY2 )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect par1 = ISNIL(1)? QRect() : *(QRect *) _qtxhb_itemGetPtr(1);
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
    HB_FUNC_EXEC( QPIXMAP_COPY1 );
  }
  else if( ISBETWEEN(0,1) && (ISQRECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QPIXMAP_COPY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void scroll(int dx, int dy, int x, int y, int width, int height, QRegion *exposed = 0)
*/
HB_FUNC_STATIC( QPIXMAP_SCROLL1 )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * par7 = ISNIL(7)? 0 : (QRegion *) _qtxhb_itemGetPtr(7);
    obj->scroll ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4), (int) hb_parni(5), (int) hb_parni(6), par7 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void scroll(int dx, int dy, const QRect &rect, QRegion *exposed = 0)
*/
HB_FUNC_STATIC( QPIXMAP_SCROLL2 )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par3 = (QRect *) _qtxhb_itemGetPtr(3);
    QRegion * par4 = ISNIL(4)? 0 : (QRegion *) _qtxhb_itemGetPtr(4);
    obj->scroll ( (int) hb_parni(1), (int) hb_parni(2), *par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void scroll(int dx, int dy, int x, int y, int width, int height, QRegion *exposed = 0)
//[2]void scroll(int dx, int dy, const QRect &rect, QRegion *exposed = 0)

HB_FUNC_STATIC( QPIXMAP_SCROLL )
{
  if( ISBETWEEN(6,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && (ISQREGION(7)||ISNIL(7)) )
  {
    HB_FUNC_EXEC( QPIXMAP_SCROLL1 );
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISQRECT(3) && (ISQREGION(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPIXMAP_SCROLL2 );
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
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->cacheKey (  ) );
  }
}


/*
bool isDetached() const
*/
HB_FUNC_STATIC( QPIXMAP_ISDETACHED )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isDetached (  ) );
  }
}


/*
void detach()
*/
HB_FUNC_STATIC( QPIXMAP_DETACH )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->detach (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isQBitmap() const
*/
HB_FUNC_STATIC( QPIXMAP_ISQBITMAP )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isQBitmap (  ) );
  }
}


/*
QPaintEngine *paintEngine() const
*/
HB_FUNC_STATIC( QPIXMAP_PAINTENGINE )
{
  QPixmap * obj = (QPixmap *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPaintEngine * ptr = obj->paintEngine (  );
    _qt5xhb_createReturnClass ( ptr, "QPAINTENGINE" );
  }
}



/*
static int defaultDepth()
*/
HB_FUNC_STATIC( QPIXMAP_DEFAULTDEPTH )
{
  hb_retni( QPixmap::defaultDepth (  ) );
}


/*
static QPixmap grabWindow(WId, int x=0, int y=0, int w=-1, int h=-1)
*/
HB_FUNC_STATIC( QPIXMAP_GRABWINDOW )
{
  WId par1 = (WId) hb_parptr(1);
  QPixmap * ptr = new QPixmap( QPixmap::grabWindow ( par1, (int) ISNIL(2)? 0 : hb_parni(2), (int) ISNIL(3)? 0 : hb_parni(3), (int) ISNIL(4)? -1 : hb_parni(4), (int) ISNIL(5)? -1 : hb_parni(5) ) );
  _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
}


/*
static QPixmap grabWidget(QObject *widget, const QRect &rect)
*/
HB_FUNC_STATIC( QPIXMAP_GRABWIDGET1 )
{
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QRect * par2 = (QRect *) _qtxhb_itemGetPtr(2);
  QPixmap * ptr = new QPixmap( QPixmap::grabWidget ( par1, *par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
}

/*
static QPixmap grabWidget(QObject *widget, int x=0, int y=0, int w=-1, int h=-1)
*/
HB_FUNC_STATIC( QPIXMAP_GRABWIDGET2 )
{
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QPixmap * ptr = new QPixmap( QPixmap::grabWidget ( par1, (int) ISNIL(2)? 0 : hb_parni(2), (int) ISNIL(3)? 0 : hb_parni(3), (int) ISNIL(4)? -1 : hb_parni(4), (int) ISNIL(5)? -1 : hb_parni(5) ) );
  _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
}


//[1]static QPixmap grabWidget(QObject *widget, const QRect &rect)
//[2]static QPixmap grabWidget(QObject *widget, int x=0, int y=0, int w=-1, int h=-1)

HB_FUNC_STATIC( QPIXMAP_GRABWIDGET )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISQRECT(2) )
  {
    HB_FUNC_EXEC( QPIXMAP_GRABWIDGET1 );
  }
  else if( ISBETWEEN(1,5) && ISQOBJECT(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QPIXMAP_GRABWIDGET2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QMatrix trueMatrix(const QMatrix &m, int w, int h)
*/
HB_FUNC_STATIC( QPIXMAP_TRUEMATRIX1 )
{
  QMatrix * par1 = (QMatrix *) _qtxhb_itemGetPtr(1);
  QMatrix * ptr = new QMatrix( QPixmap::trueMatrix ( *par1, (int) hb_parni(2), (int) hb_parni(3) ) );
  _qt5xhb_createReturnClass ( ptr, "QMATRIX" );
}

/*
static QTransform trueMatrix(const QTransform &m, int w, int h)
*/
HB_FUNC_STATIC( QPIXMAP_TRUEMATRIX2 )
{
  QTransform * par1 = (QTransform *) _qtxhb_itemGetPtr(1);
  QTransform * ptr = new QTransform( QPixmap::trueMatrix ( *par1, (int) hb_parni(2), (int) hb_parni(3) ) );
  _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
}


//[1]static QMatrix trueMatrix(const QMatrix &m, int w, int h)
//[2]static QTransform trueMatrix(const QTransform &m, int w, int h)

HB_FUNC_STATIC( QPIXMAP_TRUEMATRIX )
{
  if( ISNUMPAR(3) && ISQMATRIX(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPIXMAP_TRUEMATRIX1 );
  }
  else if( ISNUMPAR(3) && ISQTRANSFORM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPIXMAP_TRUEMATRIX2 );
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
  QImage * par1 = (QImage *) _qtxhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) Qt::AutoColor : hb_parni(2);
  QPixmap * ptr = new QPixmap( QPixmap::fromImage ( *par1,  (Qt::ImageConversionFlags) par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
}


/*
static QPixmap fromImageReader(QImageReader *imageReader, Qt::ImageConversionFlags flags = Qt::AutoColor)
*/
HB_FUNC_STATIC( QPIXMAP_FROMIMAGEREADER )
{
  QImageReader * par1 = (QImageReader *) _qtxhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) Qt::AutoColor : hb_parni(2);
  QPixmap * ptr = new QPixmap( QPixmap::fromImageReader ( par1,  (Qt::ImageConversionFlags) par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
}



#pragma ENDDUMP
