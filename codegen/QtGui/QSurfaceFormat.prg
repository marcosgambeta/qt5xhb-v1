%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSurfaceFormat()
$internalConstructor=|new1|

$prototype=QSurfaceFormat(FormatOptions options)
$internalConstructor=|new2|QSurfaceFormat::FormatOptions

$prototype=QSurfaceFormat(const QSurfaceFormat &other)
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

$prototype=void setDepthBufferSize(int size)
$method=|void|setDepthBufferSize|int

$prototype=int depthBufferSize() const
$method=|int|depthBufferSize|

$prototype=void setStencilBufferSize(int size)
$method=|void|setStencilBufferSize|int

$prototype=int stencilBufferSize() const
$method=|int|stencilBufferSize|

$prototype=void setRedBufferSize(int size)
$method=|void|setRedBufferSize|int

$prototype=int redBufferSize() const
$method=|int|redBufferSize|

$prototype=void setGreenBufferSize(int size)
$method=|void|setGreenBufferSize|int

$prototype=int greenBufferSize() const
$method=|int|greenBufferSize|

$prototype=void setBlueBufferSize(int size)
$method=|void|setBlueBufferSize|int

$prototype=int blueBufferSize() const
$method=|int|blueBufferSize|

$prototype=void setAlphaBufferSize(int size)
$method=|void|setAlphaBufferSize|int

$prototype=int alphaBufferSize() const
$method=|int|alphaBufferSize|

$prototype=void setSamples(int numSamples)
$method=|void|setSamples|int

$prototype=int samples() const
$method=|int|samples|

$prototype=void setSwapBehavior(SwapBehavior behavior)
$method=|void|setSwapBehavior|QSurfaceFormat::SwapBehavior

$prototype=SwapBehavior swapBehavior() const
$method=|QSurfaceFormat::SwapBehavior|swapBehavior|

$prototype=bool hasAlpha() const
$method=|bool|hasAlpha|

$prototype=void setProfile(OpenGLContextProfile profile)
$method=|void|setProfile|QSurfaceFormat::OpenGLContextProfile

$prototype=OpenGLContextProfile profile() const
$method=|QSurfaceFormat::OpenGLContextProfile|profile|

$prototype=void setRenderableType(RenderableType type)
$method=|void|setRenderableType|QSurfaceFormat::RenderableType

$prototype=RenderableType renderableType() const
$method=|QSurfaceFormat::RenderableType|renderableType|

$prototype=void setMajorVersion(int majorVersion)
$method=|void|setMajorVersion|int

$prototype=int majorVersion() const
$method=|int|majorVersion|

$prototype=void setMinorVersion(int minorVersion)
$method=|void|setMinorVersion|int

$prototype=int minorVersion() const
$method=|int|minorVersion|

$prototype=bool stereo() const
$method=|bool|stereo|

$prototype=void setStereo(bool enable)
$method=|void|setStereo|bool

$prototype=void setOption(QSurfaceFormat::FormatOptions opt)
$method=|void|setOption|QSurfaceFormat::FormatOptions

$prototype=bool testOption(QSurfaceFormat::FormatOptions opt) const
$method=|bool|testOption|QSurfaceFormat::FormatOptions

$extraMethods

#pragma ENDDUMP
