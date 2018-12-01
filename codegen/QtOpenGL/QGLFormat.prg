%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtOpenGL

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGLFormat ()
$internalConstructor=|new1|

$prototype=QGLFormat ( QGL::FormatOptions options, int plane = 0 )
$internalConstructor=|new2|QGL::FormatOptions,int=0

$prototype=QGLFormat ( const QGLFormat & other )
$internalConstructor=|new3|const QGLFormat &

//[1]QGLFormat ()
//[2]QGLFormat ( QGL::FormatOptions options, int plane = 0 )
//[3]QGLFormat ( const QGLFormat & other )

HB_FUNC_STATIC( QGLFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGLFormat_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QGLFormat_new2();
  }
  else if( ISNUMPAR(1) && ISQGLFORMAT(1) )
  {
    QGLFormat_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool accum () const
$method=|bool|accum|

$prototype=int accumBufferSize () const
$method=|int|accumBufferSize|

$prototype=bool alpha () const
$method=|bool|alpha|

$prototype=int alphaBufferSize () const
$method=|int|alphaBufferSize|

$prototype=int blueBufferSize () const
$method=|int|blueBufferSize|

$prototype=bool depth () const
$method=|bool|depth|

$prototype=int depthBufferSize () const
$method=|int|depthBufferSize|

$prototype=bool directRendering () const
$method=|bool|directRendering|

$prototype=bool doubleBuffer () const
$method=|bool|doubleBuffer|

$prototype=int greenBufferSize () const
$method=|int|greenBufferSize|

$prototype=bool hasOverlay () const
$method=|bool|hasOverlay|

$prototype=int majorVersion () const
$method=|int|majorVersion|

$prototype=int minorVersion () const
$method=|int|minorVersion|

$prototype=int plane () const
$method=|int|plane|

$prototype=OpenGLContextProfile profile () const
$method=|QGLFormat::OpenGLContextProfile|profile|

$prototype=int redBufferSize () const
$method=|int|redBufferSize|

$prototype=bool rgba () const
$method=|bool|rgba|

$prototype=bool sampleBuffers () const
$method=|bool|sampleBuffers|

$prototype=int samples () const
$method=|int|samples|

$prototype=void setAccum ( bool enable )
$method=|void|setAccum|bool

$prototype=void setAccumBufferSize ( int size )
$method=|void|setAccumBufferSize|int

$prototype=void setAlpha ( bool enable )
$method=|void|setAlpha|bool

$prototype=void setAlphaBufferSize ( int size )
$method=|void|setAlphaBufferSize|int

$prototype=void setBlueBufferSize ( int size )
$method=|void|setBlueBufferSize|int

$prototype=void setDepth ( bool enable )
$method=|void|setDepth|bool

$prototype=void setDepthBufferSize ( int size )
$method=|void|setDepthBufferSize|int

$prototype=void setDirectRendering ( bool enable )
$method=|void|setDirectRendering|bool

$prototype=void setDoubleBuffer ( bool enable )
$method=|void|setDoubleBuffer|bool

$prototype=void setGreenBufferSize ( int size )
$method=|void|setGreenBufferSize|int

$prototype=void setOption ( QGL::FormatOptions opt )
$method=|void|setOption|QGL::FormatOptions

$prototype=void setOverlay ( bool enable )
$method=|void|setOverlay|bool

$prototype=void setPlane ( int plane )
$method=|void|setPlane|int

$prototype=void setProfile ( OpenGLContextProfile profile )
$method=|void|setProfile|QGLFormat::OpenGLContextProfile

$prototype=void setRedBufferSize ( int size )
$method=|void|setRedBufferSize|int

$prototype=void setRgba ( bool enable )
$method=|void|setRgba|bool

$prototype=void setSampleBuffers ( bool enable )
$method=|void|setSampleBuffers|bool

$prototype=void setSamples ( int numSamples )
$method=|void|setSamples|int

$prototype=void setStencil ( bool enable )
$method=|void|setStencil|bool

$prototype=void setStencilBufferSize ( int size )
$method=|void|setStencilBufferSize|int

$prototype=void setStereo ( bool enable )
$method=|void|setStereo|bool

$prototype=void setSwapInterval ( int interval )
$method=|void|setSwapInterval|int

$prototype=void setVersion ( int major, int minor )
$method=|void|setVersion|int,int

$prototype=bool stencil () const
$method=|bool|stencil|

$prototype=int stencilBufferSize () const
$method=|int|stencilBufferSize|

$prototype=bool stereo () const
$method=|bool|stereo|

$prototype=int swapInterval () const
$method=|int|swapInterval|

$prototype=bool testOption ( QGL::FormatOptions opt ) const
$method=|bool|testOption|QGL::FormatOptions

$prototype=static QGLFormat defaultFormat ()
$staticMethod=|QGLFormat|defaultFormat|

$prototype=static QGLFormat defaultOverlayFormat ()
$staticMethod=|QGLFormat|defaultOverlayFormat|

$prototype=static bool hasOpenGL ()
$staticMethod=|bool|hasOpenGL|

$prototype=static bool hasOpenGLOverlays ()
$staticMethod=|bool|hasOpenGLOverlays|

$prototype=static OpenGLVersionFlags openGLVersionFlags ()
$staticMethod=|QGLFormat::OpenGLVersionFlags|openGLVersionFlags|

$prototype=static void setDefaultFormat ( const QGLFormat & f )
$staticMethod=|void|setDefaultFormat|const QGLFormat &

$prototype=static void setDefaultOverlayFormat ( const QGLFormat & f )
$staticMethod=|void|setDefaultOverlayFormat|const QGLFormat &

$extraMethods

#pragma ENDDUMP
