%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD new
   METHOD delete
   METHOD create
   METHOD destroy
   METHOD isCreated
   METHOD textureId
   METHOD bind
   METHOD release
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

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

#include <QColor>

$prototype=QOpenGLTexture(Target target)
$internalConstructor=5,2,0|new1|QOpenGLTexture::Target

$prototype=QOpenGLTexture(const QImage& image, MipMapGeneration genMipMaps = GenerateMipMaps)
$internalConstructor=5,2,0|new2|const QImage &,QOpenGLTexture::MipMapGeneration=QOpenGLTexture::GenerateMipMaps

//[1]QOpenGLTexture(Target target)
//[2]QOpenGLTexture(const QImage& image, MipMapGeneration genMipMaps = GenerateMipMaps)

HB_FUNC_STATIC( QOPENGLTEXTURE_NEW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QOpenGLTexture_new1();
  }
  else if( ISBETWEEN(1,2) && ISQIMAGE(1) && ISOPTNUM(2) )
  {
    QOpenGLTexture_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

$prototype=bool create()
$method=5,2,0|bool|create|

$prototype=void destroy()
$method=5,2,0|void|destroy|

$prototype=bool isCreated() const
$method=5,2,0|bool|isCreated|

$prototype=GLuint textureId() const
$method=5,2,0|GLuint|textureId|

$prototype=void bind()
$internalMethod=5,2,0|void|bind,bind1|

$prototype=void bind(uint unit, TextureUnitReset reset = DontResetTextureUnit)
$internalMethod=5,2,0|void|bind,bind2|uint,QOpenGLTexture::TextureUnitReset=QOpenGLTexture::DontResetTextureUnit

//[1]void bind()
//[2]void bind(uint unit, TextureUnitReset reset = DontResetTextureUnit)

HB_FUNC_STATIC( QOPENGLTEXTURE_BIND )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLTexture_bind1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QOpenGLTexture_bind2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void release()
$internalMethod=5,2,0|void|release,release1|

$prototype=void release(uint unit, TextureUnitReset reset = DontResetTextureUnit)
$internalMethod=5,2,0|void|release,release2|uint,QOpenGLTexture::TextureUnitReset=QOpenGLTexture::DontResetTextureUnit

//[1]void release()
//[2]void release(uint unit, TextureUnitReset reset = DontResetTextureUnit)

HB_FUNC_STATIC( QOPENGLTEXTURE_RELEASE )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLTexture_release1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QOpenGLTexture_release2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool isBound() const
$internalMethod=5,2,0|bool|isBound,isBound2|

$prototype=bool isBound(uint unit)
$internalMethod=5,2,0|bool|isBound,isBound2|uint

//[1]bool isBound() const
//[2]bool isBound(uint unit)

HB_FUNC_STATIC( QOPENGLTEXTURE_ISBOUND )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLTexture_isBind1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QOpenGLTexture_isBind2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setFormat(TextureFormat format)
$method=5,2,0|void|setFormat|QOpenGLTexture::TextureFormat

$prototype=TextureFormat format() const
$method=5,2,0|QOpenGLTexture::TextureFormat|format|

$prototype=void setSize(int width, int height = 1, int depth = 1)
$method=5,2,0|void|setSize|int,int=1,int=1

$prototype=int width() const
$method=5,2,0|int|width|

$prototype=int height() const
$method=5,2,0|int|height|

$prototype=int depth() const
$method=5,2,0|int|depth|

$prototype=void setMipLevels(int levels)
$method=5,2,0|void|setMipLevels|int

$prototype=int mipLevels() const
$method=5,2,0|int|mipLevels|

$prototype=int maximumMipLevels() const
$method=5,2,0|int|maximumMipLevels|

$prototype=void setLayers(int layers)
$method=5,2,0|void|setLayers|int

$prototype=int layers() const
$method=5,2,0|int|layers|

$prototype=int faces() const
$method=5,2,0|int|faces|

$prototype=void allocateStorage()
$method=5,2,0|void|allocateStorage|

$prototype=bool isStorageAllocated() const
$method=5,2,0|bool|isStorageAllocated|

$prototype=QOpenGLTexture *createTextureView(Target target,TextureFormat viewFormat,int minimumMipmapLevel, int maximumMipmapLevel,int minimumLayer, int maximumLayer) const
$method=5,2,0|QOpenGLTexture *|createTextureView|QOpenGLTexture::Target,QOpenGLTexture::TextureFormat,int,int,int,int

$prototype=bool isTextureView() const
$method=5,2,0|bool|isTextureView|

$prototype=void setData(int mipLevel, int layer, CubeMapFace cubeFace,PixelFormat sourceFormat, PixelType sourceType,void *data, const QOpenGLPixelTransferOptions * const options = 0)
$internalMethod=5,2,0|void|setData,setData1|int,int,QOpenGLTexture::CubeMapFace,QOpenGLTexture::PixelFormat,QOpenGLTexture::PixelType,void *,const QOpenGLPixelTransferOptions *=0

$prototype=void setData(int mipLevel, int layer,PixelFormat sourceFormat, PixelType sourceType,void *data, const QOpenGLPixelTransferOptions * const options = 0)
$internalMethod=5,2,0|void|setData,setData2|int,int,QOpenGLTexture::PixelFormat,QOpenGLTexture::PixelType,void *,const QOpenGLPixelTransferOptions * const=0

$prototype=void setData(int mipLevel,PixelFormat sourceFormat, PixelType sourceType,void *data, const QOpenGLPixelTransferOptions * const options = 0)
$internalMethod=5,2,0|void|setData,setData3|int,QOpenGLTexture::PixelFormat,QOpenGLTexture::PixelType,void *,const QOpenGLPixelTransferOptions * const=0

$prototype=void setData(PixelFormat sourceFormat, PixelType sourceType,void *data, const QOpenGLPixelTransferOptions * const options = 0)
$internalMethod=5,2,0|void|setData,setData4|QOpenGLTexture::PixelFormat,QOpenGLTexture::PixelType,void *,const QOpenGLPixelTransferOptions * const=0

$prototype=void setData(const QImage& image, MipMapGeneration genMipMaps = GenerateMipMaps)
$internalMethod=5,2,0|void|setData,setData5|const QImage &,QOpenGLTexture::MipMapGeneration=QOpenGLTexture::GenerateMipMaps

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

$prototype=void setCompressedData(int mipLevel, int layer, CubeMapFace cubeFace,int dataSize, void *data,const QOpenGLPixelTransferOptions * const options = 0)
$method=5,2,0|void|setCompressedData,setCompressedData1|int,int,QOpenGLTexture::CubeMapFace,int,void *,const QOpenGLPixelTransferOptions * const=0

$prototype=void setCompressedData(int mipLevel, int layer,int dataSize, void *data,const QOpenGLPixelTransferOptions * const options = 0)
$method=5,2,0|void|setCompressedData,setCompressedData2|int,int,int,void *,const QOpenGLPixelTransferOptions * const=0

$prototype=void setCompressedData(int mipLevel, int dataSize, void *data,const QOpenGLPixelTransferOptions * const options = 0)
$method=5,2,0|void|setCompressedData,setCompressedData3|int,int,void *,const QOpenGLPixelTransferOptions * const=0

$prototype=void setCompressedData(int dataSize, void *data,const QOpenGLPixelTransferOptions * const options = 0)
$method=5,2,0|void|setCompressedData,setCompressedData4|int,void *,const QOpenGLPixelTransferOptions * const=0

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

$prototype=void setMipBaseLevel(int baseLevel)
$method=5,2,0|void|setMipBaseLevel|int

$prototype=int mipBaseLevel() const
$method=5,2,0|int|mipBaseLevel|

$prototype=void setMipMaxLevel(int maxLevel)
$method=5,2,0|void|setMipMaxLevel|int

$prototype=int mipMaxLevel() const
$method=5,2,0|int|mipMaxLevel|

$prototype=void setMipLevelRange(int baseLevel, int maxLevel)
$method=5,2,0|void|setMipLevelRange|int,int

$prototype=void setAutoMipMapGenerationEnabled(bool enabled)
$method=5,2,0|void|setAutoMipMapGenerationEnabled|bool

$prototype=bool isAutoMipMapGenerationEnabled() const
$method=5,2,0|bool|isAutoMipMapGenerationEnabled|

$prototype=void generateMipMaps()
$method=5,2,0|void|generateMipMaps,generateMipMaps1|

$prototype=void generateMipMaps(int baseLevel, bool resetBaseLevel = true)
$method=5,2,0|void|generateMipMaps,generateMipMaps2|int,bool=true

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

$prototype=void setSwizzleMask(SwizzleComponent component, SwizzleValue value)
$method=5,2,0|void|setSwizzleMask,setSwizzleMask1|QOpenGLTexture::SwizzleComponent,QOpenGLTexture::SwizzleValue

$prototype=void setSwizzleMask(SwizzleValue r, SwizzleValue g,SwizzleValue b, SwizzleValue a)
$method=5,2,0|void|setSwizzleMask,setSwizzleMask2|QOpenGLTexture::SwizzleValue,QOpenGLTexture::SwizzleValue,QOpenGLTexture::SwizzleValue,QOpenGLTexture::SwizzleValue

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

$prototype=SwizzleValue swizzleMask(SwizzleComponent component) const
$method=5,2,0|QOpenGLTexture::SwizzleValue|swizzleMask|QOpenGLTexture::SwizzleComponent

$prototype=void setDepthStencilMode(DepthStencilMode mode)
$method=5,2,0|void|setDepthStencilMode|QOpenGLTexture::DepthStencilMode

$prototype=DepthStencilMode depthStencilMode() const
$method=5,2,0|QOpenGLTexture::DepthStencilMode|depthStencilMode|

$prototype=void setMinificationFilter(Filter filter)
$method=5,2,0|void|setMinificationFilter|QOpenGLTexture::Filter

$prototype=Filter minificationFilter() const
$method=5,2,0|QOpenGLTexture::Filter|minificationFilter|

$prototype=void setMagnificationFilter(Filter filter)
$method=5,2,0|void|setMagnificationFilter|QOpenGLTexture::Filter

$prototype=Filter magnificationFilter() const
$method=5,2,0|QOpenGLTexture::Filter|magnificationFilter|

$prototype=void setMinMagFilters(Filter minificationFilter,Filter magnificationFilter)
$method=5,2,0|void|setMinMagFilters|QOpenGLTexture::Filter,QOpenGLTexture::Filter

$prototype=void setMaximumAnisotropy(float anisotropy)
$method=5,2,0|void|setMaximumAnisotropy|float

$prototype=float maximumAnisotropy() const
$method=5,2,0|float|maximumAnisotropy|

$prototype=void setWrapMode(WrapMode mode)
$method=5,2,0|void|setWrapMode,setWrapMode1|QOpenGLTexture::WrapMode

$prototype=void setWrapMode(CoordinateDirection direction, WrapMode mode)
$method=5,2,0|void|setWrapMode,setWrapMode2|QOpenGLTexture::CoordinateDirection,QOpenGLTexture::WrapMode

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

$prototype=WrapMode wrapMode(CoordinateDirection direction) const
$method=5,2,0|QOpenGLTexture::WrapMode|wrapMode|QOpenGLTexture::CoordinateDirection

$prototype=void setBorderColor(QColor color)
$method=5,2,0|void|setBorderColor,setBorderColor1|QColor

$prototype=void setBorderColor(float r, float g, float b, float a)
$method=5,2,0|void|setBorderColor,setBorderColor2|float,float,float,float

$prototype=void setBorderColor(int r, int g, int b, int a)
$method=5,2,0|void|setBorderColor,setBorderColor3|int,int,int,int

$prototype=void setBorderColor(uint r, uint g, uint b, uint a)
$method=5,2,0|void|setBorderColor,setBorderColor4|uint,uint,uint,uint

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

$prototype=QColor borderColor() const
$method=5,2,0|QColor|borderColor,borderColor1|

$prototype=void borderColor(float *border) const
$method=5,2,0|void|borderColor,borderColor2|float *

$prototype=void borderColor(int *border) const
$method=5,2,0|void|borderColor,borderColor3|int *

$prototype=void borderColor(unsigned int *border) const
$method=5,2,0|void|borderColor,borderColor4|unsigned int *

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

$prototype=void setMinimumLevelOfDetail(float value)
$method=5,2,0|void|setMinimumLevelOfDetail|float

$prototype=float minimumLevelOfDetail() const
$method=5,2,0|float|minimumLevelOfDetail|

$prototype=void setMaximumLevelOfDetail(float value)
$method=5,2,0|void|setMaximumLevelOfDetail|float

$prototype=float maximumLevelOfDetail() const
$method=5,2,0|float|maximumLevelOfDetail|

$prototype=void setLevelOfDetailRange(float min, float max)
$method=5,2,0|void|setLevelOfDetailRange|float,float

$prototype=void setLevelofDetailBias(float bias)
$method=5,2,0|void|setLevelofDetailBias|float

$prototype=float levelofDetailBias() const
$method=5,2,0|float|levelofDetailBias|

$prototype=static GLuint boundTextureId(BindingTarget target)
$staticMethod=5,2,0|GLuint|boundTextureId,boundTextureId1|QOpenGLTexture::BindingTarget

$prototype=static GLuint boundTextureId(uint unit, BindingTarget target)
$staticMethod=5,2,0|GLuint|boundTextureId,boundTextureId2|uint,QOpenGLTexture::BindingTarget

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

$prototype=static bool hasFeature(Feature feature)
$staticMethod=5,2,0|bool|hasFeature|QOpenGLTexture::Feature

$extraMethods

#pragma ENDDUMP
