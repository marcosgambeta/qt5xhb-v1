/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QPIXMAP
REQUEST QQUICKTEXTUREFACTORY
#endif

CLASS QQuickImageProvider INHERIT QQmlImageProviderBase

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD flags
   METHOD imageType
   METHOD requestImage
   METHOD requestPixmap
   METHOD requestTexture

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQuickImageProvider
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQuickImageProvider>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQuickImageProvider>
#endif

/*
QQuickImageProvider(ImageType type, Flags flags = 0)
*/
HB_FUNC_STATIC( QQUICKIMAGEPROVIDER_NEW )
{
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QQuickImageProvider * o = new QQuickImageProvider ( (QQmlImageProviderBase::ImageType) hb_parni(1), (QQmlImageProviderBase::Flags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QQUICKIMAGEPROVIDER_DELETE )
{
  QQuickImageProvider * obj = (QQuickImageProvider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual Flags flags() const = 0
*/
HB_FUNC_STATIC( QQUICKIMAGEPROVIDER_FLAGS )
{
  QQuickImageProvider * obj = (QQuickImageProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->flags () );
  }
}


/*
virtual ImageType imageType() const = 0
*/
HB_FUNC_STATIC( QQUICKIMAGEPROVIDER_IMAGETYPE )
{
  QQuickImageProvider * obj = (QQuickImageProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->imageType () );
  }
}


/*
virtual QImage requestImage(const QString & id, QSize * size, const QSize & requestedSize)
*/
HB_FUNC_STATIC( QQUICKIMAGEPROVIDER_REQUESTIMAGE )
{
  QQuickImageProvider * obj = (QQuickImageProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par2 = (QSize *) _qt5xhb_itemGetPtr(2);
    QImage * ptr = new QImage( obj->requestImage ( PQSTRING(1), par2, *PQSIZE(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}


/*
virtual QPixmap requestPixmap(const QString & id, QSize * size, const QSize & requestedSize)
*/
HB_FUNC_STATIC( QQUICKIMAGEPROVIDER_REQUESTPIXMAP )
{
  QQuickImageProvider * obj = (QQuickImageProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par2 = (QSize *) _qt5xhb_itemGetPtr(2);
    QPixmap * ptr = new QPixmap( obj->requestPixmap ( PQSTRING(1), par2, *PQSIZE(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
virtual QQuickTextureFactory * requestTexture(const QString & id, QSize * size, const QSize & requestedSize)
*/
HB_FUNC_STATIC( QQUICKIMAGEPROVIDER_REQUESTTEXTURE )
{
  QQuickImageProvider * obj = (QQuickImageProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par2 = (QSize *) _qt5xhb_itemGetPtr(2);
    QQuickTextureFactory * ptr = obj->requestTexture ( PQSTRING(1), par2, *PQSIZE(3) );
    _qt5xhb_createReturnClass ( ptr, "QQUICKTEXTUREFACTORY" );
  }
}



#pragma ENDDUMP
