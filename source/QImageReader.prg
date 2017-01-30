/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QCOLOR
REQUEST QRECT
REQUEST QIODEVICE
REQUEST QBYTEARRAY
REQUEST QIMAGE
REQUEST QSIZE

CLASS QImageReader

   DATA pointer
   DATA class_id INIT Class_Id_QImageReader
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD autoDetectImageFormat
   METHOD backgroundColor
   METHOD canRead
   METHOD clipRect
   METHOD currentImageNumber
   METHOD currentImageRect
   METHOD decideFormatFromContent
   METHOD device
   METHOD error
   METHOD errorString
   METHOD fileName
   METHOD format
   METHOD imageCount
   METHOD imageFormat1
   METHOD jumpToImage
   METHOD jumpToNextImage
   METHOD loopCount
   METHOD nextImageDelay
   METHOD quality
   METHOD read1
   METHOD read2
   METHOD read
   METHOD scaledClipRect
   METHOD scaledSize
   METHOD setAutoDetectImageFormat
   METHOD setBackgroundColor
   METHOD setClipRect
   METHOD setDecideFormatFromContent
   METHOD setDevice
   METHOD setFileName
   METHOD setFormat
   METHOD setQuality
   METHOD setScaledClipRect
   METHOD setScaledSize
   METHOD size
   METHOD supportsAnimation
   METHOD supportsOption
   METHOD text
   METHOD textKeys
   METHOD imageFormat2
   METHOD imageFormat3
   METHOD imageFormat
   METHOD supportedImageFormats
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QImageReader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QImageReader>
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QImageReader>
#endif
#endif

#include <QColor>

/*
QImageReader ()
*/
HB_FUNC_STATIC( QIMAGEREADER_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QImageReader * o = new QImageReader (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QImageReader *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QImageReader ( QIODevice * device, const QByteArray & format = QByteArray() )
*/
HB_FUNC_STATIC( QIMAGEREADER_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QIODevice * par1 = (QIODevice *) _qtxhb_itemGetPtr(1);
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) _qtxhb_itemGetPtr(2);
  QImageReader * o = new QImageReader ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QImageReader *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QImageReader ( const QString & fileName, const QByteArray & format = QByteArray() )
*/
HB_FUNC_STATIC( QIMAGEREADER_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) _qtxhb_itemGetPtr(2);
  QImageReader * o = new QImageReader ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QImageReader *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QImageReader ()
//[2]QImageReader ( QIODevice * device, const QByteArray & format = QByteArray() )
//[3]QImageReader ( const QString & fileName, const QByteArray & format = QByteArray() )

HB_FUNC_STATIC( QIMAGEREADER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QIMAGEREADER_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQBYTEARRAY(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QIMAGEREADER_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQBYTEARRAY(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QIMAGEREADER_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QIMAGEREADER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QImageReader * obj = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool autoDetectImageFormat () const
*/
HB_FUNC_STATIC( QIMAGEREADER_AUTODETECTIMAGEFORMAT )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->autoDetectImageFormat (  ) );
  }
}


/*
QColor backgroundColor () const
*/
HB_FUNC_STATIC( QIMAGEREADER_BACKGROUNDCOLOR )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->backgroundColor (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
bool canRead () const
*/
HB_FUNC_STATIC( QIMAGEREADER_CANREAD )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->canRead (  ) );
  }
}


/*
QRect clipRect () const
*/
HB_FUNC_STATIC( QIMAGEREADER_CLIPRECT )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->clipRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
int currentImageNumber () const
*/
HB_FUNC_STATIC( QIMAGEREADER_CURRENTIMAGENUMBER )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->currentImageNumber (  ) );
  }
}


/*
QRect currentImageRect () const
*/
HB_FUNC_STATIC( QIMAGEREADER_CURRENTIMAGERECT )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->currentImageRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
bool decideFormatFromContent () const
*/
HB_FUNC_STATIC( QIMAGEREADER_DECIDEFORMATFROMCONTENT )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->decideFormatFromContent (  ) );
  }
}


/*
QIODevice * device () const
*/
HB_FUNC_STATIC( QIMAGEREADER_DEVICE )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * ptr = obj->device (  );
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
ImageReaderError error () const
*/
HB_FUNC_STATIC( QIMAGEREADER_ERROR )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->error (  );
    hb_retni( i );
  }
}


/*
QString errorString () const
*/
HB_FUNC_STATIC( QIMAGEREADER_ERRORSTRING )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}


/*
QString fileName () const
*/
HB_FUNC_STATIC( QIMAGEREADER_FILENAME )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->fileName (  ).toLatin1().data() );
  }
}


/*
QByteArray format () const
*/
HB_FUNC_STATIC( QIMAGEREADER_FORMAT )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->format (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
int imageCount () const
*/
HB_FUNC_STATIC( QIMAGEREADER_IMAGECOUNT )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->imageCount (  ) );
  }
}


/*
QImage::Format imageFormat () const
*/
HB_FUNC_STATIC( QIMAGEREADER_IMAGEFORMAT1 )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->imageFormat (  );
    hb_retni( i );
  }
}


/*
bool jumpToImage ( int imageNumber )
*/
HB_FUNC_STATIC( QIMAGEREADER_JUMPTOIMAGE )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->jumpToImage ( (int) hb_parni(1) ) );
  }
}


/*
bool jumpToNextImage ()
*/
HB_FUNC_STATIC( QIMAGEREADER_JUMPTONEXTIMAGE )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->jumpToNextImage (  ) );
  }
}


/*
int loopCount () const
*/
HB_FUNC_STATIC( QIMAGEREADER_LOOPCOUNT )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->loopCount (  ) );
  }
}


