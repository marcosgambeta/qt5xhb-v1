/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QGLFormat

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
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

PROCEDURE destroyObject () CLASS QGLFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGLFormat>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGLFormat>
#endif

/*
QGLFormat ()
*/
HB_FUNC_STATIC( QGLFORMAT_NEW1 )
{
  QGLFormat * o = new QGLFormat (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGLFormat ( QGL::FormatOptions options, int plane = 0 )
*/
HB_FUNC_STATIC( QGLFORMAT_NEW2 )
{
  int par1 = hb_parni(1);
  int par2 = ISNIL(2)? 0 : hb_parni(2);
  QGLFormat * o = new QGLFormat (  (QGL::FormatOptions) par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGLFormat ( const QGLFormat & other )
*/
HB_FUNC_STATIC( QGLFORMAT_NEW3 )
{
  QGLFormat * par1 = (QGLFormat *) _qt5xhb_itemGetPtr(1);
  QGLFormat * o = new QGLFormat ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QGLFormat ()
//[2]QGLFormat ( QGL::FormatOptions options, int plane = 0 )
//[3]QGLFormat ( const QGLFormat & other )

HB_FUNC_STATIC( QGLFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGLFORMAT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QGLFORMAT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQGLFORMAT(1) )
  {
    HB_FUNC_EXEC( QGLFORMAT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLFORMAT_DELETE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool accum () const
*/
HB_FUNC_STATIC( QGLFORMAT_ACCUM )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->accum (  ) );
  }
}


/*
int accumBufferSize () const
*/
HB_FUNC_STATIC( QGLFORMAT_ACCUMBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->accumBufferSize (  ) );
  }
}


/*
bool alpha () const
*/
HB_FUNC_STATIC( QGLFORMAT_ALPHA )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->alpha (  ) );
  }
}


/*
int alphaBufferSize () const
*/
HB_FUNC_STATIC( QGLFORMAT_ALPHABUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->alphaBufferSize (  ) );
  }
}


/*
int blueBufferSize () const
*/
HB_FUNC_STATIC( QGLFORMAT_BLUEBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->blueBufferSize (  ) );
  }
}


/*
bool depth () const
*/
HB_FUNC_STATIC( QGLFORMAT_DEPTH )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->depth (  ) );
  }
}


/*
int depthBufferSize () const
*/
HB_FUNC_STATIC( QGLFORMAT_DEPTHBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->depthBufferSize (  ) );
  }
}


/*
bool directRendering () const
*/
HB_FUNC_STATIC( QGLFORMAT_DIRECTRENDERING )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->directRendering (  ) );
  }
}


/*
bool doubleBuffer () const
*/
HB_FUNC_STATIC( QGLFORMAT_DOUBLEBUFFER )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->doubleBuffer (  ) );
  }
}


/*
int greenBufferSize () const
*/
HB_FUNC_STATIC( QGLFORMAT_GREENBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->greenBufferSize (  ) );
  }
}


/*
bool hasOverlay () const
*/
HB_FUNC_STATIC( QGLFORMAT_HASOVERLAY )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasOverlay (  ) );
  }
}


/*
int majorVersion () const
*/
HB_FUNC_STATIC( QGLFORMAT_MAJORVERSION )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->majorVersion (  ) );
  }
}


/*
int minorVersion () const
*/
HB_FUNC_STATIC( QGLFORMAT_MINORVERSION )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->minorVersion (  ) );
  }
}


/*
int plane () const
*/
HB_FUNC_STATIC( QGLFORMAT_PLANE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->plane (  ) );
  }
}


/*
OpenGLContextProfile profile () const
*/
HB_FUNC_STATIC( QGLFORMAT_PROFILE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->profile (  ) );
  }
}


/*
int redBufferSize () const
*/
HB_FUNC_STATIC( QGLFORMAT_REDBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->redBufferSize (  ) );
  }
}


/*
bool rgba () const
*/
HB_FUNC_STATIC( QGLFORMAT_RGBA )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->rgba (  ) );
  }
}


/*
bool sampleBuffers () const
*/
HB_FUNC_STATIC( QGLFORMAT_SAMPLEBUFFERS )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->sampleBuffers (  ) );
  }
}


/*
int samples () const
*/
HB_FUNC_STATIC( QGLFORMAT_SAMPLES )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->samples (  ) );
  }
}


