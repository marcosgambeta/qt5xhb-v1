/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCATTER3DSERIES
REQUEST QVALUE3DAXIS
#endif

CLASS Q3DScatter INHERIT QAbstract3DGraph

   METHOD new
   METHOD delete
   METHOD axisX
   METHOD setAxisX
   METHOD axisY
   METHOD setAxisY
   METHOD axisZ
   METHOD setAxisZ
   METHOD selectedSeries
   METHOD addSeries
   METHOD removeSeries
   METHOD seriesList
   METHOD addAxis
   METHOD releaseAxis
   METHOD axes

   METHOD onAxisXChanged
   METHOD onAxisYChanged
   METHOD onAxisZChanged
   METHOD onSelectedSeriesChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS Q3DScatter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/Q3DScatter>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDataVisualization/Q3DScatter>
#endif

using namespace QtDataVisualization;

/*
explicit Q3DScatter(const QSurfaceFormat *format = Q_NULLPTR, QWindow *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( Q3DSCATTER_NEW )
{
  if( ISBETWEEN(0,2) && (ISQSURFACEFORMAT(1)||ISNIL(1)) && (ISQWINDOW(2)||ISNIL(2)) )
  {
    Q3DScatter * obj = new Q3DScatter( ISNIL(1)? Q_NULLPTR : (QSurfaceFormat *) Qt5xHb::itemGetPtr(1), OPQWINDOW(2,Q_NULLPTR) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~Q3DScatter()
*/
HB_FUNC_STATIC( Q3DSCATTER_DELETE )
{
  Q3DScatter * obj = (Q3DScatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
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
QValue3DAxis *axisX() const
*/
HB_FUNC_STATIC( Q3DSCATTER_AXISX )
{
  Q3DScatter * obj = (Q3DScatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QValue3DAxis * ptr = obj->axisX();
      Qt5xHb::createReturnQObjectClass( ptr, "QVALUE3DAXIS" );
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
void setAxisX(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DSCATTER_SETAXISX )
{
  Q3DScatter * obj = (Q3DScatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->setAxisX( PQVALUE3DAXIS(1) );
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
QValue3DAxis *axisY() const
*/
HB_FUNC_STATIC( Q3DSCATTER_AXISY )
{
  Q3DScatter * obj = (Q3DScatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QValue3DAxis * ptr = obj->axisY();
      Qt5xHb::createReturnQObjectClass( ptr, "QVALUE3DAXIS" );
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
void setAxisY(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DSCATTER_SETAXISY )
{
  Q3DScatter * obj = (Q3DScatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->setAxisY( PQVALUE3DAXIS(1) );
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
QValue3DAxis *axisZ() const
*/
HB_FUNC_STATIC( Q3DSCATTER_AXISZ )
{
  Q3DScatter * obj = (Q3DScatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QValue3DAxis * ptr = obj->axisZ();
      Qt5xHb::createReturnQObjectClass( ptr, "QVALUE3DAXIS" );
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
void setAxisZ(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DSCATTER_SETAXISZ )
{
  Q3DScatter * obj = (Q3DScatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->setAxisZ( PQVALUE3DAXIS(1) );
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
QScatter3DSeries *selectedSeries() const
*/
HB_FUNC_STATIC( Q3DSCATTER_SELECTEDSERIES )
{
  Q3DScatter * obj = (Q3DScatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScatter3DSeries * ptr = obj->selectedSeries();
      Qt5xHb::createReturnQObjectClass( ptr, "QSCATTER3DSERIES" );
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
void addSeries(QScatter3DSeries *series)
*/
HB_FUNC_STATIC( Q3DSCATTER_ADDSERIES )
{
  Q3DScatter * obj = (Q3DScatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCATTER3DSERIES(1) )
    {
#endif
      obj->addSeries( PQSCATTER3DSERIES(1) );
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
void removeSeries(QScatter3DSeries *series)
*/
HB_FUNC_STATIC( Q3DSCATTER_REMOVESERIES )
{
  Q3DScatter * obj = (Q3DScatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCATTER3DSERIES(1) )
    {
#endif
      obj->removeSeries( PQSCATTER3DSERIES(1) );
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
QList<QScatter3DSeries *> seriesList() const
*/
HB_FUNC_STATIC( Q3DSCATTER_SERIESLIST )
{
  Q3DScatter * obj = (Q3DScatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QScatter3DSeries *> list = obj->seriesList();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSCATTER3DSERIES" );
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
          hb_itemPutPtr( pItem, (QScatter3DSeries *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSCATTER3DSERIES", HB_ERR_ARGS_BASEPARAMS );
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
void addAxis(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DSCATTER_ADDAXIS )
{
  Q3DScatter * obj = (Q3DScatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->addAxis( PQVALUE3DAXIS(1) );
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
void releaseAxis(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DSCATTER_RELEASEAXIS )
{
  Q3DScatter * obj = (Q3DScatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->releaseAxis( PQVALUE3DAXIS(1) );
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
QList<QValue3DAxis *> axes() const
*/
HB_FUNC_STATIC( Q3DSCATTER_AXES )
{
  Q3DScatter * obj = (Q3DScatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QValue3DAxis *> list = obj->axes();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QVALUE3DAXIS" );
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
          hb_itemPutPtr( pItem, (QValue3DAxis *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QVALUE3DAXIS", HB_ERR_ARGS_BASEPARAMS );
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

void Q3DScatterSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( Q3DSCATTER_ONAXISXCHANGED )
{
  Q3DScatterSlots_connect_signal( "axisXChanged(QValue3DAxis*)", "axisXChanged(QValue3DAxis*)" );
}

HB_FUNC_STATIC( Q3DSCATTER_ONAXISYCHANGED )
{
  Q3DScatterSlots_connect_signal( "axisYChanged(QValue3DAxis*)", "axisYChanged(QValue3DAxis*)" );
}

HB_FUNC_STATIC( Q3DSCATTER_ONAXISZCHANGED )
{
  Q3DScatterSlots_connect_signal( "axisZChanged(QValue3DAxis*)", "axisZChanged(QValue3DAxis*)" );
}

HB_FUNC_STATIC( Q3DSCATTER_ONSELECTEDSERIESCHANGED )
{
  Q3DScatterSlots_connect_signal( "selectedSeriesChanged(QScatter3DSeries*)", "selectedSeriesChanged(QScatter3DSeries*)" );
}

#pragma ENDDUMP
