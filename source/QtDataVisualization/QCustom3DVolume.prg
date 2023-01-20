/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QIMAGE
REQUEST QVECTOR3D
#endif

CLASS QCustom3DVolume INHERIT QCustom3DItem

   METHOD new
   METHOD delete
   METHOD textureWidth
   METHOD setTextureWidth
   METHOD textureHeight
   METHOD setTextureHeight
   METHOD textureDepth
   METHOD setTextureDepth
   METHOD sliceIndexX
   METHOD setSliceIndexX
   METHOD sliceIndexY
   METHOD setSliceIndexY
   METHOD sliceIndexZ
   METHOD setSliceIndexZ
   METHOD alphaMultiplier
   METHOD setAlphaMultiplier
   METHOD preserveOpacity
   METHOD setPreserveOpacity
   METHOD useHighDefShader
   METHOD setUseHighDefShader
   METHOD drawSlices
   METHOD setDrawSlices
   METHOD drawSliceFrames
   METHOD setDrawSliceFrames
   METHOD sliceFrameColor
   METHOD setSliceFrameColor
   METHOD sliceFrameWidths
   METHOD setSliceFrameWidths
   METHOD sliceFrameGaps
   METHOD setSliceFrameGaps
   METHOD sliceFrameThicknesses
   METHOD setSliceFrameThicknesses
   METHOD setTextureDimensions
   METHOD textureDataWidth
   METHOD setSliceIndices
   METHOD setSubTextureData
   METHOD setTextureFormat
   METHOD textureFormat
   METHOD renderSlice

   METHOD onAlphaMultiplierChanged
   METHOD onColorTableChanged
   METHOD onDrawSliceFramesChanged
   METHOD onDrawSlicesChanged
   METHOD onPreserveOpacityChanged
   METHOD onSliceFrameColorChanged
   METHOD onSliceFrameGapsChanged
   METHOD onSliceFrameThicknessesChanged
   METHOD onSliceFrameWidthsChanged
   METHOD onSliceIndexXChanged
   METHOD onSliceIndexYChanged
   METHOD onSliceIndexZChanged
   METHOD onTextureDepthChanged
   METHOD onTextureFormatChanged
   METHOD onTextureHeightChanged
   METHOD onTextureWidthChanged
   METHOD onUseHighDefShaderChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCustom3DVolume
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/QCustom3DVolume>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDataVisualization/QCustom3DVolume>
#endif

using namespace QtDataVisualization;

