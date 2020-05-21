/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST Q3DSCENE
REQUEST Q3DTHEME
REQUEST QABSTRACT3DAXIS
REQUEST QABSTRACT3DINPUTHANDLER
REQUEST QCUSTOM3DITEM
REQUEST QIMAGE
REQUEST QLOCALE
REQUEST QVECTOR3D
#endif

CLASS QAbstract3DGraph INHERIT QWindow

   METHOD delete
   METHOD activeInputHandler
   METHOD setActiveInputHandler
   METHOD activeTheme
   METHOD setActiveTheme
   METHOD selectionMode
   METHOD setSelectionMode
   METHOD shadowQuality
   METHOD setShadowQuality
   METHOD scene
   METHOD measureFps
   METHOD setMeasureFps
   METHOD currentFps
   METHOD isOrthoProjection
   METHOD setOrthoProjection
   METHOD selectedElement
   METHOD aspectRatio
   METHOD setAspectRatio
   METHOD optimizationHints
   METHOD setOptimizationHints
   METHOD isPolar
   METHOD setPolar
   METHOD radialLabelOffset
   METHOD setRadialLabelOffset
   METHOD horizontalAspectRatio
   METHOD setHorizontalAspectRatio
   METHOD isReflection
   METHOD setReflection
   METHOD reflectivity
   METHOD setReflectivity
   METHOD locale
   METHOD setLocale
   METHOD queriedGraphPosition
   METHOD margin
   METHOD setMargin
   METHOD addInputHandler
   METHOD releaseInputHandler
   METHOD inputHandlers
   METHOD addTheme
   METHOD releaseTheme
   METHOD themes
   METHOD shadowsSupported
   METHOD clearSelection
   METHOD addCustomItem
   METHOD removeCustomItems
   METHOD removeCustomItem
   METHOD removeCustomItemAt
   METHOD releaseCustomItem
   METHOD customItems
   METHOD selectedAxis
   METHOD selectedLabelIndex
   METHOD selectedCustomItemIndex
   METHOD selectedCustomItem
   METHOD renderToImage
   METHOD hasContext

   METHOD onActiveInputHandlerChanged
   METHOD onActiveThemeChanged
   METHOD onAspectRatioChanged
   METHOD onCurrentFpsChanged
   METHOD onHorizontalAspectRatioChanged
   METHOD onLocaleChanged
   METHOD onMarginChanged
   METHOD onMeasureFpsChanged
   METHOD onOptimizationHintsChanged
   METHOD onOrthoProjectionChanged
   METHOD onPolarChanged
   METHOD onQueriedGraphPositionChanged
   METHOD onRadialLabelOffsetChanged
   METHOD onReflectionChanged
   METHOD onReflectivityChanged
   METHOD onSelectedElementChanged
   METHOD onSelectionModeChanged
   METHOD onShadowQualityChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstract3DGraph
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/QAbstract3DGraph>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDataVisualization/QAbstract3DGraph>
#endif

#include <QtDataVisualization/QAbstract3DAxis>
#include <QtDataVisualization/QCustom3DItem>

using namespace QtDataVisualization;

/*
explicit QAbstract3DGraph(QAbstract3DGraphPrivate *d, const QSurfaceFormat *format, QWindow *parent = Q_NULLPTR) [protected]
*/