/*
void setAccum ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETACCUM )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAccum ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAccumBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETACCUMBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAccumBufferSize ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAlpha ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETALPHA )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAlpha ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAlphaBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETALPHABUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAlphaBufferSize ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBlueBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETBLUEBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBlueBufferSize ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDepth ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDEPTH )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDepth ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDepthBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDEPTHBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDepthBufferSize ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDirectRendering ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDIRECTRENDERING )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDirectRendering ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDoubleBuffer ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDOUBLEBUFFER )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDoubleBuffer ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGreenBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETGREENBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setGreenBufferSize ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOption ( QGL::FormatOptions opt )
*/
HB_FUNC_STATIC( QGLFORMAT_SETOPTION )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOption (  (QGL::FormatOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOverlay ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETOVERLAY )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOverlay ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPlane ( int plane )
*/
HB_FUNC_STATIC( QGLFORMAT_SETPLANE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPlane ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProfile ( OpenGLContextProfile profile )
*/
HB_FUNC_STATIC( QGLFORMAT_SETPROFILE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setProfile (  (QGLFormat::OpenGLContextProfile) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRedBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETREDBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRedBufferSize ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRgba ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETRGBA )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRgba ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSampleBuffers ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSAMPLEBUFFERS )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSampleBuffers ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSamples ( int numSamples )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSAMPLES )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSamples ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStencil ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSTENCIL )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStencil ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStencilBufferSize ( int size )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSTENCILBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStencilBufferSize ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStereo ( bool enable )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSTEREO )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStereo ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSwapInterval ( int interval )
*/
HB_FUNC_STATIC( QGLFORMAT_SETSWAPINTERVAL )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSwapInterval ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVersion ( int major, int minor )
*/
HB_FUNC_STATIC( QGLFORMAT_SETVERSION )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVersion ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool stencil () const
*/
HB_FUNC_STATIC( QGLFORMAT_STENCIL )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->stencil (  ) );
  }
}


/*
int stencilBufferSize () const
*/
HB_FUNC_STATIC( QGLFORMAT_STENCILBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->stencilBufferSize (  ) );
  }
}


/*
bool stereo () const
*/
HB_FUNC_STATIC( QGLFORMAT_STEREO )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->stereo (  ) );
  }
}


/*
int swapInterval () const
*/
HB_FUNC_STATIC( QGLFORMAT_SWAPINTERVAL )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->swapInterval (  ) );
  }
}


/*
bool testOption ( QGL::FormatOptions opt ) const
*/
HB_FUNC_STATIC( QGLFORMAT_TESTOPTION )
{
  QGLFormat * obj = (QGLFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->testOption (  (QGL::FormatOptions) par1 ) );
  }
}


/*
static QGLFormat defaultFormat ()
*/
HB_FUNC_STATIC( QGLFORMAT_DEFAULTFORMAT )
{
  QGLFormat * ptr = new QGLFormat( QGLFormat::defaultFormat (  ) );
  _qt5xhb_createReturnClass ( ptr, "QGLFORMAT" );
}


/*
static QGLFormat defaultOverlayFormat ()
*/
HB_FUNC_STATIC( QGLFORMAT_DEFAULTOVERLAYFORMAT )
{
  QGLFormat * ptr = new QGLFormat( QGLFormat::defaultOverlayFormat (  ) );
  _qt5xhb_createReturnClass ( ptr, "QGLFORMAT" );
}


/*
static bool hasOpenGL ()
*/
HB_FUNC_STATIC( QGLFORMAT_HASOPENGL )
{
  hb_retl( QGLFormat::hasOpenGL (  ) );
}


/*
static bool hasOpenGLOverlays ()
*/
HB_FUNC_STATIC( QGLFORMAT_HASOPENGLOVERLAYS )
{
  hb_retl( QGLFormat::hasOpenGLOverlays (  ) );
}


/*
static OpenGLVersionFlags openGLVersionFlags ()
*/
HB_FUNC_STATIC( QGLFORMAT_OPENGLVERSIONFLAGS )
{
  hb_retni( QGLFormat::openGLVersionFlags (  ) );
}


/*
static void setDefaultFormat ( const QGLFormat & f )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDEFAULTFORMAT )
{
  QGLFormat * par1 = (QGLFormat *) _qt5xhb_itemGetPtr(1);
  QGLFormat::setDefaultFormat ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setDefaultOverlayFormat ( const QGLFormat & f )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDEFAULTOVERLAYFORMAT )
{
  QGLFormat * par1 = (QGLFormat *) _qt5xhb_itemGetPtr(1);
  QGLFormat::setDefaultOverlayFormat ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QGLFORMAT_NEWFROM )
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

HB_FUNC_STATIC( QGLFORMAT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGLFORMAT_NEWFROM );
}

HB_FUNC_STATIC( QGLFORMAT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGLFORMAT_NEWFROM );
}

HB_FUNC_STATIC( QGLFORMAT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGLFORMAT_SETSELFDESTRUCTION )
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