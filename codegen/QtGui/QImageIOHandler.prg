$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QIODEVICE
REQUEST QBYTEARRAY
REQUEST QVARIANT
#endif

CLASS QImageIOHandler

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD canRead
   METHOD currentImageNumber
   METHOD currentImageRect
   METHOD device
   METHOD format
   METHOD imageCount
   METHOD jumpToImage
   METHOD jumpToNextImage
   METHOD loopCount
   METHOD nextImageDelay
   METHOD option
   METHOD read
   METHOD setDevice
   METHOD setFormat
   METHOD setOption
   METHOD supportsOption
   METHOD write

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

#include <QRect>
#include <QVariant>

$deleteMethod

/*
virtual bool canRead () const = 0
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_CANREAD )
{
  QImageIOHandler * obj = (QImageIOHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->canRead () );
  }
}

/*
virtual int currentImageNumber () const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_CURRENTIMAGENUMBER )
{
  QImageIOHandler * obj = (QImageIOHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->currentImageNumber () );
  }
}

/*
virtual QRect currentImageRect () const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_CURRENTIMAGERECT )
{
  QImageIOHandler * obj = (QImageIOHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->currentImageRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QIODevice * device () const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_DEVICE )
{
  QImageIOHandler * obj = (QImageIOHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIODevice * ptr = obj->device ();
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}

/*
QByteArray format () const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_FORMAT )
{
  QImageIOHandler * obj = (QImageIOHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
virtual int imageCount () const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_IMAGECOUNT )
{
  QImageIOHandler * obj = (QImageIOHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->imageCount () );
  }
}

/*
virtual bool jumpToImage ( int imageNumber )
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_JUMPTOIMAGE )
{
  QImageIOHandler * obj = (QImageIOHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->jumpToImage ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool jumpToNextImage ()
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_JUMPTONEXTIMAGE )
{
  QImageIOHandler * obj = (QImageIOHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->jumpToNextImage () );
  }
}

/*
virtual int loopCount () const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_LOOPCOUNT )
{
  QImageIOHandler * obj = (QImageIOHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->loopCount () );
  }
}

/*
virtual int nextImageDelay () const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_NEXTIMAGEDELAY )
{
  QImageIOHandler * obj = (QImageIOHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->nextImageDelay () );
  }
}

/*
virtual QVariant option ( ImageOption option ) const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_OPTION )
{
  QImageIOHandler * obj = (QImageIOHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QVariant * ptr = new QVariant( obj->option ( (QImageIOHandler::ImageOption) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool read ( QImage * image ) = 0
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_READ )
{
  QImageIOHandler * obj = (QImageIOHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQIMAGE(1) )
    {
      QImage * par1 = (QImage *) _qt5xhb_itemGetPtr(1);
      RBOOL( obj->read ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setDevice ( QIODevice * device )
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_SETDEVICE )
{
  QImageIOHandler * obj = (QImageIOHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQIODEVICE(1) )
    {
      obj->setDevice ( PQIODEVICE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFormat ( const QByteArray & format )
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_SETFORMAT )
{
  QImageIOHandler * obj = (QImageIOHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBYTEARRAY(1) )
    {
      obj->setFormat ( *PQBYTEARRAY(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setOption ( ImageOption option, const QVariant & value )
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_SETOPTION )
{
  QImageIOHandler * obj = (QImageIOHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQVARIANT(2) )
    {
      obj->setOption ( (QImageIOHandler::ImageOption) hb_parni(1), *PQVARIANT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool supportsOption ( ImageOption option ) const
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_SUPPORTSOPTION )
{
  QImageIOHandler * obj = (QImageIOHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->supportsOption ( (QImageIOHandler::ImageOption) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool write ( const QImage & image )
*/
HB_FUNC_STATIC( QIMAGEIOHANDLER_WRITE )
{
  QImageIOHandler * obj = (QImageIOHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQIMAGE(1) )
    {
      RBOOL( obj->write ( *PQIMAGE(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

$extraMethods

#pragma ENDDUMP
