/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QOpenGLTexture

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD create
   METHOD destroy
   METHOD isCreated
   METHOD textureId
   METHOD bind1
   METHOD bind2
   METHOD bind
   METHOD release1
   METHOD release2
   METHOD release
   METHOD isBound1
   METHOD isBound2
   METHOD isBound
   METHOD setFormat
   METHOD format
   METHOD setSize
   METHOD width
   METHOD height
   METHOD depth
   METHOD setMipLevels
   METHOD mipLevels
   METHOD maximumMipLevels
   METHOD setLayers
   METHOD layers
   METHOD faces
   METHOD allocateStorage
   METHOD isStorageAllocated
   METHOD createTextureView
   METHOD isTextureView
   METHOD setData1
   METHOD setData2
   METHOD setData3
   METHOD setData4
   METHOD setData5
   METHOD setData
   METHOD setCompressedData1
   METHOD setCompressedData2
   METHOD setCompressedData3
   METHOD setCompressedData4
   METHOD setCompressedData
   METHOD setMipBaseLevel
   METHOD mipBaseLevel
   METHOD setMipMaxLevel
   METHOD mipMaxLevel
   METHOD setMipLevelRange
   METHOD setAutoMipMapGenerationEnabled
   METHOD isAutoMipMapGenerationEnabled
   METHOD generateMipMaps1
   METHOD generateMipMaps2
   METHOD generateMipMaps
   METHOD setSwizzleMask1
   METHOD setSwizzleMask2
   METHOD setSwizzleMask
   METHOD swizzleMask
   METHOD setDepthStencilMode
   METHOD depthStencilMode
   METHOD setMinificationFilter
   METHOD minificationFilter
   METHOD setMagnificationFilter
   METHOD magnificationFilter
   METHOD setMinMagFilters
   METHOD setMaximumAnisotropy
   METHOD maximumAnisotropy
   METHOD setWrapMode1
   METHOD setWrapMode2
   METHOD setWrapMode
   METHOD wrapMode
   METHOD setBorderColor1
   METHOD setBorderColor2
   METHOD setBorderColor3
   METHOD setBorderColor4
   METHOD setBorderColor
   METHOD borderColor1
   METHOD borderColor2
   METHOD borderColor3
   METHOD borderColor4
   METHOD borderColor
   METHOD setMinimumLevelOfDetail
   METHOD minimumLevelOfDetail
   METHOD setMaximumLevelOfDetail
   METHOD maximumLevelOfDetail
   METHOD setLevelOfDetailRange
   METHOD setLevelofDetailBias
   METHOD levelofDetailBias
   METHOD boundTextureId1
   METHOD boundTextureId2
   METHOD boundTextureId
   METHOD hasFeature

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOpenGLTexture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QOpenGLTexture>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QOpenGLTexture>
#endif
#endif

#include <QColor>

