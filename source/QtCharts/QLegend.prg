//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QCOLOR
REQUEST QFONT
REQUEST QLEGENDMARKER
REQUEST QPEN
#endif

CLASS QLegend INHERIT QGraphicsWidget

   METHOD delete
   METHOD alignment
   METHOD isBackgroundVisible
   METHOD setBackgroundVisible
   METHOD color
   METHOD setColor
   METHOD borderColor
   METHOD setBorderColor
   METHOD font
   METHOD setFont
   METHOD labelColor
   METHOD setLabelColor
   METHOD reverseMarkers
   METHOD setReverseMarkers
   METHOD showToolTips
   METHOD setShowToolTips
   METHOD markerShape
   METHOD setMarkerShape
   METHOD paint
   METHOD setBrush
   METHOD brush
   METHOD setPen
   METHOD pen
   METHOD setLabelBrush
   METHOD labelBrush
   METHOD setAlignment
   METHOD detachFromChart
   METHOD attachToChart
   METHOD isAttachedToChart
   METHOD markers

   METHOD onBackgroundVisibleChanged
   METHOD onBorderColorChanged
   METHOD onColorChanged
   METHOD onFontChanged
   METHOD onLabelColorChanged
   METHOD onMarkerShapeChanged
   METHOD onReverseMarkersChanged
   METHOD onShowToolTipsChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QLegend
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtCharts/QLegend>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtCharts/QLegend>
#endif
#endif

    using namespace QtCharts;

