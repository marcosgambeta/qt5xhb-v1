//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTITEMMODEL
REQUEST QPIESERIES
#endif

CLASS QHPieModelMapper INHERIT QPieModelMapper

   METHOD new
   METHOD series
   METHOD setSeries
   METHOD model
   METHOD setModel
   METHOD valuesRow
   METHOD setValuesRow
   METHOD labelsRow
   METHOD setLabelsRow
   METHOD firstColumn
   METHOD setFirstColumn
   METHOD columnCount
   METHOD setColumnCount

   METHOD onColumnCountChanged
   METHOD onFirstColumnChanged
   METHOD onLabelsRowChanged
   METHOD onModelReplaced
   METHOD onSeriesReplaced
   METHOD onValuesRowChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHPieModelMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtCharts/QHPieModelMapper>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtCharts/QHPieModelMapper>
#endif
#endif

#include <QtCharts/QPieSeries>
#include <QtCore/QAbstractItemModel>

    using namespace QtCharts;

/*
QHPieModelMapper( QObject * parent = nullptr )
*/
HB_FUNC_STATIC(QHPIEMODELMAPPER_NEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QHPieModelMapper *obj = new QHPieModelMapper(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
QPieSeries * series() const
*/
HB_FUNC_STATIC(QHPIEMODELMAPPER_SERIES)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QHPieModelMapper *obj = (QHPieModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPieSeries *ptr = obj->series();
      Qt5xHb::createReturnQObjectClass(ptr, "QPIESERIES");
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
void setSeries( QPieSeries * series )
*/
HB_FUNC_STATIC(QHPIEMODELMAPPER_SETSERIES)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QHPieModelMapper *obj = (QHPieModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPIESERIES(1))
    {
#endif
      obj->setSeries(PQPIESERIES(1));
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
HB_FUNC_STATIC(QHPIEMODELMAPPER_MODEL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QHPieModelMapper *obj = (QHPieModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC(QHPIEMODELMAPPER_SETMODEL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QHPieModelMapper *obj = (QHPieModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

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
int valuesRow() const
*/
HB_FUNC_STATIC(QHPIEMODELMAPPER_VALUESROW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QHPieModelMapper *obj = (QHPieModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->valuesRow());
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
void setValuesRow( int valuesRow )
*/
HB_FUNC_STATIC(QHPIEMODELMAPPER_SETVALUESROW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QHPieModelMapper *obj = (QHPieModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setValuesRow(PINT(1));
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
int labelsRow() const
*/
HB_FUNC_STATIC(QHPIEMODELMAPPER_LABELSROW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QHPieModelMapper *obj = (QHPieModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->labelsRow());
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
void setLabelsRow( int labelsRow )
*/
HB_FUNC_STATIC(QHPIEMODELMAPPER_SETLABELSROW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QHPieModelMapper *obj = (QHPieModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setLabelsRow(PINT(1));
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
int firstColumn() const
*/
HB_FUNC_STATIC(QHPIEMODELMAPPER_FIRSTCOLUMN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QHPieModelMapper *obj = (QHPieModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->firstColumn());
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
void setFirstColumn( int firstColumn )
*/
HB_FUNC_STATIC(QHPIEMODELMAPPER_SETFIRSTCOLUMN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QHPieModelMapper *obj = (QHPieModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setFirstColumn(PINT(1));
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
int columnCount() const
*/
HB_FUNC_STATIC(QHPIEMODELMAPPER_COLUMNCOUNT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QHPieModelMapper *obj = (QHPieModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->columnCount());
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
void setColumnCount( int columnCount )
*/
HB_FUNC_STATIC(QHPIEMODELMAPPER_SETCOLUMNCOUNT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QHPieModelMapper *obj = (QHPieModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setColumnCount(PINT(1));
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

void QHPieModelMapperSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QHPIEMODELMAPPER_ONCOLUMNCOUNTCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QHPieModelMapperSlots_connect_signal("columnCountChanged()", "columnCountChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QHPIEMODELMAPPER_ONFIRSTCOLUMNCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QHPieModelMapperSlots_connect_signal("firstColumnChanged()", "firstColumnChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QHPIEMODELMAPPER_ONLABELSROWCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QHPieModelMapperSlots_connect_signal("labelsRowChanged()", "labelsRowChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QHPIEMODELMAPPER_ONMODELREPLACED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QHPieModelMapperSlots_connect_signal("modelReplaced()", "modelReplaced()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QHPIEMODELMAPPER_ONSERIESREPLACED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QHPieModelMapperSlots_connect_signal("seriesReplaced()", "seriesReplaced()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QHPIEMODELMAPPER_ONVALUESROWCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QHPieModelMapperSlots_connect_signal("valuesRowChanged()", "valuesRowChanged()");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
