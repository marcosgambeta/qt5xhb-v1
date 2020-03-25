/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTITEMMODEL
REQUEST QXYSERIES
#endif

CLASS QHXYModelMapper INHERIT QXYModelMapper

   METHOD new
   METHOD series
   METHOD setSeries
   METHOD model
   METHOD setModel
   METHOD xRow
   METHOD setXRow
   METHOD yRow
   METHOD setYRow
   METHOD firstColumn
   METHOD setFirstColumn
   METHOD columnCount
   METHOD setColumnCount

   METHOD onColumnCountChanged
   METHOD onFirstColumnChanged
   METHOD onModelReplaced
   METHOD onSeriesReplaced
   METHOD onXRowChanged
   METHOD onYRowChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHXYModelMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QHXYModelMapper>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QHXYModelMapper>
#endif
#endif

#include <QtCharts/QXYSeries>
#include <QtCore/QAbstractItemModel>

using namespace QtCharts;

/*
explicit QHXYModelMapper(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QHXYModelMapper * o = new QHXYModelMapper( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QXYSeries *series() const
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_SERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QXYSeries * ptr = obj->series();
      _qt5xhb_createReturnQObjectClass( ptr, "QXYSERIES" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setSeries(QXYSeries *series)
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_SETSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQXYSERIES(1) )
    {
#endif
      obj->setSeries( PQXYSERIES(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QAbstractItemModel *model() const
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_MODEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractItemModel * ptr = obj->model();
      _qt5xhb_createReturnQObjectClass( ptr, "QABSTRACTITEMMODEL" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setModel(QAbstractItemModel *model)
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_SETMODEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
    {
#endif
      obj->setModel( PQABSTRACTITEMMODEL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int xRow() const
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_XROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->xRow() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setXRow(int xRow)
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_SETXROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setXRow( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int yRow() const
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_YROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->yRow() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setYRow(int yRow)
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_SETYROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setYRow( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int firstColumn() const
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_FIRSTCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->firstColumn() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setFirstColumn(int firstColumn)
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_SETFIRSTCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setFirstColumn( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int columnCount() const
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_COLUMNCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->columnCount() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setColumnCount(int columnCount)
*/
HB_FUNC_STATIC( QHXYMODELMAPPER_SETCOLUMNCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapper * obj = (QHXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setColumnCount( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

void QHXYModelMapperSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QHXYMODELMAPPER_ONCOLUMNCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapperSlots_connect_signal( "columnCountChanged()", "columnCountChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QHXYMODELMAPPER_ONFIRSTCOLUMNCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapperSlots_connect_signal( "firstColumnChanged()", "firstColumnChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QHXYMODELMAPPER_ONMODELREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapperSlots_connect_signal( "modelReplaced()", "modelReplaced()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QHXYMODELMAPPER_ONSERIESREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapperSlots_connect_signal( "seriesReplaced()", "seriesReplaced()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QHXYMODELMAPPER_ONXROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapperSlots_connect_signal( "xRowChanged()", "xRowChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QHXYMODELMAPPER_ONYROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QHXYModelMapperSlots_connect_signal( "yRowChanged()", "yRowChanged()" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
