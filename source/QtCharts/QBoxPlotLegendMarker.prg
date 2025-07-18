//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBOXPLOTSERIES
#endif

CLASS QBoxPlotLegendMarker INHERIT QLegendMarker

   METHOD new
   METHOD delete
   METHOD type
   METHOD series

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBoxPlotLegendMarker
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtCharts/QBoxPlotLegendMarker>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtCharts/QBoxPlotLegendMarker>
#endif
#endif

    using namespace QtCharts;

/*
QBoxPlotLegendMarker( QBoxPlotSeries * series, QLegend * legend, QObject * parent = nullptr )
*/
HB_FUNC_STATIC(QBOXPLOTLEGENDMARKER_NEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  if (ISBETWEEN(2, 3) && ISQBOXPLOTSERIES(1) && ISQLEGEND(2) && (ISQOBJECT(3) || HB_ISNIL(3)))
  {
    QBoxPlotLegendMarker *obj = new QBoxPlotLegendMarker(PQBOXPLOTSERIES(1), PQLEGEND(2), OPQOBJECT(3, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
virtual ~QBoxPlotLegendMarker()
*/
HB_FUNC_STATIC(QBOXPLOTLEGENDMARKER_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QBoxPlotLegendMarker *obj = (QBoxPlotLegendMarker *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
virtual QLegendMarker::LegendMarkerType type()
*/
HB_FUNC_STATIC(QBOXPLOTLEGENDMARKER_TYPE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QBoxPlotLegendMarker *obj = (QBoxPlotLegendMarker *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->type());
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
virtual QBoxPlotSeries * series()
*/
HB_FUNC_STATIC(QBOXPLOTLEGENDMARKER_SERIES)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QBoxPlotLegendMarker *obj = (QBoxPlotLegendMarker *)Qt5xHb::itemGetPtrStackSelfItem();

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

#pragma ENDDUMP