/*
~QLegend()
*/
HB_FUNC_STATIC(QLEGEND_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

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
Qt::Alignment alignment() const
*/
HB_FUNC_STATIC(QLEGEND_ALIGNMENT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->alignment());
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
bool isBackgroundVisible() const
*/
HB_FUNC_STATIC(QLEGEND_ISBACKGROUNDVISIBLE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isBackgroundVisible());
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
void setBackgroundVisible( bool visible = true )
*/
HB_FUNC_STATIC(QLEGEND_SETBACKGROUNDVISIBLE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISLOG(1) || HB_ISNIL(1)))
    {
#endif
      obj->setBackgroundVisible(OPBOOL(1, true));
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
QColor color()
*/
HB_FUNC_STATIC(QLEGEND_COLOR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QColor *ptr = new QColor(obj->color());
      Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
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
void setColor( QColor color )
*/
HB_FUNC_STATIC(QLEGEND_SETCOLOR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQCOLOR(1))
    {
#endif
      obj->setColor(*PQCOLOR(1));
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
QColor borderColor()
*/
HB_FUNC_STATIC(QLEGEND_BORDERCOLOR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QColor *ptr = new QColor(obj->borderColor());
      Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
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
void setBorderColor( QColor color )
*/
HB_FUNC_STATIC(QLEGEND_SETBORDERCOLOR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQCOLOR(1))
    {
#endif
      obj->setBorderColor(*PQCOLOR(1));
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
QFont font() const
*/
HB_FUNC_STATIC(QLEGEND_FONT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QFont *ptr = new QFont(obj->font());
      Qt5xHb::createReturnClass(ptr, "QFONT", true);
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
void setFont( const QFont &font )
*/
HB_FUNC_STATIC(QLEGEND_SETFONT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQFONT(1))
    {
#endif
      obj->setFont(*PQFONT(1));
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
QColor labelColor() const
*/
HB_FUNC_STATIC(QLEGEND_LABELCOLOR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QColor *ptr = new QColor(obj->labelColor());
      Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
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
void setLabelColor( QColor color )
*/
HB_FUNC_STATIC(QLEGEND_SETLABELCOLOR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQCOLOR(1))
    {
#endif
      obj->setLabelColor(*PQCOLOR(1));
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
bool reverseMarkers()
*/
HB_FUNC_STATIC(QLEGEND_REVERSEMARKERS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->reverseMarkers());
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
void setReverseMarkers( bool reverseMarkers = true )
*/
HB_FUNC_STATIC(QLEGEND_SETREVERSEMARKERS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISLOG(1) || HB_ISNIL(1)))
    {
#endif
      obj->setReverseMarkers(OPBOOL(1, true));
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
bool showToolTips() const
*/
HB_FUNC_STATIC(QLEGEND_SHOWTOOLTIPS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->showToolTips());
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
void setShowToolTips( bool show )
*/
HB_FUNC_STATIC(QLEGEND_SETSHOWTOOLTIPS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setShowToolTips(PBOOL(1));
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
QLegend::MarkerShape markerShape() const
*/
HB_FUNC_STATIC(QLEGEND_MARKERSHAPE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->markerShape());
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
void setMarkerShape( QLegend::MarkerShape shape )
*/
HB_FUNC_STATIC(QLEGEND_SETMARKERSHAPE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setMarkerShape((QLegend::MarkerShape)hb_parni(1));
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
void paint( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = nullptr )
*/
HB_FUNC_STATIC(QLEGEND_PAINT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && ISQPAINTER(1) && ISQSTYLEOPTIONGRAPHICSITEM(2) && (ISQWIDGET(3) || HB_ISNIL(3)))
    {
#endif
      obj->paint(PQPAINTER(1), PQSTYLEOPTIONGRAPHICSITEM(2), OPQWIDGET(3, nullptr));
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
void setBrush( const QBrush &brush )
*/
HB_FUNC_STATIC(QLEGEND_SETBRUSH)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQBRUSH(1))
    {
#endif
      obj->setBrush(*PQBRUSH(1));
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
QBrush brush() const
*/
HB_FUNC_STATIC(QLEGEND_BRUSH)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QBrush *ptr = new QBrush(obj->brush());
      Qt5xHb::createReturnClass(ptr, "QBRUSH", true);
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
void setPen( const QPen &pen )
*/
HB_FUNC_STATIC(QLEGEND_SETPEN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPEN(1))
    {
#endif
      obj->setPen(*PQPEN(1));
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
QPen pen() const
*/
HB_FUNC_STATIC(QLEGEND_PEN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPen *ptr = new QPen(obj->pen());
      Qt5xHb::createReturnClass(ptr, "QPEN", true);
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
void setLabelBrush( const QBrush &brush )
*/
HB_FUNC_STATIC(QLEGEND_SETLABELBRUSH)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQBRUSH(1))
    {
#endif
      obj->setLabelBrush(*PQBRUSH(1));
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
QBrush labelBrush() const
*/
HB_FUNC_STATIC(QLEGEND_LABELBRUSH)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QBrush *ptr = new QBrush(obj->labelBrush());
      Qt5xHb::createReturnClass(ptr, "QBRUSH", true);
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
void setAlignment( Qt::Alignment alignment )
*/
HB_FUNC_STATIC(QLEGEND_SETALIGNMENT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setAlignment((Qt::Alignment)hb_parni(1));
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
void detachFromChart()
*/
HB_FUNC_STATIC(QLEGEND_DETACHFROMCHART)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->detachFromChart();
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
void attachToChart()
*/
HB_FUNC_STATIC(QLEGEND_ATTACHTOCHART)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->attachToChart();
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
bool isAttachedToChart()
*/
HB_FUNC_STATIC(QLEGEND_ISATTACHEDTOCHART)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isAttachedToChart());
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
QList<QLegendMarker*> markers( QAbstractSeries * series = nullptr ) const
*/
HB_FUNC_STATIC(QLEGEND_MARKERS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegend *obj = (QLegend *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (ISQABSTRACTSERIES(1) || HB_ISNIL(1)))
    {
#endif
      QList<QLegendMarker *> list = obj->markers(OPQABSTRACTSERIES(1, nullptr));
      PHB_DYNS pDynSym = hb_dynsymFindName("QLEGENDMARKER");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if (pDynSym != NULL)
      {
        for (int i = 0; i < list.count(); i++)
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(NULL);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(NULL, list[i]);
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QLEGENDMARKER", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
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

void QLegendSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QLEGEND_ONBACKGROUNDVISIBLECHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegendSlots_connect_signal("backgroundVisibleChanged(bool)", "backgroundVisibleChanged(bool)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QLEGEND_ONBORDERCOLORCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegendSlots_connect_signal("borderColorChanged(QColor)", "borderColorChanged(QColor)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QLEGEND_ONCOLORCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegendSlots_connect_signal("colorChanged(QColor)", "colorChanged(QColor)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QLEGEND_ONFONTCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegendSlots_connect_signal("fontChanged(QFont)", "fontChanged(QFont)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QLEGEND_ONLABELCOLORCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegendSlots_connect_signal("labelColorChanged(QColor)", "labelColorChanged(QColor)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QLEGEND_ONMARKERSHAPECHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 9, 0))
  QLegendSlots_connect_signal("markerShapeChanged(QLegend::MarkerShape)", "markerShapeChanged(QLegend::MarkerShape)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QLEGEND_ONREVERSEMARKERSCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegendSlots_connect_signal("reverseMarkersChanged(bool)", "reverseMarkersChanged(bool)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QLEGEND_ONSHOWTOOLTIPSCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QLegendSlots_connect_signal("showToolTipsChanged(bool)", "showToolTipsChanged(bool)");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
