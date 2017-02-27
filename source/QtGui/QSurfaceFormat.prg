/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QSurfaceFormat

   DATA pointer
   DATA class_id INIT Class_Id_QSurfaceFormat
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QSurfaceFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSurfaceFormat>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSurfaceFormat>
#endif
#endif

/*
QSurfaceFormat()
*/
HB_FUNC_STATIC( QSURFACEFORMAT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSurfaceFormat * o = new QSurfaceFormat (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSurfaceFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QSurfaceFormat(FormatOptions options)
*/
HB_FUNC_STATIC( QSURFACEFORMAT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QSurfaceFormat * o = new QSurfaceFormat (  (QSurfaceFormat::FormatOptions) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSurfaceFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QSurfaceFormat(const QSurfaceFormat &other)
*/
HB_FUNC_STATIC( QSURFACEFORMAT_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSurfaceFormat * par1 = (QSurfaceFormat *) _qt5xhb_itemGetPtr(1);
  QSurfaceFormat * o = new QSurfaceFormat ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSurfaceFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
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

HB_FUNC_STATIC( QSURFACEFORMAT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSurfaceFormat * obj = (QSurfaceFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setDepthBufferSize(int size)
*/
HB_FUNC_STATIC( QSURFACEFORMAT_SETDEPTHBUFFERSIZE )
{
  QSurfaceFormat * obj = (QSurfaceFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDepthBufferSize ( (int) hb_parni(1) );
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
    hb_retni( obj->depthBufferSize (  ) );
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
    obj->setStencilBufferSize ( (int) hb_parni(1) );
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
    hb_retni( obj->stencilBufferSize (  ) );
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
    obj->setRedBufferSize ( (int) hb_parni(1) );
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
    hb_retni( obj->redBufferSize (  ) );
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
    obj->setGreenBufferSize ( (int) hb_parni(1) );
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
    hb_retni( obj->greenBufferSize (  ) );
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
    obj->setBlueBufferSize ( (int) hb_parni(1) );
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
    hb_retni( obj->blueBufferSize (  ) );
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
    obj->setAlphaBufferSize ( (int) hb_parni(1) );
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
    hb_retni( obj->alphaBufferSize (  ) );
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
    obj->setSamples ( (int) hb_parni(1) );
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
    hb_retni( obj->samples (  ) );
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
    int par1 = hb_parni(1);
    obj->setSwapBehavior (  (QSurfaceFormat::SwapBehavior) par1 );
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
    hb_retni( obj->swapBehavior (  ) );
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
    hb_retl( obj->hasAlpha (  ) );
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
    int par1 = hb_parni(1);
    obj->setProfile (  (QSurfaceFormat::OpenGLContextProfile) par1 );
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
    hb_retni( obj->profile (  ) );
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
    int par1 = hb_parni(1);
    obj->setRenderableType (  (QSurfaceFormat::RenderableType) par1 );
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
    hb_retni( obj->renderableType (  ) );
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
    obj->setMajorVersion ( (int) hb_parni(1) );
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
    hb_retni( obj->majorVersion (  ) );
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
    obj->setMinorVersion ( (int) hb_parni(1) );
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
    hb_retni( obj->minorVersion (  ) );
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
    hb_retl( obj->stereo (  ) );
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
    obj->setStereo ( (bool) hb_parl(1) );
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
    obj->setOption (  (QSurfaceFormat::FormatOptions) par1 );
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
    hb_retl( obj->testOption (  (QSurfaceFormat::FormatOptions) par1 ) );
  }
}



HB_FUNC_STATIC( QSURFACEFORMAT_NEWFROM )
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

HB_FUNC_STATIC( QSURFACEFORMAT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSURFACEFORMAT_NEWFROM );
}

HB_FUNC_STATIC( QSURFACEFORMAT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSURFACEFORMAT_NEWFROM );
}

HB_FUNC_STATIC( QSURFACEFORMAT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSURFACEFORMAT_SETSELFDESTRUCTION )
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