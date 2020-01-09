/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST Q3DCAMERA
REQUEST Q3DLIGHT
REQUEST QPOINT
REQUEST QRECT
#endif

CLASS Q3DScene INHERIT QObject

   METHOD new
   METHOD delete
   METHOD viewport
   METHOD primarySubViewport
   METHOD setPrimarySubViewport
   METHOD secondarySubViewport
   METHOD setSecondarySubViewport
   METHOD selectionQueryPosition
   METHOD setSelectionQueryPosition
   METHOD isSecondarySubviewOnTop
   METHOD setSecondarySubviewOnTop
   METHOD isSlicingActive
   METHOD setSlicingActive
   METHOD activeCamera
   METHOD setActiveCamera
   METHOD activeLight
   METHOD setActiveLight
   METHOD devicePixelRatio
   METHOD setDevicePixelRatio
   METHOD graphPositionQuery
   METHOD setGraphPositionQuery
   METHOD isPointInPrimarySubView
   METHOD isPointInSecondarySubView
   METHOD invalidSelectionPoint

   METHOD onActiveCameraChanged
   METHOD onActiveLightChanged
   METHOD onDevicePixelRatioChanged
   METHOD onGraphPositionQueryChanged
   METHOD onPrimarySubViewportChanged
   METHOD onSecondarySubviewOnTopChanged
   METHOD onSecondarySubViewportChanged
   METHOD onSelectionQueryPositionChanged
   METHOD onSlicingActiveChanged
   METHOD onViewportChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS Q3DScene
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/Q3DScene>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtDataVisualization/Q3DScene>
#endif

using namespace QtDataVisualization;