HB_FUNC_STATIC( QCUSTOM3DVOLUME_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    /*
    QCustom3DVolume( QObject * parent = nullptr )
    */
    QCustom3DVolume * obj = new QCustom3DVolume( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~QCustom3DVolume()
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_DELETE )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int textureWidth() const
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_TEXTUREWIDTH )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->textureWidth() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setTextureWidth( int value )
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SETTEXTUREWIDTH )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setTextureWidth( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int textureHeight() const
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_TEXTUREHEIGHT )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->textureHeight() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setTextureHeight( int value )
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SETTEXTUREHEIGHT )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setTextureHeight( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int textureDepth() const
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_TEXTUREDEPTH )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->textureDepth() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setTextureDepth( int value )
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SETTEXTUREDEPTH )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setTextureDepth( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int sliceIndexX() const
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SLICEINDEXX )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->sliceIndexX() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setSliceIndexX( int value )
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SETSLICEINDEXX )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setSliceIndexX( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int sliceIndexY() const
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SLICEINDEXY )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->sliceIndexY() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setSliceIndexY( int value )
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SETSLICEINDEXY )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setSliceIndexY( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int sliceIndexZ() const
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SLICEINDEXZ )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->sliceIndexZ() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setSliceIndexZ( int value )
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SETSLICEINDEXZ )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setSliceIndexZ( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
float alphaMultiplier() const
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_ALPHAMULTIPLIER )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->alphaMultiplier() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setAlphaMultiplier( float mult )
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SETALPHAMULTIPLIER )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setAlphaMultiplier( PFLOAT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool preserveOpacity() const
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_PRESERVEOPACITY )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->preserveOpacity() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setPreserveOpacity( bool enable )
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SETPRESERVEOPACITY )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setPreserveOpacity( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool useHighDefShader() const
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_USEHIGHDEFSHADER )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->useHighDefShader() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setUseHighDefShader( bool enable )
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SETUSEHIGHDEFSHADER )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setUseHighDefShader( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool drawSlices() const
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_DRAWSLICES )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->drawSlices() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setDrawSlices( bool enable )
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SETDRAWSLICES )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setDrawSlices( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool drawSliceFrames() const
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_DRAWSLICEFRAMES )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->drawSliceFrames() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setDrawSliceFrames( bool enable )
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SETDRAWSLICEFRAMES )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setDrawSliceFrames( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QColor sliceFrameColor() const
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SLICEFRAMECOLOR )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->sliceFrameColor() );
      Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setSliceFrameColor( const QColor & color )
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SETSLICEFRAMECOLOR )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||HB_ISCHAR(1)) )
    {
#endif
      obj->setSliceFrameColor( HB_ISOBJECT(1)? *(QColor *) Qt5xHb::itemGetPtr(1) : QColor(hb_parc(1)) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QVector3D sliceFrameWidths() const
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SLICEFRAMEWIDTHS )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector3D * ptr = new QVector3D( obj->sliceFrameWidths() );
      Qt5xHb::createReturnClass(ptr, "QVECTOR3D", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setSliceFrameWidths( const QVector3D & values )
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SETSLICEFRAMEWIDTHS )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVECTOR3D(1) )
    {
#endif
      obj->setSliceFrameWidths( *PQVECTOR3D(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QVector3D sliceFrameGaps() const
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SLICEFRAMEGAPS )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector3D * ptr = new QVector3D( obj->sliceFrameGaps() );
      Qt5xHb::createReturnClass(ptr, "QVECTOR3D", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setSliceFrameGaps( const QVector3D & values )
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SETSLICEFRAMEGAPS )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVECTOR3D(1) )
    {
#endif
      obj->setSliceFrameGaps( *PQVECTOR3D(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QVector3D sliceFrameThicknesses() const
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SLICEFRAMETHICKNESSES )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector3D * ptr = new QVector3D( obj->sliceFrameThicknesses() );
      Qt5xHb::createReturnClass(ptr, "QVECTOR3D", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setSliceFrameThicknesses( const QVector3D & values )
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SETSLICEFRAMETHICKNESSES )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVECTOR3D(1) )
    {
#endif
      obj->setSliceFrameThicknesses( *PQVECTOR3D(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setTextureDimensions( int width, int height, int depth )
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SETTEXTUREDIMENSIONS )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) )
    {
#endif
      obj->setTextureDimensions( PINT(1), PINT(2), PINT(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int textureDataWidth() const
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_TEXTUREDATAWIDTH )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->textureDataWidth() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setSliceIndices( int x, int y, int z )
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SETSLICEINDICES )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) )
    {
#endif
      obj->setSliceIndices( PINT(1), PINT(2), PINT(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QCUSTOM3DVOLUME_SETSUBTEXTUREDATA )
{
  if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISCHAR(3) )
  {
    /*
    void setSubTextureData( Qt::Axis axis, int index, const uchar * data )
    */
    QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      obj->setSubTextureData( (Qt::Axis) hb_parni(1), PINT(2), PCONSTUCHAR(3) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && ISQIMAGE(3) )
  {
    /*
    void setSubTextureData( Qt::Axis axis, int index, const QImage & image )
    */
    QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      obj->setSubTextureData( (Qt::Axis) hb_parni(1), PINT(2), *PQIMAGE(3) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setTextureFormat( QImage::Format format )
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_SETTEXTUREFORMAT )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setTextureFormat( (QImage::Format) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QImage::Format textureFormat() const
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_TEXTUREFORMAT )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->textureFormat() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QImage renderSlice( Qt::Axis axis, int index )
*/
HB_FUNC_STATIC( QCUSTOM3DVOLUME_RENDERSLICE )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      QImage * ptr = new QImage( obj->renderSlice( (Qt::Axis) hb_parni(1), PINT(2) ) );
      Qt5xHb::createReturnClass(ptr, "QIMAGE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QCustom3DVolumeSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QCUSTOM3DVOLUME_ONALPHAMULTIPLIERCHANGED )
{
  QCustom3DVolumeSlots_connect_signal("alphaMultiplierChanged(float)", "alphaMultiplierChanged(float)");
}

HB_FUNC_STATIC( QCUSTOM3DVOLUME_ONCOLORTABLECHANGED )
{
  QCustom3DVolumeSlots_connect_signal("colorTableChanged()", "colorTableChanged()");
}

HB_FUNC_STATIC( QCUSTOM3DVOLUME_ONDRAWSLICEFRAMESCHANGED )
{
  QCustom3DVolumeSlots_connect_signal("drawSliceFramesChanged(bool)", "drawSliceFramesChanged(bool)");
}

HB_FUNC_STATIC( QCUSTOM3DVOLUME_ONDRAWSLICESCHANGED )
{
  QCustom3DVolumeSlots_connect_signal("drawSlicesChanged(bool)", "drawSlicesChanged(bool)");
}

HB_FUNC_STATIC( QCUSTOM3DVOLUME_ONPRESERVEOPACITYCHANGED )
{
  QCustom3DVolumeSlots_connect_signal("preserveOpacityChanged(bool)", "preserveOpacityChanged(bool)");
}

HB_FUNC_STATIC( QCUSTOM3DVOLUME_ONSLICEFRAMECOLORCHANGED )
{
  QCustom3DVolumeSlots_connect_signal("sliceFrameColorChanged(QColor)", "sliceFrameColorChanged(QColor)");
}

HB_FUNC_STATIC( QCUSTOM3DVOLUME_ONSLICEFRAMEGAPSCHANGED )
{
  QCustom3DVolumeSlots_connect_signal("sliceFrameGapsChanged(QVector3D)", "sliceFrameGapsChanged(QVector3D)");
}

HB_FUNC_STATIC( QCUSTOM3DVOLUME_ONSLICEFRAMETHICKNESSESCHANGED )
{
  QCustom3DVolumeSlots_connect_signal("sliceFrameThicknessesChanged(QVector3D)", "sliceFrameThicknessesChanged(QVector3D)");
}

HB_FUNC_STATIC( QCUSTOM3DVOLUME_ONSLICEFRAMEWIDTHSCHANGED )
{
  QCustom3DVolumeSlots_connect_signal("sliceFrameWidthsChanged(QVector3D)", "sliceFrameWidthsChanged(QVector3D)");
}

HB_FUNC_STATIC( QCUSTOM3DVOLUME_ONSLICEINDEXXCHANGED )
{
  QCustom3DVolumeSlots_connect_signal("sliceIndexXChanged(int)", "sliceIndexXChanged(int)");
}

HB_FUNC_STATIC( QCUSTOM3DVOLUME_ONSLICEINDEXYCHANGED )
{
  QCustom3DVolumeSlots_connect_signal("sliceIndexYChanged(int)", "sliceIndexYChanged(int)");
}

HB_FUNC_STATIC( QCUSTOM3DVOLUME_ONSLICEINDEXZCHANGED )
{
  QCustom3DVolumeSlots_connect_signal("sliceIndexZChanged(int)", "sliceIndexZChanged(int)");
}

HB_FUNC_STATIC( QCUSTOM3DVOLUME_ONTEXTUREDEPTHCHANGED )
{
  QCustom3DVolumeSlots_connect_signal("textureDepthChanged(int)", "textureDepthChanged(int)");
}

HB_FUNC_STATIC( QCUSTOM3DVOLUME_ONTEXTUREFORMATCHANGED )
{
  QCustom3DVolumeSlots_connect_signal("textureFormatChanged(QImage::Format)", "textureFormatChanged(QImage::Format)");
}

HB_FUNC_STATIC( QCUSTOM3DVOLUME_ONTEXTUREHEIGHTCHANGED )
{
  QCustom3DVolumeSlots_connect_signal("textureHeightChanged(int)", "textureHeightChanged(int)");
}

HB_FUNC_STATIC( QCUSTOM3DVOLUME_ONTEXTUREWIDTHCHANGED )
{
  QCustom3DVolumeSlots_connect_signal("textureWidthChanged(int)", "textureWidthChanged(int)");
}

HB_FUNC_STATIC( QCUSTOM3DVOLUME_ONUSEHIGHDEFSHADERCHANGED )
{
  QCustom3DVolumeSlots_connect_signal("useHighDefShaderChanged(bool)", "useHighDefShaderChanged(bool)");
}

#pragma ENDDUMP
