/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QVARIANT
REQUEST QBYTEARRAY
REQUEST QRECT
#endif

CLASS QVideoSurfaceFormat

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD frameHeight
   METHOD frameRate
   METHOD frameSize
   METHOD frameWidth
   METHOD handleType
   METHOD isValid
   METHOD pixelAspectRatio
   METHOD pixelFormat
   METHOD property
   METHOD propertyNames
   METHOD scanLineDirection
   METHOD setFrameRate
   METHOD setFrameSize1
   METHOD setFrameSize2
   METHOD setFrameSize
   METHOD setPixelAspectRatio1
   METHOD setPixelAspectRatio2
   METHOD setPixelAspectRatio
   METHOD setProperty
   METHOD setScanLineDirection
   METHOD setViewport
   METHOD setYCbCrColorSpace
   METHOD sizeHint
   METHOD viewport
   METHOD yCbCrColorSpace

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVideoSurfaceFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QVideoSurfaceFormat>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QVideoSurfaceFormat>
#endif

#include <QVariant>

/*
QVideoSurfaceFormat ()
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_NEW1 )
{
  QVideoSurfaceFormat * o = new QVideoSurfaceFormat ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVideoSurfaceFormat ( const QSize & size, QVideoFrame::PixelFormat format, QAbstractVideoBuffer::HandleType type = QAbstractVideoBuffer::NoHandle )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_NEW2 )
{
  int par2 = hb_parni(2);
  int par3 = ISNIL(3)? (int) QAbstractVideoBuffer::NoHandle : hb_parni(3);
  QVideoSurfaceFormat * o = new QVideoSurfaceFormat ( *PQSIZE(1), (QVideoFrame::PixelFormat) par2, (QAbstractVideoBuffer::HandleType) par3 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVideoSurfaceFormat ( const QVideoSurfaceFormat & other )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_NEW3 )
{
  QVideoSurfaceFormat * par1 = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtr(1);
  QVideoSurfaceFormat * o = new QVideoSurfaceFormat ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QVideoSurfaceFormat ()
//[2]QVideoSurfaceFormat ( const QSize & size, QVideoFrame::PixelFormat format, QAbstractVideoBuffer::HandleType type = QAbstractVideoBuffer::NoHandle )
//[3]QVideoSurfaceFormat ( const QVideoSurfaceFormat & other )

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QVIDEOSURFACEFORMAT_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISQSIZE(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QVIDEOSURFACEFORMAT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQVIDEOSURFACEFORMAT(1) )
  {
    HB_FUNC_EXEC( QVIDEOSURFACEFORMAT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_DELETE )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int frameHeight () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_FRAMEHEIGHT )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->frameHeight () );
  }
}


/*
qreal frameRate () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_FRAMERATE )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->frameRate () );
  }
}


/*
QSize frameSize () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_FRAMESIZE )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->frameSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
int frameWidth () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_FRAMEWIDTH )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->frameWidth () );
  }
}


/*
QAbstractVideoBuffer::HandleType handleType () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_HANDLETYPE )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->handleType () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_ISVALID )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid () );
  }
}


/*
QSize pixelAspectRatio () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_PIXELASPECTRATIO )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->pixelAspectRatio () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QVideoFrame::PixelFormat pixelFormat () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_PIXELFORMAT )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->pixelFormat () );
  }
}


/*
QVariant property ( const char * name ) const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_PROPERTY )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->property ( (const char *) hb_parc(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QList<QByteArray> propertyNames () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_PROPERTYNAMES )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QByteArray> list = obj->propertyNames ();
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
}


/*
Direction scanLineDirection () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SCANLINEDIRECTION )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->scanLineDirection () );
  }
}


/*
void setFrameRate ( qreal rate )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETFRAMERATE )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFrameRate ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFrameSize ( const QSize & size )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETFRAMESIZE1 )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFrameSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFrameSize ( int width, int height )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETFRAMESIZE2 )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFrameSize ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setFrameSize ( const QSize & size )
//[2]void setFrameSize ( int width, int height )

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETFRAMESIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QVIDEOSURFACEFORMAT_SETFRAMESIZE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QVIDEOSURFACEFORMAT_SETFRAMESIZE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPixelAspectRatio ( const QSize & ratio )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETPIXELASPECTRATIO1 )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPixelAspectRatio ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPixelAspectRatio ( int horizontal, int vertical )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETPIXELASPECTRATIO2 )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPixelAspectRatio ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setPixelAspectRatio ( const QSize & ratio )
//[2]void setPixelAspectRatio ( int horizontal, int vertical )

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETPIXELASPECTRATIO )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QVIDEOSURFACEFORMAT_SETPIXELASPECTRATIO1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QVIDEOSURFACEFORMAT_SETPIXELASPECTRATIO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setProperty ( const char * name, const QVariant & value )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETPROPERTY )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setProperty ( (const char *) hb_parc(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScanLineDirection ( Direction direction )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETSCANLINEDIRECTION )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setScanLineDirection ( (QVideoSurfaceFormat::Direction) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setViewport ( const QRect & viewport )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETVIEWPORT )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setViewport ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setYCbCrColorSpace ( YCbCrColorSpace space )
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETYCBCRCOLORSPACE )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setYCbCrColorSpace ( (QVideoSurfaceFormat::YCbCrColorSpace) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SIZEHINT )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QRect viewport () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_VIEWPORT )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->viewport () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
YCbCrColorSpace yCbCrColorSpace () const
*/
HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_YCBCRCOLORSPACE )
{
  QVideoSurfaceFormat * obj = (QVideoSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->yCbCrColorSpace () );
  }
}



HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_NEWFROM )
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

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QVIDEOSURFACEFORMAT_NEWFROM );
}

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QVIDEOSURFACEFORMAT_NEWFROM );
}

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QVIDEOSURFACEFORMAT_SETSELFDESTRUCTION )
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