/*
int nextImageDelay () const
*/
HB_FUNC_STATIC( QIMAGEREADER_NEXTIMAGEDELAY )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->nextImageDelay (  ) );
  }
}


/*
int quality () const
*/
HB_FUNC_STATIC( QIMAGEREADER_QUALITY )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->quality (  ) );
  }
}


/*
QImage read ()
*/
HB_FUNC_STATIC( QIMAGEREADER_READ1 )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImage * ptr = new QImage( obj->read (  ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}


/*
bool read ( QImage * image )
*/
HB_FUNC_STATIC( QIMAGEREADER_READ2 )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImage * par1 = (QImage *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->read ( par1 ) );
  }
}


//[1]QImage read ()
//[2]bool read ( QImage * image )

HB_FUNC_STATIC( QIMAGEREADER_READ )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QIMAGEREADER_READ1 );
  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    HB_FUNC_EXEC( QIMAGEREADER_READ2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect scaledClipRect () const
*/
HB_FUNC_STATIC( QIMAGEREADER_SCALEDCLIPRECT )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->scaledClipRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QSize scaledSize () const
*/
HB_FUNC_STATIC( QIMAGEREADER_SCALEDSIZE )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->scaledSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void setAutoDetectImageFormat ( bool enabled )
*/
HB_FUNC_STATIC( QIMAGEREADER_SETAUTODETECTIMAGEFORMAT )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoDetectImageFormat ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBackgroundColor ( const QColor & color )
*/
HB_FUNC_STATIC( QIMAGEREADER_SETBACKGROUNDCOLOR )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qtxhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->setBackgroundColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setClipRect ( const QRect & rect )
*/
HB_FUNC_STATIC( QIMAGEREADER_SETCLIPRECT )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    obj->setClipRect ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDecideFormatFromContent ( bool ignored )
*/
HB_FUNC_STATIC( QIMAGEREADER_SETDECIDEFORMATFROMCONTENT )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDecideFormatFromContent ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDevice ( QIODevice * device )
*/
HB_FUNC_STATIC( QIMAGEREADER_SETDEVICE )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qtxhb_itemGetPtr(1);
    obj->setDevice ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFileName ( const QString & fileName )
*/
HB_FUNC_STATIC( QIMAGEREADER_SETFILENAME )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setFileName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFormat ( const QByteArray & format )
*/
HB_FUNC_STATIC( QIMAGEREADER_SETFORMAT )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    obj->setFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setQuality ( int quality )
*/
HB_FUNC_STATIC( QIMAGEREADER_SETQUALITY )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setQuality ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScaledClipRect ( const QRect & rect )
*/
HB_FUNC_STATIC( QIMAGEREADER_SETSCALEDCLIPRECT )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    obj->setScaledClipRect ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScaledSize ( const QSize & size )
*/
HB_FUNC_STATIC( QIMAGEREADER_SETSCALEDSIZE )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
    obj->setScaledSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize size () const
*/
HB_FUNC_STATIC( QIMAGEREADER_SIZE )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->size (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
bool supportsAnimation () const
*/
HB_FUNC_STATIC( QIMAGEREADER_SUPPORTSANIMATION )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->supportsAnimation (  ) );
  }
}


/*
bool supportsOption ( QImageIOHandler::ImageOption option ) const
*/
HB_FUNC_STATIC( QIMAGEREADER_SUPPORTSOPTION )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->supportsOption (  (QImageIOHandler::ImageOption) par1 ) );
  }
}


/*
QString text ( const QString & key ) const
*/
HB_FUNC_STATIC( QIMAGEREADER_TEXT )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->text ( par1 ).toLatin1().data() );
  }
}


/*
QStringList textKeys () const
*/
HB_FUNC_STATIC( QIMAGEREADER_TEXTKEYS )
{
  QImageReader * obj = (QImageReader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->textKeys (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
static QByteArray imageFormat ( const QString & fileName )
*/
HB_FUNC_STATIC( QIMAGEREADER_IMAGEFORMAT2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QByteArray * ptr = new QByteArray( QImageReader::imageFormat ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}


/*
static QByteArray imageFormat ( QIODevice * device )
*/
HB_FUNC_STATIC( QIMAGEREADER_IMAGEFORMAT3 )
{
  QIODevice * par1 = (QIODevice *) _qtxhb_itemGetPtr(1);
  QByteArray * ptr = new QByteArray( QImageReader::imageFormat ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}


//[1]QImage::Format imageFormat () const
//[2]QByteArray imageFormat ( const QString & fileName )
//[3]QByteArray imageFormat ( QIODevice * device )

HB_FUNC_STATIC( QIMAGEREADER_IMAGEFORMAT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QIMAGEREADER_IMAGEFORMAT1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QIMAGEREADER_IMAGEFORMAT2 );
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QIMAGEREADER_IMAGEFORMAT3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QList<QByteArray> supportedImageFormats ()
*/
HB_FUNC_STATIC( QIMAGEREADER_SUPPORTEDIMAGEFORMATS )
{
  QList<QByteArray> list = QImageReader::supportedImageFormats (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QBYTEARRAY" );
  #else
  pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}



HB_FUNC_STATIC( QIMAGEREADER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QIMAGEREADER_NEWFROMOBJECT )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISOBJECT(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QIMAGEREADER_NEWFROM );
}

HB_FUNC_STATIC( QIMAGEREADER_NEWFROMPOINTER )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISPOINTER(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QIMAGEREADER_NEWFROM );
}

HB_FUNC_STATIC( QIMAGEREADER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QIMAGEREADER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
