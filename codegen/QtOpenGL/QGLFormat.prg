$header

#include "hbclass.ch"

CLASS QGLFormat

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD accum
   METHOD accumBufferSize
   METHOD alpha
   METHOD alphaBufferSize
   METHOD blueBufferSize
   METHOD depth
   METHOD depthBufferSize
   METHOD directRendering
   METHOD doubleBuffer
   METHOD greenBufferSize
   METHOD hasOverlay
   METHOD majorVersion
   METHOD minorVersion
   METHOD plane
   METHOD profile
   METHOD redBufferSize
   METHOD rgba
   METHOD sampleBuffers
   METHOD samples
   METHOD setAccum
   METHOD setAccumBufferSize
   METHOD setAlpha
   METHOD setAlphaBufferSize
   METHOD setBlueBufferSize
   METHOD setDepth
   METHOD setDepthBufferSize
   METHOD setDirectRendering
   METHOD setDoubleBuffer
   METHOD setGreenBufferSize
   METHOD setOption
   METHOD setOverlay
   METHOD setPlane
   METHOD setProfile
   METHOD setRedBufferSize
   METHOD setRgba
   METHOD setSampleBuffers
   METHOD setSamples
   METHOD setStencil
   METHOD setStencilBufferSize
   METHOD setStereo
   METHOD setSwapInterval
   METHOD setVersion
   METHOD stencil
   METHOD stencilBufferSize
   METHOD stereo
   METHOD swapInterval
   METHOD testOption
   METHOD defaultFormat
   METHOD defaultOverlayFormat
   METHOD hasOpenGL
   METHOD hasOpenGLOverlays
   METHOD openGLVersionFlags
   METHOD setDefaultFormat
   METHOD setDefaultOverlayFormat

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
QGLFormat ()
*/
$internalConstructor=|new1|

/*
QGLFormat ( QGL::FormatOptions options, int plane = 0 )
*/
$internalConstructor=|new2|QGL::FormatOptions,int=0

/*
QGLFormat ( const QGLFormat & other )
*/
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

/*
bool accum () const
*/
$method=|bool|accum|

/*
int accumBufferSize () const
*/
$method=|int|accumBufferSize|

/*
bool alpha () const
*/
$method=|bool|alpha|

/*
int alphaBufferSize () const
*/
$method=|int|alphaBufferSize|

/*
int blueBufferSize () const
*/
$method=|int|blueBufferSize|

/*
bool depth () const
*/
$method=|bool|depth|

/*
int depthBufferSize () const
*/
$method=|int|depthBufferSize|

/*
bool directRendering () const
*/
$method=|bool|directRendering|

/*
bool doubleBuffer () const
*/
$method=|bool|doubleBuffer|

/*
int greenBufferSize () const
*/
$method=|int|greenBufferSize|

/*
bool hasOverlay () const
*/
$method=|bool|hasOverlay|

/*
int majorVersion () const
*/
$method=|int|majorVersion|

/*
int minorVersion () const
*/
$method=|int|minorVersion|

/*
int plane () const
*/
$method=|int|plane|

/*
OpenGLContextProfile profile () const
*/
$method=|QGLFormat::OpenGLContextProfile|profile|

/*
int redBufferSize () const
*/
$method=|int|redBufferSize|

/*
bool rgba () const
*/
$method=|bool|rgba|

/*
bool sampleBuffers () const
*/
$method=|bool|sampleBuffers|

/*
int samples () const
*/
$method=|int|samples|

/*
void setAccum ( bool enable )
*/
$method=|void|setAccum|bool

/*
void setAccumBufferSize ( int size )
*/
$method=|void|setAccumBufferSize|int

/*
void setAlpha ( bool enable )
*/
$method=|void|setAlpha|bool

/*
void setAlphaBufferSize ( int size )
*/
$method=|void|setAlphaBufferSize|int

/*
void setBlueBufferSize ( int size )
*/
$method=|void|setBlueBufferSize|int

/*
void setDepth ( bool enable )
*/
$method=|void|setDepth|bool

/*
void setDepthBufferSize ( int size )
*/
$method=|void|setDepthBufferSize|int

/*
void setDirectRendering ( bool enable )
*/
$method=|void|setDirectRendering|bool

/*
void setDoubleBuffer ( bool enable )
*/
$method=|void|setDoubleBuffer|bool

/*
void setGreenBufferSize ( int size )
*/
$method=|void|setGreenBufferSize|int

/*
void setOption ( QGL::FormatOptions opt )
*/
$method=|void|setOption|QGL::FormatOptions

/*
void setOverlay ( bool enable )
*/
$method=|void|setOverlay|bool

/*
void setPlane ( int plane )
*/
$method=|void|setPlane|int

/*
void setProfile ( OpenGLContextProfile profile )
*/
$method=|void|setProfile|QGLFormat::OpenGLContextProfile

/*
void setRedBufferSize ( int size )
*/
$method=|void|setRedBufferSize|int

/*
void setRgba ( bool enable )
*/
$method=|void|setRgba|bool

/*
void setSampleBuffers ( bool enable )
*/
$method=|void|setSampleBuffers|bool

/*
void setSamples ( int numSamples )
*/
$method=|void|setSamples|int

/*
void setStencil ( bool enable )
*/
$method=|void|setStencil|bool

/*
void setStencilBufferSize ( int size )
*/
$method=|void|setStencilBufferSize|int

/*
void setStereo ( bool enable )
*/
$method=|void|setStereo|bool

/*
void setSwapInterval ( int interval )
*/
$method=|void|setSwapInterval|int

/*
void setVersion ( int major, int minor )
*/
$method=|void|setVersion|int,int

/*
bool stencil () const
*/
$method=|bool|stencil|

/*
int stencilBufferSize () const
*/
$method=|int|stencilBufferSize|

/*
bool stereo () const
*/
$method=|bool|stereo|

/*
int swapInterval () const
*/
$method=|int|swapInterval|

/*
bool testOption ( QGL::FormatOptions opt ) const
*/
$method=|bool|testOption|QGL::FormatOptions

/*
static QGLFormat defaultFormat ()
*/
$staticMethod=|QGLFormat|defaultFormat|

/*
static QGLFormat defaultOverlayFormat ()
*/
$staticMethod=|QGLFormat|defaultOverlayFormat|

/*
static bool hasOpenGL ()
*/
$staticMethod=|bool|hasOpenGL|

/*
static bool hasOpenGLOverlays ()
*/
$staticMethod=|bool|hasOpenGLOverlays|

/*
static OpenGLVersionFlags openGLVersionFlags ()
*/
$staticMethod=|QGLFormat::OpenGLVersionFlags|openGLVersionFlags|

/*
static void setDefaultFormat ( const QGLFormat & f )
*/
$staticMethod=|void|setDefaultFormat|const QGLFormat &

/*
static void setDefaultOverlayFormat ( const QGLFormat & f )
*/
$staticMethod=|void|setDefaultOverlayFormat|const QGLFormat &

$extraMethods

#pragma ENDDUMP
