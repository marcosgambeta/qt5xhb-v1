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
REQUEST QBRUSH
REQUEST QPEN
#endif

CLASS QCandlestickSet INHERIT QObject

   METHOD new
   METHOD delete
   METHOD timestamp
   METHOD setTimestamp
   METHOD open
   METHOD setOpen
   METHOD high
   METHOD setHigh
   METHOD low
   METHOD setLow
   METHOD close
   METHOD setClose
   METHOD brush
   METHOD setBrush
   METHOD pen
   METHOD setPen

   METHOD onBrushChanged
   METHOD onClicked
   METHOD onCloseChanged
   METHOD onDoubleClicked
   METHOD onHighChanged
   METHOD onHovered
   METHOD onLowChanged
   METHOD onOpenChanged
   METHOD onPenChanged
   METHOD onPressed
   METHOD onReleased
   METHOD onTimestampChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCandlestickSet
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
#include <QtCharts/QCandlestickSet>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
#include <QtCharts/QCandlestickSet>
#endif
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
    using namespace QtCharts;
#endif

HB_FUNC_STATIC(QCANDLESTICKSET_NEW)
{
  if (ISBETWEEN(0, 2) && (HB_ISNUM(1) || HB_ISNIL(1)) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    /*
    QCandlestickSet( qreal timestamp = 0.0, QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
    QCandlestickSet *obj = new QCandlestickSet(OPQREAL(1, 0.0), OPQOBJECT(2, nullptr));
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
  else if (ISBETWEEN(4, 6) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) &&
           (HB_ISNUM(5) || HB_ISNIL(5)) && (ISQOBJECT(6) || HB_ISNIL(6)))
  {
    /*
    QCandlestickSet( qreal open, qreal high, qreal low, qreal close, qreal timestamp = 0.0, QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
    QCandlestickSet *obj =
        new QCandlestickSet(PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), OPQREAL(5, 0.0), OPQOBJECT(6, nullptr));
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~QCandlestickSet()
*/
HB_FUNC_STATIC(QCANDLESTICKSET_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSet *obj = (QCandlestickSet *)Qt5xHb::itemGetPtrStackSelfItem();

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
qreal timestamp() const
*/
HB_FUNC_STATIC(QCANDLESTICKSET_TIMESTAMP)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSet *obj = (QCandlestickSet *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->timestamp());
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
void setTimestamp( qreal timestamp )
*/
HB_FUNC_STATIC(QCANDLESTICKSET_SETTIMESTAMP)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSet *obj = (QCandlestickSet *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setTimestamp(PQREAL(1));
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
qreal open() const
*/
HB_FUNC_STATIC(QCANDLESTICKSET_OPEN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSet *obj = (QCandlestickSet *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->open());
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
void setOpen( qreal open )
*/
HB_FUNC_STATIC(QCANDLESTICKSET_SETOPEN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSet *obj = (QCandlestickSet *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setOpen(PQREAL(1));
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
qreal high() const
*/
HB_FUNC_STATIC(QCANDLESTICKSET_HIGH)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSet *obj = (QCandlestickSet *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->high());
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
void setHigh( qreal high )
*/
HB_FUNC_STATIC(QCANDLESTICKSET_SETHIGH)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSet *obj = (QCandlestickSet *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setHigh(PQREAL(1));
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
qreal low() const
*/
HB_FUNC_STATIC(QCANDLESTICKSET_LOW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSet *obj = (QCandlestickSet *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->low());
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
void setLow( qreal low )
*/
HB_FUNC_STATIC(QCANDLESTICKSET_SETLOW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSet *obj = (QCandlestickSet *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setLow(PQREAL(1));
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
qreal close() const
*/
HB_FUNC_STATIC(QCANDLESTICKSET_CLOSE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSet *obj = (QCandlestickSet *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->close());
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
void setClose( qreal close )
*/
HB_FUNC_STATIC(QCANDLESTICKSET_SETCLOSE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSet *obj = (QCandlestickSet *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setClose(PQREAL(1));
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
HB_FUNC_STATIC(QCANDLESTICKSET_BRUSH)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSet *obj = (QCandlestickSet *)Qt5xHb::itemGetPtrStackSelfItem();

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
void setBrush( const QBrush & brush )
*/
HB_FUNC_STATIC(QCANDLESTICKSET_SETBRUSH)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSet *obj = (QCandlestickSet *)Qt5xHb::itemGetPtrStackSelfItem();

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
QPen pen() const
*/
HB_FUNC_STATIC(QCANDLESTICKSET_PEN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSet *obj = (QCandlestickSet *)Qt5xHb::itemGetPtrStackSelfItem();

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
void setPen( const QPen & pen )
*/
HB_FUNC_STATIC(QCANDLESTICKSET_SETPEN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSet *obj = (QCandlestickSet *)Qt5xHb::itemGetPtrStackSelfItem();

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

void QCandlestickSetSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QCANDLESTICKSET_ONBRUSHCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSetSlots_connect_signal("brushChanged()", "brushChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QCANDLESTICKSET_ONCLICKED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSetSlots_connect_signal("clicked()", "clicked()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QCANDLESTICKSET_ONCLOSECHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSetSlots_connect_signal("closeChanged()", "closeChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QCANDLESTICKSET_ONDOUBLECLICKED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSetSlots_connect_signal("doubleClicked()", "doubleClicked()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QCANDLESTICKSET_ONHIGHCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSetSlots_connect_signal("highChanged()", "highChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QCANDLESTICKSET_ONHOVERED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSetSlots_connect_signal("hovered(bool)", "hovered(bool)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QCANDLESTICKSET_ONLOWCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSetSlots_connect_signal("lowChanged()", "lowChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QCANDLESTICKSET_ONOPENCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSetSlots_connect_signal("openChanged()", "openChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QCANDLESTICKSET_ONPENCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSetSlots_connect_signal("penChanged()", "penChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QCANDLESTICKSET_ONPRESSED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSetSlots_connect_signal("pressed()", "pressed()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QCANDLESTICKSET_ONRELEASED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSetSlots_connect_signal("released()", "released()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QCANDLESTICKSET_ONTIMESTAMPCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickSetSlots_connect_signal("timestampChanged()", "timestampChanged()");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
