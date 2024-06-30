/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTITEMMODEL
REQUEST QBOXPLOTSERIES
#endif

CLASS QVBoxPlotModelMapper INHERIT QBoxPlotModelMapper

   METHOD new
   METHOD series
   METHOD setSeries
   METHOD model
   METHOD setModel
   METHOD firstBoxSetColumn
   METHOD setFirstBoxSetColumn
   METHOD lastBoxSetColumn
   METHOD setLastBoxSetColumn
   METHOD firstRow
   METHOD setFirstRow
   METHOD rowCount
   METHOD setRowCount

   METHOD onFirstBoxSetColumnChanged
   METHOD onFirstRowChanged
   METHOD onLastBoxSetColumnChanged
   METHOD onModelReplaced
   METHOD onRowCountChanged
   METHOD onSeriesReplaced

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QVBoxPlotModelMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtCharts/QVBoxPlotModelMapper>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtCharts/QVBoxPlotModelMapper>
#endif
#endif

#include <QtCharts/QBoxPlotSeries>
#include <QtCore/QAbstractItemModel>

    using namespace QtCharts;

/*
QVBoxPlotModelMapper( QObject * parent = nullptr )
*/
HB_FUNC_STATIC(QVBOXPLOTMODELMAPPER_NEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QVBoxPlotModelMapper *obj = new QVBoxPlotModelMapper(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
QBoxPlotSeries * series() const
*/
HB_FUNC_STATIC(QVBOXPLOTMODELMAPPER_SERIES)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QVBoxPlotModelMapper *obj = (QVBoxPlotModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QBoxPlotSeries *ptr = obj->series();
      Qt5xHb::createReturnQObjectClass(ptr, "QBOXPLOTSERIES");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setSeries( QBoxPlotSeries * series )
*/
HB_FUNC_STATIC(QVBOXPLOTMODELMAPPER_SETSERIES)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QVBoxPlotModelMapper *obj = (QVBoxPlotModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQBOXPLOTSERIES(1))
    {
#endif
      obj->setSeries(PQBOXPLOTSERIES(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QAbstractItemModel * model() const
*/
HB_FUNC_STATIC(QVBOXPLOTMODELMAPPER_MODEL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QVBoxPlotModelMapper *obj = (QVBoxPlotModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QAbstractItemModel *ptr = obj->model();
      Qt5xHb::createReturnQObjectClass(ptr, "QABSTRACTITEMMODEL");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setModel( QAbstractItemModel * model )
*/
HB_FUNC_STATIC(QVBOXPLOTMODELMAPPER_SETMODEL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QVBoxPlotModelMapper *obj = (QVBoxPlotModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1))
    {
#endif
      obj->setModel(PQABSTRACTITEMMODEL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
int firstBoxSetColumn() const
*/
HB_FUNC_STATIC(QVBOXPLOTMODELMAPPER_FIRSTBOXSETCOLUMN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QVBoxPlotModelMapper *obj = (QVBoxPlotModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->firstBoxSetColumn());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setFirstBoxSetColumn( int firstBoxSetColumn )
*/
HB_FUNC_STATIC(QVBOXPLOTMODELMAPPER_SETFIRSTBOXSETCOLUMN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QVBoxPlotModelMapper *obj = (QVBoxPlotModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setFirstBoxSetColumn(PINT(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
int lastBoxSetColumn() const
*/
HB_FUNC_STATIC(QVBOXPLOTMODELMAPPER_LASTBOXSETCOLUMN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QVBoxPlotModelMapper *obj = (QVBoxPlotModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->lastBoxSetColumn());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setLastBoxSetColumn( int lastBoxSetColumn )
*/
HB_FUNC_STATIC(QVBOXPLOTMODELMAPPER_SETLASTBOXSETCOLUMN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QVBoxPlotModelMapper *obj = (QVBoxPlotModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setLastBoxSetColumn(PINT(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
int firstRow() const
*/
HB_FUNC_STATIC(QVBOXPLOTMODELMAPPER_FIRSTROW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QVBoxPlotModelMapper *obj = (QVBoxPlotModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->firstRow());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setFirstRow( int firstRow )
*/
HB_FUNC_STATIC(QVBOXPLOTMODELMAPPER_SETFIRSTROW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QVBoxPlotModelMapper *obj = (QVBoxPlotModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setFirstRow(PINT(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
int rowCount() const
*/
HB_FUNC_STATIC(QVBOXPLOTMODELMAPPER_ROWCOUNT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QVBoxPlotModelMapper *obj = (QVBoxPlotModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->rowCount());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setRowCount( int rowCount )
*/
HB_FUNC_STATIC(QVBOXPLOTMODELMAPPER_SETROWCOUNT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QVBoxPlotModelMapper *obj = (QVBoxPlotModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setRowCount(PINT(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

void QVBoxPlotModelMapperSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QVBOXPLOTMODELMAPPER_ONFIRSTBOXSETCOLUMNCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QVBoxPlotModelMapperSlots_connect_signal("firstBoxSetColumnChanged()", "firstBoxSetColumnChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QVBOXPLOTMODELMAPPER_ONFIRSTROWCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QVBoxPlotModelMapperSlots_connect_signal("firstRowChanged()", "firstRowChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QVBOXPLOTMODELMAPPER_ONLASTBOXSETCOLUMNCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QVBoxPlotModelMapperSlots_connect_signal("lastBoxSetColumnChanged()", "lastBoxSetColumnChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QVBOXPLOTMODELMAPPER_ONMODELREPLACED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QVBoxPlotModelMapperSlots_connect_signal("modelReplaced()", "modelReplaced()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QVBOXPLOTMODELMAPPER_ONROWCOUNTCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QVBoxPlotModelMapperSlots_connect_signal("rowCountChanged()", "rowCountChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QVBOXPLOTMODELMAPPER_ONSERIESREPLACED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QVBoxPlotModelMapperSlots_connect_signal("seriesReplaced()", "seriesReplaced()");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