/*
virtual ~QAbstract3DGraph()
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_DELETE )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Signals_disconnect_all_signals( obj, true );
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
QAbstract3DInputHandler *activeInputHandler() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_ACTIVEINPUTHANDLER )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstract3DInputHandler * ptr = obj->activeInputHandler();
      Qt5xHb::createReturnQObjectClass( ptr, "QABSTRACT3DINPUTHANDLER" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setActiveInputHandler(QAbstract3DInputHandler *inputHandler)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SETACTIVEINPUTHANDLER )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACT3DINPUTHANDLER(1) )
    {
#endif
      obj->setActiveInputHandler( PQABSTRACT3DINPUTHANDLER(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Q3DTheme *activeTheme() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_ACTIVETHEME )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      Q3DTheme * ptr = obj->activeTheme();
      Qt5xHb::createReturnQObjectClass( ptr, "Q3DTHEME" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setActiveTheme(Q3DTheme *theme)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SETACTIVETHEME )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQ3DTHEME(1) )
    {
#endif
      obj->setActiveTheme( PQ3DTHEME(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
SelectionFlags selectionMode() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SELECTIONMODE )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->selectionMode() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setSelectionMode(SelectionFlags mode)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SETSELECTIONMODE )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSelectionMode( (QAbstract3DGraph::SelectionFlags) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
ShadowQuality shadowQuality() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SHADOWQUALITY )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->shadowQuality() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setShadowQuality(ShadowQuality quality)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SETSHADOWQUALITY )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setShadowQuality( (QAbstract3DGraph::ShadowQuality) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Q3DScene *scene() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SCENE )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      Q3DScene * ptr = obj->scene();
      Qt5xHb::createReturnQObjectClass( ptr, "Q3DSCENE" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool measureFps() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_MEASUREFPS )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->measureFps() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setMeasureFps(bool enable)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SETMEASUREFPS )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setMeasureFps( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal currentFps() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_CURRENTFPS )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->currentFps() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isOrthoProjection() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_ISORTHOPROJECTION )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isOrthoProjection() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setOrthoProjection(bool enable)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SETORTHOPROJECTION )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setOrthoProjection( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
ElementType selectedElement() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SELECTEDELEMENT )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->selectedElement() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal aspectRatio() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_ASPECTRATIO )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->aspectRatio() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setAspectRatio(qreal ratio)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SETASPECTRATIO )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setAspectRatio( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
OptimizationHints optimizationHints() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_OPTIMIZATIONHINTS )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->optimizationHints() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setOptimizationHints(OptimizationHints hints)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SETOPTIMIZATIONHINTS )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setOptimizationHints( (QAbstract3DGraph::OptimizationHints) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isPolar() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_ISPOLAR )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isPolar() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setPolar(bool enable)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SETPOLAR )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setPolar( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
float radialLabelOffset() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_RADIALLABELOFFSET )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->radialLabelOffset() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setRadialLabelOffset(float offset)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SETRADIALLABELOFFSET )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setRadialLabelOffset( PFLOAT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal horizontalAspectRatio() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_HORIZONTALASPECTRATIO )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->horizontalAspectRatio() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setHorizontalAspectRatio(qreal ratio)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SETHORIZONTALASPECTRATIO )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setHorizontalAspectRatio( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isReflection() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_ISREFLECTION )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isReflection() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setReflection(bool enable)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SETREFLECTION )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setReflection( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal reflectivity() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_REFLECTIVITY )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->reflectivity() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setReflectivity(qreal reflectivity)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SETREFLECTIVITY )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setReflectivity( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QLocale locale() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_LOCALE )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QLocale * ptr = new QLocale( obj->locale() );
      Qt5xHb::createReturnClass( ptr, "QLOCALE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setLocale(const QLocale &locale)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SETLOCALE )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLOCALE(1) )
    {
#endif
      obj->setLocale( *PQLOCALE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QVector3D queriedGraphPosition() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_QUERIEDGRAPHPOSITION )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector3D * ptr = new QVector3D( obj->queriedGraphPosition() );
      Qt5xHb::createReturnClass( ptr, "QVECTOR3D", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal margin() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_MARGIN )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->margin() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setMargin(qreal margin)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SETMARGIN )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMargin( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addInputHandler(QAbstract3DInputHandler *inputHandler)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_ADDINPUTHANDLER )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACT3DINPUTHANDLER(1) )
    {
#endif
      obj->addInputHandler( PQABSTRACT3DINPUTHANDLER(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void releaseInputHandler(QAbstract3DInputHandler *inputHandler)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_RELEASEINPUTHANDLER )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACT3DINPUTHANDLER(1) )
    {
#endif
      obj->releaseInputHandler( PQABSTRACT3DINPUTHANDLER(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QAbstract3DInputHandler *> inputHandlers() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_INPUTHANDLERS )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QAbstract3DInputHandler *> list = obj->inputHandlers();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QABSTRACT3DINPUTHANDLER" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QAbstract3DInputHandler *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QABSTRACT3DINPUTHANDLER", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void addTheme(Q3DTheme *theme)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_ADDTHEME )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQ3DTHEME(1) )
    {
#endif
      obj->addTheme( PQ3DTHEME(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void releaseTheme(Q3DTheme *theme)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_RELEASETHEME )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQ3DTHEME(1) )
    {
#endif
      obj->releaseTheme( PQ3DTHEME(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<Q3DTheme *> themes() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_THEMES )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<Q3DTheme *> list = obj->themes();
      PHB_DYNS pDynSym = hb_dynsymFindName( "Q3DTHEME" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (Q3DTheme *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "Q3DTHEME", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool shadowsSupported() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SHADOWSSUPPORTED )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->shadowsSupported() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void clearSelection()
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_CLEARSELECTION )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearSelection();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int addCustomItem(QCustom3DItem *item)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_ADDCUSTOMITEM )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCUSTOM3DITEM(1) )
    {
#endif
      RINT( obj->addCustomItem( PQCUSTOM3DITEM(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void removeCustomItems()
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_REMOVECUSTOMITEMS )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->removeCustomItems();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeCustomItem(QCustom3DItem *item)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_REMOVECUSTOMITEM )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCUSTOM3DITEM(1) )
    {
#endif
      obj->removeCustomItem( PQCUSTOM3DITEM(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeCustomItemAt(const QVector3D &position)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_REMOVECUSTOMITEMAT )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVECTOR3D(1) )
    {
#endif
      obj->removeCustomItemAt( *PQVECTOR3D(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void releaseCustomItem(QCustom3DItem *item)
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_RELEASECUSTOMITEM )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCUSTOM3DITEM(1) )
    {
#endif
      obj->releaseCustomItem( PQCUSTOM3DITEM(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QCustom3DItem *> customItems() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_CUSTOMITEMS )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QCustom3DItem *> list = obj->customItems();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QCUSTOM3DITEM" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QCustom3DItem *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QCUSTOM3DITEM", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QAbstract3DAxis *selectedAxis() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SELECTEDAXIS )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstract3DAxis * ptr = obj->selectedAxis();
      Qt5xHb::createReturnQObjectClass( ptr, "QABSTRACT3DAXIS" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int selectedLabelIndex() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SELECTEDLABELINDEX )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->selectedLabelIndex() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int selectedCustomItemIndex() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SELECTEDCUSTOMITEMINDEX )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->selectedCustomItemIndex() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QCustom3DItem *selectedCustomItem() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_SELECTEDCUSTOMITEM )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCustom3DItem * ptr = obj->selectedCustomItem();
      Qt5xHb::createReturnQObjectClass( ptr, "QCUSTOM3DITEM" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QImage renderToImage(int msaaSamples = 0, const QSize &imageSize = QSize())
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_RENDERTOIMAGE )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,2) && ISOPTNUM(1) && (ISQSIZE(2)||ISNIL(2)) )
    {
#endif
      QImage * ptr = new QImage( obj->renderToImage( OPINT(1,0), ISNIL(2)? QSize() : *(QSize *) Qt5xHb::itemGetPtr(2) ) );
      Qt5xHb::createReturnClass( ptr, "QIMAGE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool hasContext() const
*/
HB_FUNC_STATIC( QABSTRACT3DGRAPH_HASCONTEXT )
{
  QAbstract3DGraph * obj = (QAbstract3DGraph *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasContext() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool event(QEvent *event) [protected]
*/

/*
void resizeEvent(QResizeEvent *event) [protected]
*/

/*
void exposeEvent(QExposeEvent *event) [protected]
*/

/*
void mouseDoubleClickEvent(QMouseEvent *event) [protected]
*/

/*
void touchEvent(QTouchEvent *event) [protected]
*/

/*
void mousePressEvent(QMouseEvent *event) [protected]
*/

/*
void mouseReleaseEvent(QMouseEvent *event) [protected]
*/

/*
void mouseMoveEvent(QMouseEvent *event) [protected]
*/

/*
void wheelEvent(QWheelEvent *event) [protected]
*/

void QAbstract3DGraphSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QABSTRACT3DGRAPH_ONACTIVEINPUTHANDLERCHANGED )
{
  QAbstract3DGraphSlots_connect_signal( "activeInputHandlerChanged(QAbstract3DInputHandler*)", "activeInputHandlerChanged(QAbstract3DInputHandler*)" );
}

HB_FUNC_STATIC( QABSTRACT3DGRAPH_ONACTIVETHEMECHANGED )
{
  QAbstract3DGraphSlots_connect_signal( "activeThemeChanged(Q3DTheme*)", "activeThemeChanged(Q3DTheme*)" );
}

HB_FUNC_STATIC( QABSTRACT3DGRAPH_ONASPECTRATIOCHANGED )
{
  QAbstract3DGraphSlots_connect_signal( "aspectRatioChanged(qreal)", "aspectRatioChanged(qreal)" );
}

HB_FUNC_STATIC( QABSTRACT3DGRAPH_ONCURRENTFPSCHANGED )
{
  QAbstract3DGraphSlots_connect_signal( "currentFpsChanged(qreal)", "currentFpsChanged(qreal)" );
}

HB_FUNC_STATIC( QABSTRACT3DGRAPH_ONHORIZONTALASPECTRATIOCHANGED )
{
  QAbstract3DGraphSlots_connect_signal( "horizontalAspectRatioChanged(qreal)", "horizontalAspectRatioChanged(qreal)" );
}

HB_FUNC_STATIC( QABSTRACT3DGRAPH_ONLOCALECHANGED )
{
  QAbstract3DGraphSlots_connect_signal( "localeChanged(QLocale)", "localeChanged(QLocale)" );
}

HB_FUNC_STATIC( QABSTRACT3DGRAPH_ONMARGINCHANGED )
{
  QAbstract3DGraphSlots_connect_signal( "marginChanged(qreal)", "marginChanged(qreal)" );
}

HB_FUNC_STATIC( QABSTRACT3DGRAPH_ONMEASUREFPSCHANGED )
{
  QAbstract3DGraphSlots_connect_signal( "measureFpsChanged(bool)", "measureFpsChanged(bool)" );
}

HB_FUNC_STATIC( QABSTRACT3DGRAPH_ONOPTIMIZATIONHINTSCHANGED )
{
  QAbstract3DGraphSlots_connect_signal( "optimizationHintsChanged(QAbstract3DGraph::OptimizationHints)", "optimizationHintsChanged(QAbstract3DGraph::OptimizationHints)" );
}

HB_FUNC_STATIC( QABSTRACT3DGRAPH_ONORTHOPROJECTIONCHANGED )
{
  QAbstract3DGraphSlots_connect_signal( "orthoProjectionChanged(bool)", "orthoProjectionChanged(bool)" );
}

HB_FUNC_STATIC( QABSTRACT3DGRAPH_ONPOLARCHANGED )
{
  QAbstract3DGraphSlots_connect_signal( "polarChanged(bool)", "polarChanged(bool)" );
}

HB_FUNC_STATIC( QABSTRACT3DGRAPH_ONQUERIEDGRAPHPOSITIONCHANGED )
{
  QAbstract3DGraphSlots_connect_signal( "queriedGraphPositionChanged(QVector3D)", "queriedGraphPositionChanged(QVector3D)" );
}

HB_FUNC_STATIC( QABSTRACT3DGRAPH_ONRADIALLABELOFFSETCHANGED )
{
  QAbstract3DGraphSlots_connect_signal( "radialLabelOffsetChanged(float)", "radialLabelOffsetChanged(float)" );
}

HB_FUNC_STATIC( QABSTRACT3DGRAPH_ONREFLECTIONCHANGED )
{
  QAbstract3DGraphSlots_connect_signal( "reflectionChanged(bool)", "reflectionChanged(bool)" );
}

HB_FUNC_STATIC( QABSTRACT3DGRAPH_ONREFLECTIVITYCHANGED )
{
  QAbstract3DGraphSlots_connect_signal( "reflectivityChanged(qreal)", "reflectivityChanged(qreal)" );
}

HB_FUNC_STATIC( QABSTRACT3DGRAPH_ONSELECTEDELEMENTCHANGED )
{
  QAbstract3DGraphSlots_connect_signal( "selectedElementChanged(QAbstract3DGraph::ElementType)", "selectedElementChanged(QAbstract3DGraph::ElementType)" );
}

HB_FUNC_STATIC( QABSTRACT3DGRAPH_ONSELECTIONMODECHANGED )
{
  QAbstract3DGraphSlots_connect_signal( "selectionModeChanged(QAbstract3DGraph::SelectionFlags)", "selectionModeChanged(QAbstract3DGraph::SelectionFlags)" );
}

HB_FUNC_STATIC( QABSTRACT3DGRAPH_ONSHADOWQUALITYCHANGED )
{
  QAbstract3DGraphSlots_connect_signal( "shadowQualityChanged(QAbstract3DGraph::ShadowQuality)", "shadowQualityChanged(QAbstract3DGraph::ShadowQuality)" );
}

#pragma ENDDUMP