/*
explicit Q3DScene(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( Q3DSCENE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    Q3DScene * o = new Q3DScene ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~Q3DScene()
*/
HB_FUNC_STATIC( Q3DSCENE_DELETE )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

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
QRect viewport() const
*/
HB_FUNC_STATIC( Q3DSCENE_VIEWPORT )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRect * ptr = new QRect( obj->viewport () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
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
QRect primarySubViewport() const
*/
HB_FUNC_STATIC( Q3DSCENE_PRIMARYSUBVIEWPORT )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRect * ptr = new QRect( obj->primarySubViewport () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
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
void setPrimarySubViewport(const QRect &primarySubViewport)
*/
HB_FUNC_STATIC( Q3DSCENE_SETPRIMARYSUBVIEWPORT )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
#endif
      obj->setPrimarySubViewport ( *PQRECT(1) );
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
QRect secondarySubViewport() const
*/
HB_FUNC_STATIC( Q3DSCENE_SECONDARYSUBVIEWPORT )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRect * ptr = new QRect( obj->secondarySubViewport () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
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
void setSecondarySubViewport(const QRect &secondarySubViewport)
*/
HB_FUNC_STATIC( Q3DSCENE_SETSECONDARYSUBVIEWPORT )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
#endif
      obj->setSecondarySubViewport ( *PQRECT(1) );
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
QPoint selectionQueryPosition() const
*/
HB_FUNC_STATIC( Q3DSCENE_SELECTIONQUERYPOSITION )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPoint * ptr = new QPoint( obj->selectionQueryPosition () );
      _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
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
void setSelectionQueryPosition(const QPoint &point)
*/
HB_FUNC_STATIC( Q3DSCENE_SETSELECTIONQUERYPOSITION )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
#endif
      obj->setSelectionQueryPosition ( *PQPOINT(1) );
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
bool isSecondarySubviewOnTop() const
*/
HB_FUNC_STATIC( Q3DSCENE_ISSECONDARYSUBVIEWONTOP )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSecondarySubviewOnTop () );
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
void setSecondarySubviewOnTop(bool isSecondaryOnTop)
*/
HB_FUNC_STATIC( Q3DSCENE_SETSECONDARYSUBVIEWONTOP )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setSecondarySubviewOnTop ( PBOOL(1) );
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
bool isSlicingActive() const
*/
HB_FUNC_STATIC( Q3DSCENE_ISSLICINGACTIVE )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSlicingActive () );
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
void setSlicingActive(bool isSlicing)
*/
HB_FUNC_STATIC( Q3DSCENE_SETSLICINGACTIVE )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setSlicingActive ( PBOOL(1) );
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
Q3DCamera *activeCamera() const
*/
HB_FUNC_STATIC( Q3DSCENE_ACTIVECAMERA )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      Q3DCamera * ptr = obj->activeCamera ();
      _qt5xhb_createReturnQObjectClass ( ptr, "Q3DCAMERA" );
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
void setActiveCamera(Q3DCamera *camera)
*/
HB_FUNC_STATIC( Q3DSCENE_SETACTIVECAMERA )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQ3DCAMERA(1) )
    {
#endif
      obj->setActiveCamera ( PQ3DCAMERA(1) );
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
Q3DLight *activeLight() const
*/
HB_FUNC_STATIC( Q3DSCENE_ACTIVELIGHT )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      Q3DLight * ptr = obj->activeLight ();
      _qt5xhb_createReturnQObjectClass ( ptr, "Q3DLIGHT" );
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
void setActiveLight(Q3DLight *light)
*/
HB_FUNC_STATIC( Q3DSCENE_SETACTIVELIGHT )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQ3DLIGHT(1) )
    {
#endif
      obj->setActiveLight ( PQ3DLIGHT(1) );
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
float devicePixelRatio() const
*/
HB_FUNC_STATIC( Q3DSCENE_DEVICEPIXELRATIO )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->devicePixelRatio () );
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
void setDevicePixelRatio(float pixelRatio)
*/
HB_FUNC_STATIC( Q3DSCENE_SETDEVICEPIXELRATIO )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setDevicePixelRatio ( PFLOAT(1) );
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
QPoint graphPositionQuery() const
*/
HB_FUNC_STATIC( Q3DSCENE_GRAPHPOSITIONQUERY )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPoint * ptr = new QPoint( obj->graphPositionQuery () );
      _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
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
void setGraphPositionQuery(const QPoint &point)
*/
HB_FUNC_STATIC( Q3DSCENE_SETGRAPHPOSITIONQUERY )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
#endif
      obj->setGraphPositionQuery ( *PQPOINT(1) );
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
bool isPointInPrimarySubView(const QPoint &point)
*/
HB_FUNC_STATIC( Q3DSCENE_ISPOINTINPRIMARYSUBVIEW )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
#endif
      RBOOL( obj->isPointInPrimarySubView ( *PQPOINT(1) ) );
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
bool isPointInSecondarySubView(const QPoint &point)
*/
HB_FUNC_STATIC( Q3DSCENE_ISPOINTINSECONDARYSUBVIEW )
{
  Q3DScene * obj = (Q3DScene *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
#endif
      RBOOL( obj->isPointInSecondarySubView ( *PQPOINT(1) ) );
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
static QPoint invalidSelectionPoint()
*/
HB_FUNC_STATIC( Q3DSCENE_INVALIDSELECTIONPOINT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      QPoint * ptr = new QPoint( Q3DScene::invalidSelectionPoint () );
      _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

void Q3DSceneSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( Q3DSCENE_ONACTIVECAMERACHANGED )
{
  Q3DSceneSlots_connect_signal( "activeCameraChanged(Q3DCamera*)", "activeCameraChanged(Q3DCamera*)" );
}

HB_FUNC_STATIC( Q3DSCENE_ONACTIVELIGHTCHANGED )
{
  Q3DSceneSlots_connect_signal( "activeLightChanged(Q3DLight*)", "activeLightChanged(Q3DLight*)" );
}

HB_FUNC_STATIC( Q3DSCENE_ONDEVICEPIXELRATIOCHANGED )
{
  Q3DSceneSlots_connect_signal( "devicePixelRatioChanged(float)", "devicePixelRatioChanged(float)" );
}

HB_FUNC_STATIC( Q3DSCENE_ONGRAPHPOSITIONQUERYCHANGED )
{
  Q3DSceneSlots_connect_signal( "graphPositionQueryChanged(QPoint)", "graphPositionQueryChanged(QPoint)" );
}

HB_FUNC_STATIC( Q3DSCENE_ONPRIMARYSUBVIEWPORTCHANGED )
{
  Q3DSceneSlots_connect_signal( "primarySubViewportChanged(QRect)", "primarySubViewportChanged(QRect)" );
}

HB_FUNC_STATIC( Q3DSCENE_ONSECONDARYSUBVIEWONTOPCHANGED )
{
  Q3DSceneSlots_connect_signal( "secondarySubviewOnTopChanged(bool)", "secondarySubviewOnTopChanged(bool)" );
}

HB_FUNC_STATIC( Q3DSCENE_ONSECONDARYSUBVIEWPORTCHANGED )
{
  Q3DSceneSlots_connect_signal( "secondarySubViewportChanged(QRect)", "secondarySubViewportChanged(QRect)" );
}

HB_FUNC_STATIC( Q3DSCENE_ONSELECTIONQUERYPOSITIONCHANGED )
{
  Q3DSceneSlots_connect_signal( "selectionQueryPositionChanged(QPoint)", "selectionQueryPositionChanged(QPoint)" );
}

HB_FUNC_STATIC( Q3DSCENE_ONSLICINGACTIVECHANGED )
{
  Q3DSceneSlots_connect_signal( "slicingActiveChanged(bool)", "slicingActiveChanged(bool)" );
}

HB_FUNC_STATIC( Q3DSCENE_ONVIEWPORTCHANGED )
{
  Q3DSceneSlots_connect_signal( "viewportChanged(QRect)", "viewportChanged(QRect)" );
}

#pragma ENDDUMP
