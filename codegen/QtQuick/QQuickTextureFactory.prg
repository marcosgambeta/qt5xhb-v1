$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSGTEXTURE
REQUEST QIMAGE
REQUEST QSIZE
#endif

CLASS QQuickTextureFactory INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD createTexture
   METHOD image
   METHOD textureByteCount
   METHOD textureSize

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QSGTexture * createTexture(QQuickWindow * window) const = 0
*/
HB_FUNC_STATIC( QQUICKTEXTUREFACTORY_CREATETEXTURE )
{
  QQuickTextureFactory * obj = (QQuickTextureFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQuickWindow * par1 = (QQuickWindow *) _qt5xhb_itemGetPtr(1);
    QSGTexture * ptr = obj->createTexture ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QSGTEXTURE" );
  }
}


/*
virtual QImage image() const
*/
HB_FUNC_STATIC( QQUICKTEXTUREFACTORY_IMAGE )
{
  QQuickTextureFactory * obj = (QQuickTextureFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImage * ptr = new QImage( obj->image () );
    _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}


/*
virtual int textureByteCount() const = 0
*/
HB_FUNC_STATIC( QQUICKTEXTUREFACTORY_TEXTUREBYTECOUNT )
{
  QQuickTextureFactory * obj = (QQuickTextureFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->textureByteCount () );
  }
}


/*
virtual QSize textureSize() const = 0
*/
HB_FUNC_STATIC( QQUICKTEXTUREFACTORY_TEXTURESIZE )
{
  QQuickTextureFactory * obj = (QQuickTextureFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->textureSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}



#pragma ENDDUMP
