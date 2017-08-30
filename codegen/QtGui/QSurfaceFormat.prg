$header

#include "hbclass.ch"

CLASS QSurfaceFormat

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setDepthBufferSize
   METHOD depthBufferSize
   METHOD setStencilBufferSize
   METHOD stencilBufferSize
   METHOD setRedBufferSize
   METHOD redBufferSize
   METHOD setGreenBufferSize
   METHOD greenBufferSize
   METHOD setBlueBufferSize
   METHOD blueBufferSize
   METHOD setAlphaBufferSize
   METHOD alphaBufferSize
   METHOD setSamples
   METHOD samples
   METHOD setSwapBehavior
   METHOD swapBehavior
   METHOD hasAlpha
   METHOD setProfile
   METHOD profile
   METHOD setRenderableType
   METHOD renderableType
   METHOD setMajorVersion
   METHOD majorVersion
   METHOD setMinorVersion
   METHOD minorVersion
   METHOD stereo
   METHOD setStereo
   METHOD setOption
   METHOD testOption

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

/*
QSurfaceFormat()
*/
$internalConstructor=|new1|

/*
QSurfaceFormat(FormatOptions options)
*/
$internalConstructor=|new2|QSurfaceFormat::FormatOptions

/*
QSurfaceFormat(const QSurfaceFormat &other)
*/
$internalConstructor=|new3|const QSurfaceFormat &

//[1]QSurfaceFormat()
//[2]QSurfaceFormat(FormatOptions options)
//[3]QSurfaceFormat(const QSurfaceFormat &other)

HB_FUNC_STATIC( QSURFACEFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSurfaceFormat_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSurfaceFormat_new2();
  }
  else if( ISNUMPAR(1) && ISQSURFACEFORMAT(1) )
  {
    QSurfaceFormat_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void setDepthBufferSize(int size)
*/
$method=|void|setDepthBufferSize|int

/*
int depthBufferSize() const
*/
$method=|int|depthBufferSize|

/*
void setStencilBufferSize(int size)
*/
$method=|void|setStencilBufferSize|int

/*
int stencilBufferSize() const
*/
$method=|int|stencilBufferSize|

/*
void setRedBufferSize(int size)
*/
$method=|void|setRedBufferSize|int

/*
int redBufferSize() const
*/
$method=|int|redBufferSize|

/*
void setGreenBufferSize(int size)
*/
$method=|void|setGreenBufferSize|int

/*
int greenBufferSize() const
*/
$method=|int|greenBufferSize|

/*
void setBlueBufferSize(int size)
*/
$method=|void|setBlueBufferSize|int

/*
int blueBufferSize() const
*/
$method=|int|blueBufferSize|

/*
void setAlphaBufferSize(int size)
*/
$method=|void|setAlphaBufferSize|int

/*
int alphaBufferSize() const
*/
$method=|int|alphaBufferSize|

/*
void setSamples(int numSamples)
*/
$method=|void|setSamples|int

/*
int samples() const
*/
$method=|int|samples|

/*
void setSwapBehavior(SwapBehavior behavior)
*/
$method=|void|setSwapBehavior|QSurfaceFormat::SwapBehavior

/*
SwapBehavior swapBehavior() const
*/
$method=|QSurfaceFormat::SwapBehavior|swapBehavior|

/*
bool hasAlpha() const
*/
$method=|bool|hasAlpha|

/*
void setProfile(OpenGLContextProfile profile)
*/
$method=|void|setProfile|QSurfaceFormat::OpenGLContextProfile

/*
OpenGLContextProfile profile() const
*/
$method=|QSurfaceFormat::OpenGLContextProfile|profile|

/*
void setRenderableType(RenderableType type)
*/
$method=|void|setRenderableType|QSurfaceFormat::RenderableType

/*
RenderableType renderableType() const
*/
$method=|QSurfaceFormat::RenderableType|renderableType|

/*
void setMajorVersion(int majorVersion)
*/
$method=|void|setMajorVersion|int

/*
int majorVersion() const
*/
$method=|int|majorVersion|

/*
void setMinorVersion(int minorVersion)
*/
$method=|void|setMinorVersion|int

/*
int minorVersion() const
*/
$method=|int|minorVersion|

/*
bool stereo() const
*/
$method=|bool|stereo|

/*
void setStereo(bool enable)
*/
$method=|void|setStereo|bool

/*
void setOption(QSurfaceFormat::FormatOptions opt)
*/
$method=|void|setOption|QSurfaceFormat::FormatOptions

/*
bool testOption(QSurfaceFormat::FormatOptions opt) const
*/
$method=|bool|testOption|QSurfaceFormat::FormatOptions

$extraMethods

#pragma ENDDUMP