/*
QOpenGLTexture(Target target)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * o = new QOpenGLTexture ( (QOpenGLTexture::Target) hb_parni(1) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

/*
QOpenGLTexture(const QImage& image, MipMapGeneration genMipMaps = GenerateMipMaps)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  int par2 = ISNIL(2)? (int) QOpenGLTexture::GenerateMipMaps : hb_parni(2);
  QOpenGLTexture * o = new QOpenGLTexture ( *PQIMAGE(1), (QOpenGLTexture::MipMapGeneration) par2 );
  _qt5xhb_returnNewObject( o, false );
#endif
}


//[1]QOpenGLTexture(Target target)
//[2]QOpenGLTexture(const QImage& image, MipMapGeneration genMipMaps = GenerateMipMaps)

HB_FUNC_STATIC( QOPENGLTEXTURE_NEW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQIMAGE(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QOPENGLTEXTURE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool create()
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_CREATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->create () );
  }
#endif
}


/*
void destroy()
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_DESTROY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->destroy ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isCreated() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_ISCREATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isCreated () );
  }
#endif
}


/*
GLuint textureId() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_TEXTUREID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RGLUINT( obj->textureId () );
  }
#endif
}


/*
void bind()
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_BIND1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->bind ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void bind(uint unit, TextureUnitReset reset = DontResetTextureUnit)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_BIND2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QOpenGLTexture::DontResetTextureUnit : hb_parni(2);
    obj->bind ( (uint) hb_parni(1), (QOpenGLTexture::TextureUnitReset) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


//[1]void bind()
//[2]void bind(uint unit, TextureUnitReset reset = DontResetTextureUnit)

HB_FUNC_STATIC( QOPENGLTEXTURE_BIND )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_BIND1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_BIND2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void release()
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_RELEASE1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->release ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void release(uint unit, TextureUnitReset reset = DontResetTextureUnit)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_RELEASE2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QOpenGLTexture::DontResetTextureUnit : hb_parni(2);
    obj->release ( (uint) hb_parni(1), (QOpenGLTexture::TextureUnitReset) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


//[1]void release()
//[2]void release(uint unit, TextureUnitReset reset = DontResetTextureUnit)

HB_FUNC_STATIC( QOPENGLTEXTURE_RELEASE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_RELEASE1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_RELEASE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isBound() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_ISBOUND1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isBound () );
  }
#endif
}

/*
bool isBound(uint unit)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_ISBOUND2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isBound ( (uint) hb_parni(1) ) );
  }
#endif
}


//[1]bool isBound() const
//[2]bool isBound(uint unit)

HB_FUNC_STATIC( QOPENGLTEXTURE_ISBOUND )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_ISBOUND1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_ISBOUND2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setFormat(TextureFormat format)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFormat ( (QOpenGLTexture::TextureFormat) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
TextureFormat format() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_FORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->format () );
  }
#endif
}


/*
void setSize(int width, int height = 1, int depth = 1)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSize ( PINT(1), OPINT(2,1), OPINT(3,1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int width() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_WIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->width () );
  }
#endif
}


/*
int height() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_HEIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->height () );
  }
#endif
}


/*
int depth() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_DEPTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->depth () );
  }
#endif
}


/*
void setMipLevels(int levels)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETMIPLEVELS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMipLevels ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int mipLevels() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_MIPLEVELS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->mipLevels () );
  }
#endif
}


/*
int maximumMipLevels() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_MAXIMUMMIPLEVELS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->maximumMipLevels () );
  }
#endif
}


/*
void setLayers(int layers)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETLAYERS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLayers ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int layers() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_LAYERS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->layers () );
  }
#endif
}


/*
int faces() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_FACES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->faces () );
  }
#endif
}


/*
void allocateStorage()
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_ALLOCATESTORAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->allocateStorage ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isStorageAllocated() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_ISSTORAGEALLOCATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isStorageAllocated () );
  }
#endif
}


/*
QOpenGLTexture *createTextureView(Target target,TextureFormat viewFormat,int minimumMipmapLevel, int maximumMipmapLevel,int minimumLayer, int maximumLayer) const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_CREATETEXTUREVIEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLTexture * ptr = obj->createTextureView ( (QOpenGLTexture::Target) hb_parni(1), (QOpenGLTexture::TextureFormat) hb_parni(2), PINT(3), PINT(4), PINT(5), PINT(6) );
    _qt5xhb_createReturnClass ( ptr, "QOPENGLTEXTURE" );
  }
#endif
}


/*
bool isTextureView() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_ISTEXTUREVIEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isTextureView () );
  }
#endif
}


/*
void setData(int mipLevel, int layer, CubeMapFace cubeFace,PixelFormat sourceFormat, PixelType sourceType,void *data, const QOpenGLPixelTransferOptions * const options = 0)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETDATA1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    void * par6 = (void *) hb_parptr(6);
    const QOpenGLPixelTransferOptions * par7 = ISNIL(7)? 0 : (const QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtr(7);
    obj->setData ( PINT(1), PINT(2), (QOpenGLTexture::CubeMapFace) hb_parni(3), (QOpenGLTexture::PixelFormat) hb_parni(4), (QOpenGLTexture::PixelType) hb_parni(5), par6, par7 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setData(int mipLevel, int layer,PixelFormat sourceFormat, PixelType sourceType,void *data, const QOpenGLPixelTransferOptions * const options = 0)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETDATA2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    void * par5 = (void *) hb_parptr(5);
    const QOpenGLPixelTransferOptions * par6 = ISNIL(6)? 0 : (const QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtr(6);
    obj->setData ( PINT(1), PINT(2), (QOpenGLTexture::PixelFormat) hb_parni(3), (QOpenGLTexture::PixelType) hb_parni(4), par5, par6 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setData(int mipLevel,PixelFormat sourceFormat, PixelType sourceType,void *data, const QOpenGLPixelTransferOptions * const options = 0)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETDATA3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    void * par4 = (void *) hb_parptr(4);
    const QOpenGLPixelTransferOptions * par5 = ISNIL(5)? 0 : (const QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtr(5);
    obj->setData ( PINT(1), (QOpenGLTexture::PixelFormat) hb_parni(2), (QOpenGLTexture::PixelType) hb_parni(3), par4, par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setData(PixelFormat sourceFormat, PixelType sourceType,void *data, const QOpenGLPixelTransferOptions * const options = 0)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETDATA4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QOpenGLPixelTransferOptions * par4 = ISNIL(4)? 0 : (const QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtr(4);
    obj->setData ( (QOpenGLTexture::PixelFormat) hb_parni(1), (QOpenGLTexture::PixelType) hb_parni(2), (void *) hb_parptr(3), par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setData(const QImage& image, MipMapGeneration genMipMaps = GenerateMipMaps)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETDATA5 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QOpenGLTexture::GenerateMipMaps : hb_parni(2);
    obj->setData ( *PQIMAGE(1), (QOpenGLTexture::MipMapGeneration) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


//[1]void setData(int mipLevel, int layer, CubeMapFace cubeFace,PixelFormat sourceFormat, PixelType sourceType,void *data, const QOpenGLPixelTransferOptions * const options = 0)
//[2]void setData(int mipLevel, int layer,PixelFormat sourceFormat, PixelType sourceType,void *data, const QOpenGLPixelTransferOptions * const options = 0)
//[3]void setData(int mipLevel,PixelFormat sourceFormat, PixelType sourceType,void *data, const QOpenGLPixelTransferOptions * const options = 0)
//[4]void setData(PixelFormat sourceFormat, PixelType sourceType,void *data, const QOpenGLPixelTransferOptions * const options = 0)
//[5]void setData(const QImage& image, MipMapGeneration genMipMaps = GenerateMipMaps)

HB_FUNC_STATIC( QOPENGLTEXTURE_SETDATA ) // TODO: implementar
{
  //if( ... )
  //{
  //  HB_FUNC_EXEC( QOPENGLTEXTURE_SETDATA1 );
  //}
  //else if( ... )
  //{
  //  HB_FUNC_EXEC( QOPENGLTEXTURE_SETDATA2 );
  //}
  //else
  //{
  //  hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  //}
}

/*
void setCompressedData(int mipLevel, int layer, CubeMapFace cubeFace,int dataSize, void *data,const QOpenGLPixelTransferOptions * const options = 0)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETCOMPRESSEDDATA1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    void * par5 = (void *) hb_parptr(5);
    const QOpenGLPixelTransferOptions * par6 = ISNIL(6)? 0 : (const QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtr(6);
    obj->setCompressedData ( PINT(1), PINT(2), (QOpenGLTexture::CubeMapFace) hb_parni(3), PINT(4), par5, par6 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setCompressedData(int mipLevel, int layer,int dataSize, void *data,const QOpenGLPixelTransferOptions * const options = 0)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETCOMPRESSEDDATA2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    void * par4 = (void *) hb_parptr(4);
    const QOpenGLPixelTransferOptions * par5 = ISNIL(5)? 0 : (const QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtr(5);
    obj->setCompressedData ( PINT(1), PINT(2), PINT(3), par4, par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setCompressedData(int mipLevel, int dataSize, void *data,const QOpenGLPixelTransferOptions * const options = 0)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETCOMPRESSEDDATA3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    void * par3 = (void *) hb_parptr(3);
    const QOpenGLPixelTransferOptions * par4 = ISNIL(4)? 0 : (const QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtr(4);
    obj->setCompressedData ( PINT(1), PINT(2), par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setCompressedData(int dataSize, void *data,const QOpenGLPixelTransferOptions * const options = 0)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETCOMPRESSEDDATA4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    void * par2 = (void *) hb_parptr(2);
    const QOpenGLPixelTransferOptions * par3 = ISNIL(3)? 0 : (const QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtr(3);
    obj->setCompressedData ( PINT(1), par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


//[1]void setCompressedData(int mipLevel, int layer, CubeMapFace cubeFace,int dataSize, void *data,const QOpenGLPixelTransferOptions * const options = 0)
//[2]void setCompressedData(int mipLevel, int layer,int dataSize, void *data,const QOpenGLPixelTransferOptions * const options = 0)
//[3]void setCompressedData(int mipLevel, int dataSize, void *data,const QOpenGLPixelTransferOptions * const options = 0)
//[4]void setCompressedData(int dataSize, void *data,const QOpenGLPixelTransferOptions * const options = 0)

HB_FUNC_STATIC( QOPENGLTEXTURE_SETCOMPRESSEDDATA ) // TODO: implementar
{
  //if( ... )
  //{
  //  HB_FUNC_EXEC( QOPENGLTEXTURE_SETCOMPRESSEDDATA1 );
  //}
  //else if( ... )
  //{
  //  HB_FUNC_EXEC( QOPENGLTEXTURE_SETCOMPRESSEDDATA2 );
  //}
  //else
  //{
  //  hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  //}
}

/*
void setMipBaseLevel(int baseLevel)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETMIPBASELEVEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMipBaseLevel ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int mipBaseLevel() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_MIPBASELEVEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->mipBaseLevel () );
  }
#endif
}


/*
void setMipMaxLevel(int maxLevel)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETMIPMAXLEVEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMipMaxLevel ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int mipMaxLevel() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_MIPMAXLEVEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->mipMaxLevel () );
  }
#endif
}


/*
void setMipLevelRange(int baseLevel, int maxLevel)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETMIPLEVELRANGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMipLevelRange ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



/*
void setAutoMipMapGenerationEnabled(bool enabled)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETAUTOMIPMAPGENERATIONENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoMipMapGenerationEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isAutoMipMapGenerationEnabled() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_ISAUTOMIPMAPGENERATIONENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isAutoMipMapGenerationEnabled () );
  }
#endif
}


/*
void generateMipMaps()
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_GENERATEMIPMAPS1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->generateMipMaps ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void generateMipMaps(int baseLevel, bool resetBaseLevel = true)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_GENERATEMIPMAPS2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->generateMipMaps ( PINT(1), OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


//[1]void generateMipMaps()
//[2]void generateMipMaps(int baseLevel, bool resetBaseLevel = true)

HB_FUNC_STATIC( QOPENGLTEXTURE_GENERATEMIPMAPS )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_GENERATEMIPMAPS1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTLOG(2) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_GENERATEMIPMAPS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setSwizzleMask(SwizzleComponent component, SwizzleValue value)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETSWIZZLEMASK1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSwizzleMask ( (QOpenGLTexture::SwizzleComponent) hb_parni(1), (QOpenGLTexture::SwizzleValue) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setSwizzleMask(SwizzleValue r, SwizzleValue g,SwizzleValue b, SwizzleValue a)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETSWIZZLEMASK2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSwizzleMask ( (QOpenGLTexture::SwizzleValue) hb_parni(1), (QOpenGLTexture::SwizzleValue) hb_parni(2), (QOpenGLTexture::SwizzleValue) hb_parni(3), (QOpenGLTexture::SwizzleValue) hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


//[1]void setSwizzleMask(SwizzleComponent component, SwizzleValue value)
//[2]void setSwizzleMask(SwizzleValue r, SwizzleValue g,SwizzleValue b, SwizzleValue a)

HB_FUNC_STATIC( QOPENGLTEXTURE_SETSWIZZLEMASK )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_SETSWIZZLEMASK1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_SETSWIZZLEMASK2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
SwizzleValue swizzleMask(SwizzleComponent component) const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SWIZZLEMASK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->swizzleMask ( (QOpenGLTexture::SwizzleComponent) hb_parni(1) ) );
  }
#endif
}


/*
void setDepthStencilMode(DepthStencilMode mode)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETDEPTHSTENCILMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDepthStencilMode ( (QOpenGLTexture::DepthStencilMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
DepthStencilMode depthStencilMode() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_DEPTHSTENCILMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->depthStencilMode () );
  }
#endif
}


/*
void setMinificationFilter(Filter filter)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETMINIFICATIONFILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMinificationFilter ( (QOpenGLTexture::Filter) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
Filter minificationFilter() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_MINIFICATIONFILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->minificationFilter () );
  }
#endif
}


/*
void setMagnificationFilter(Filter filter)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETMAGNIFICATIONFILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMagnificationFilter ( (QOpenGLTexture::Filter) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
Filter magnificationFilter() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_MAGNIFICATIONFILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->magnificationFilter () );
  }
#endif
}


/*
void setMinMagFilters(Filter minificationFilter,Filter magnificationFilter)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETMINMAGFILTERS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMinMagFilters ( (QOpenGLTexture::Filter) hb_parni(1), (QOpenGLTexture::Filter) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



/*
void setMaximumAnisotropy(float anisotropy)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETMAXIMUMANISOTROPY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaximumAnisotropy ( PFLOAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
float maximumAnisotropy() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_MAXIMUMANISOTROPY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RFLOAT( obj->maximumAnisotropy () );
  }
#endif
}


/*
void setWrapMode(WrapMode mode)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETWRAPMODE1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWrapMode ( (QOpenGLTexture::WrapMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setWrapMode(CoordinateDirection direction, WrapMode mode)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETWRAPMODE2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWrapMode ( (QOpenGLTexture::CoordinateDirection) hb_parni(1), (QOpenGLTexture::WrapMode) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


//[1]void setWrapMode(WrapMode mode)
//[2]void setWrapMode(CoordinateDirection direction, WrapMode mode)

HB_FUNC_STATIC( QOPENGLTEXTURE_SETWRAPMODE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_SETWRAPMODE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_SETWRAPMODE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
WrapMode wrapMode(CoordinateDirection direction) const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_WRAPMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->wrapMode ( (QOpenGLTexture::CoordinateDirection) hb_parni(1) ) );
  }
#endif
}


/*
void setBorderColor(QColor color)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETBORDERCOLOR1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->setBorderColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setBorderColor(float r, float g, float b, float a)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETBORDERCOLOR2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBorderColor ( PFLOAT(1), PFLOAT(2), PFLOAT(3), PFLOAT(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setBorderColor(int r, int g, int b, int a)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETBORDERCOLOR3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBorderColor ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setBorderColor(uint r, uint g, uint b, uint a)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETBORDERCOLOR4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBorderColor ( (uint) hb_parni(1), (uint) hb_parni(2), (uint) hb_parni(3), (uint) hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


//[1]void setBorderColor(QColor color)
//[2]void setBorderColor(float r, float g, float b, float a)
//[3]void setBorderColor(int r, int g, int b, int a)
//[4]void setBorderColor(uint r, uint g, uint b, uint a)

HB_FUNC_STATIC( QOPENGLTEXTURE_SETBORDERCOLOR ) // TODO: resolver conflitos entre casos 2, 3 e 4
{
  if( ISNUMPAR(1) && ISQCOLOR(1) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_SETBORDERCOLOR1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_SETBORDERCOLOR2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_SETBORDERCOLOR3 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_SETBORDERCOLOR4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QColor borderColor() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_BORDERCOLOR1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->borderColor () );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
#endif
}

/*
void borderColor(float *border) const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_BORDERCOLOR2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    float * par1 = (float *) _qt5xhb_itemGetPtr(1);
    obj->borderColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void borderColor(int *border) const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_BORDERCOLOR3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1;
    obj->borderColor ( &par1 );
    hb_storni( par1, 1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void borderColor(unsigned int *border) const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_BORDERCOLOR4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    unsigned int * par1 = (unsigned int *) _qt5xhb_itemGetPtr(1);
    obj->borderColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


//[1]QColor borderColor() const
//[2]void borderColor(float *border) const
//[3]void borderColor(int *border) const
//[4]void borderColor(unsigned int *border) const

HB_FUNC_STATIC( QOPENGLTEXTURE_BORDERCOLOR ) // TODO: resolver conflitos entre casos 2, 3 e 4
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_BORDERCOLOR1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_BORDERCOLOR2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_BORDERCOLOR3 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_BORDERCOLOR4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setMinimumLevelOfDetail(float value)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETMINIMUMLEVELOFDETAIL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMinimumLevelOfDetail ( PFLOAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
float minimumLevelOfDetail() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_MINIMUMLEVELOFDETAIL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RFLOAT( obj->minimumLevelOfDetail () );
  }
#endif
}


/*
void setMaximumLevelOfDetail(float value)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETMAXIMUMLEVELOFDETAIL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaximumLevelOfDetail ( PFLOAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
float maximumLevelOfDetail() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_MAXIMUMLEVELOFDETAIL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RFLOAT( obj->maximumLevelOfDetail () );
  }
#endif
}


/*
void setLevelOfDetailRange(float min, float max)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETLEVELOFDETAILRANGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLevelOfDetailRange ( PFLOAT(1), PFLOAT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



/*
void setLevelofDetailBias(float bias)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_SETLEVELOFDETAILBIAS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLevelofDetailBias ( PFLOAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
float levelofDetailBias() const
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_LEVELOFDETAILBIAS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QOpenGLTexture * obj = (QOpenGLTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RFLOAT( obj->levelofDetailBias () );
  }
#endif
}


/*
static GLuint boundTextureId(BindingTarget target)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_BOUNDTEXTUREID1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  RGLUINT( QOpenGLTexture::boundTextureId ( (QOpenGLTexture::BindingTarget) hb_parni(1) ) );
#endif
}

/*
static GLuint boundTextureId(uint unit, BindingTarget target)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_BOUNDTEXTUREID2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  RGLUINT( QOpenGLTexture::boundTextureId ( (uint) hb_parni(1), (QOpenGLTexture::BindingTarget) hb_parni(2) ) );
#endif
}


//[1]static GLuint boundTextureId(BindingTarget target)
//[2]static GLuint boundTextureId(uint unit, BindingTarget target)

HB_FUNC_STATIC( QOPENGLTEXTURE_BOUNDTEXTUREID )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_BOUNDTEXTUREID1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QOPENGLTEXTURE_BOUNDTEXTUREID2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool hasFeature(Feature feature)
*/
HB_FUNC_STATIC( QOPENGLTEXTURE_HASFEATURE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  RBOOL( QOpenGLTexture::hasFeature ( (QOpenGLTexture::Feature) hb_parni(1) ) );
#endif
}



HB_FUNC_STATIC( QOPENGLTEXTURE_NEWFROM )
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

HB_FUNC_STATIC( QOPENGLTEXTURE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QOPENGLTEXTURE_NEWFROM );
}

HB_FUNC_STATIC( QOPENGLTEXTURE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QOPENGLTEXTURE_NEWFROM );
}

HB_FUNC_STATIC( QOPENGLTEXTURE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QOPENGLTEXTURE_SETSELFDESTRUCTION )
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