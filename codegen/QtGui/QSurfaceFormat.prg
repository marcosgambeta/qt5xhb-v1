$header

#include "hbclass.ch"

CLASS QSurfaceFormat

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
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
HB_FUNC_STATIC( QSURFACEFORMAT_NEW1 )
{
  QSurfaceFormat * o = new QSurfaceFormat ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QSurfaceFormat(FormatOptions options)
*/
HB_FUNC_STATIC( QSURFACEFORMAT_NEW2 )
{
  int par1 = hb_parni(1);
  QSurfaceFormat * o = new QSurfaceFormat ( (QSurfaceFormat::FormatOptions) par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QSurfaceFormat(const QSurfaceFormat &other)
*/
HB_FUNC_STATIC( QSURFACEFORMAT_NEW3 )
{
  QSurfaceFormat * o = new QSurfaceFormat ( *PQSURFACEFORMAT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QSurfaceFormat()
//[2]QSurfaceFormat(FormatOptions options)
//[3]QSurfaceFormat(const QSurfaceFormat &other)

HB_FUNC_STATIC( QSURFACEFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSURFACEFORMAT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSURFACEFORMAT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQSURFACEFORMAT(1) )
  {
    HB_FUNC_EXEC( QSURFACEFORMAT_NEW3 );
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
HB_FUNC_STATIC( QSURFACEFORMAT_SETDEPTHBUFFERSIZE )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDepthBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int depthBufferSize() const
*/
HB_FUNC_STATIC( QSURFACEFORMAT_DEPTHBUFFERSIZE )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->depthBufferSize () );
  }
}


/*
void setStencilBufferSize(int size)
*/
HB_FUNC_STATIC( QSURFACEFORMAT_SETSTENCILBUFFERSIZE )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStencilBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int stencilBufferSize() const
*/
HB_FUNC_STATIC( QSURFACEFORMAT_STENCILBUFFERSIZE )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->stencilBufferSize () );
  }
}


/*
void setRedBufferSize(int size)
*/
HB_FUNC_STATIC( QSURFACEFORMAT_SETREDBUFFERSIZE )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRedBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int redBufferSize() const
*/
HB_FUNC_STATIC( QSURFACEFORMAT_REDBUFFERSIZE )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->redBufferSize () );
  }
}


/*
void setGreenBufferSize(int size)
*/
HB_FUNC_STATIC( QSURFACEFORMAT_SETGREENBUFFERSIZE )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setGreenBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int greenBufferSize() const
*/
HB_FUNC_STATIC( QSURFACEFORMAT_GREENBUFFERSIZE )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->greenBufferSize () );
  }
}


/*
void setBlueBufferSize(int size)
*/
HB_FUNC_STATIC( QSURFACEFORMAT_SETBLUEBUFFERSIZE )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBlueBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int blueBufferSize() const
*/
HB_FUNC_STATIC( QSURFACEFORMAT_BLUEBUFFERSIZE )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->blueBufferSize () );
  }
}


/*
void setAlphaBufferSize(int size)
*/
HB_FUNC_STATIC( QSURFACEFORMAT_SETALPHABUFFERSIZE )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAlphaBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int alphaBufferSize() const
*/
HB_FUNC_STATIC( QSURFACEFORMAT_ALPHABUFFERSIZE )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->alphaBufferSize () );
  }
}


/*
void setSamples(int numSamples)
*/
HB_FUNC_STATIC( QSURFACEFORMAT_SETSAMPLES )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSamples ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int samples() const
*/
HB_FUNC_STATIC( QSURFACEFORMAT_SAMPLES )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->samples () );
  }
}


/*
void setSwapBehavior(SwapBehavior behavior)
*/
HB_FUNC_STATIC( QSURFACEFORMAT_SETSWAPBEHAVIOR )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSwapBehavior ( (QSurfaceFormat::SwapBehavior) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
SwapBehavior swapBehavior() const
*/
HB_FUNC_STATIC( QSURFACEFORMAT_SWAPBEHAVIOR )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->swapBehavior () );
  }
}


/*
bool hasAlpha() const
*/
HB_FUNC_STATIC( QSURFACEFORMAT_HASALPHA )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasAlpha () );
  }
}


/*
void setProfile(OpenGLContextProfile profile)
*/
HB_FUNC_STATIC( QSURFACEFORMAT_SETPROFILE )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setProfile ( (QSurfaceFormat::OpenGLContextProfile) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
OpenGLContextProfile profile() const
*/
HB_FUNC_STATIC( QSURFACEFORMAT_PROFILE )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->profile () );
  }
}


/*
void setRenderableType(RenderableType type)
*/
HB_FUNC_STATIC( QSURFACEFORMAT_SETRENDERABLETYPE )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRenderableType ( (QSurfaceFormat::RenderableType) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
RenderableType renderableType() const
*/
HB_FUNC_STATIC( QSURFACEFORMAT_RENDERABLETYPE )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->renderableType () );
  }
}


/*
void setMajorVersion(int majorVersion)
*/
HB_FUNC_STATIC( QSURFACEFORMAT_SETMAJORVERSION )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMajorVersion ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int majorVersion() const
*/
HB_FUNC_STATIC( QSURFACEFORMAT_MAJORVERSION )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->majorVersion () );
  }
}


/*
void setMinorVersion(int minorVersion)
*/
HB_FUNC_STATIC( QSURFACEFORMAT_SETMINORVERSION )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMinorVersion ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int minorVersion() const
*/
HB_FUNC_STATIC( QSURFACEFORMAT_MINORVERSION )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->minorVersion () );
  }
}


/*
bool stereo() const
*/
HB_FUNC_STATIC( QSURFACEFORMAT_STEREO )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->stereo () );
  }
}


/*
void setStereo(bool enable)
*/
HB_FUNC_STATIC( QSURFACEFORMAT_SETSTEREO )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStereo ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOption(QSurfaceFormat::FormatOptions opt)
*/
HB_FUNC_STATIC( QSURFACEFORMAT_SETOPTION )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOption ( (QSurfaceFormat::FormatOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool testOption(QSurfaceFormat::FormatOptions opt) const
*/
HB_FUNC_STATIC( QSURFACEFORMAT_TESTOPTION )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->testOption ( (QSurfaceFormat::FormatOptions) par1 ) );
  }
}

$extraMethods

#pragma ENDDUMP
