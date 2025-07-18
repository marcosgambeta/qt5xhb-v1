//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QPOINTF
REQUEST QSCROLLERPROPERTIES
#endif

CLASS QScroller INHERIT QObject

   METHOD finalPosition
   METHOD handleInput
   METHOD pixelPerMeter
   METHOD scrollerProperties
   METHOD setSnapPositionsX
   METHOD setSnapPositionsY
   METHOD state
   METHOD stop
   METHOD target
   METHOD velocity
   METHOD ensureVisible
   METHOD resendPrepareEvent
   METHOD scrollTo
   METHOD setScrollerProperties
   METHOD activeScrollers
   METHOD grabGesture
   METHOD grabbedGesture
   METHOD hasScroller
   METHOD scroller
   METHOD ungrabGesture

   METHOD onScrollerPropertiesChanged
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QScroller
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QScroller>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QScroller>
#endif

    /*
    QPointF finalPosition() const
    */
HB_FUNC_STATIC(QSCROLLER_FINALPOSITION)
{
  QScroller *obj = (QScroller *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPointF *ptr = new QPointF(obj->finalPosition());
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
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
bool handleInput( QScroller::Input input, const QPointF &position, qint64 timestamp = 0 )
*/
HB_FUNC_STATIC(QSCROLLER_HANDLEINPUT)
{
  QScroller *obj = (QScroller *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && ISQPOINTF(2) && ISNUMORNIL(3))
    {
#endif
      RBOOL(obj->handleInput((QScroller::Input)hb_parni(1), *PQPOINTF(2), OPQINT64(3, 0)));
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
QPointF pixelPerMeter() const
*/
HB_FUNC_STATIC(QSCROLLER_PIXELPERMETER)
{
  QScroller *obj = (QScroller *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPointF *ptr = new QPointF(obj->pixelPerMeter());
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
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
QScrollerProperties scrollerProperties() const
*/
HB_FUNC_STATIC(QSCROLLER_SCROLLERPROPERTIES)
{
  QScroller *obj = (QScroller *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QScrollerProperties *ptr = new QScrollerProperties(obj->scrollerProperties());
      Qt5xHb::createReturnClass(ptr, "QSCROLLERPROPERTIES", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QSCROLLER_SETSNAPPOSITIONSX)
{
  if (ISNUMPAR(1) && HB_ISARRAY(1))
  {
    /*
    void setSnapPositionsX( const QList<qreal> &positions )
    */
    QScroller *obj = (QScroller *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QList<qreal> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int nLen1 = hb_arrayLen(aList1);
      qreal temp1;
      for (int i1 = 0; i1 < nLen1; i1++)
      {
        temp1 = hb_arrayGetND(aList1, i1 + 1);
        par1 << temp1;
      }
      obj->setSnapPositionsX(par1);
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    void setSnapPositionsX( qreal first, qreal interval )
    */
    QScroller *obj = (QScroller *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->setSnapPositionsX(PQREAL(1), PQREAL(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSCROLLER_SETSNAPPOSITIONSY)
{
  if (ISNUMPAR(1) && HB_ISARRAY(1))
  {
    /*
    void setSnapPositionsY( const QList<qreal> &positions )
    */
    QScroller *obj = (QScroller *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QList<qreal> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int nLen1 = hb_arrayLen(aList1);
      qreal temp1;
      for (int i1 = 0; i1 < nLen1; i1++)
      {
        temp1 = hb_arrayGetND(aList1, i1 + 1);
        par1 << temp1;
      }
      obj->setSnapPositionsY(par1);
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    void setSnapPositionsY( qreal first, qreal interval )
    */
    QScroller *obj = (QScroller *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->setSnapPositionsY(PQREAL(1), PQREAL(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QScroller::State state() const
*/
HB_FUNC_STATIC(QSCROLLER_STATE)
{
  QScroller *obj = (QScroller *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->state());
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
void stop()
*/
HB_FUNC_STATIC(QSCROLLER_STOP)
{
  QScroller *obj = (QScroller *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->stop();
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
QObject * target() const
*/
HB_FUNC_STATIC(QSCROLLER_TARGET)
{
  QScroller *obj = (QScroller *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QObject *ptr = obj->target();
      Qt5xHb::createReturnQObjectClass(ptr, "QOBJECT");
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
QPointF velocity() const
*/
HB_FUNC_STATIC(QSCROLLER_VELOCITY)
{
  QScroller *obj = (QScroller *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPointF *ptr = new QPointF(obj->velocity());
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QSCROLLER_ENSUREVISIBLE)
{
  if (ISNUMPAR(3) && ISQRECTF(1) && HB_ISNUM(2) && HB_ISNUM(3))
  {
    /*
    void ensureVisible( const QRectF &rect, qreal xmargin, qreal ymargin )
    */
    QScroller *obj = (QScroller *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->ensureVisible(*PQRECTF(1), PQREAL(2), PQREAL(3));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(4) && ISQRECTF(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
  {
    /*
    void ensureVisible( const QRectF &rect, qreal xmargin, qreal ymargin, int scrollTime )
    */
    QScroller *obj = (QScroller *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->ensureVisible(*PQRECTF(1), PQREAL(2), PQREAL(3), PINT(4));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void resendPrepareEvent()
*/
HB_FUNC_STATIC(QSCROLLER_RESENDPREPAREEVENT)
{
  QScroller *obj = (QScroller *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->resendPrepareEvent();
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

HB_FUNC_STATIC(QSCROLLER_SCROLLTO)
{
  if (ISNUMPAR(1) && ISQPOINTF(1))
  {
    /*
    void scrollTo( const QPointF &pos )
    */
    QScroller *obj = (QScroller *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->scrollTo(*PQPOINTF(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && ISQPOINTF(1) && HB_ISNUM(2))
  {
    /*
    void scrollTo( const QPointF &pos, int scrollTime )
    */
    QScroller *obj = (QScroller *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->scrollTo(*PQPOINTF(1), PINT(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setScrollerProperties( const QScrollerProperties &prop )
*/
HB_FUNC_STATIC(QSCROLLER_SETSCROLLERPROPERTIES)
{
  QScroller *obj = (QScroller *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSCROLLERPROPERTIES(1))
    {
#endif
      obj->setScrollerProperties(*PQSCROLLERPROPERTIES(1));
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
static QList<QScroller*> activeScrollers()
*/
HB_FUNC_STATIC(QSCROLLER_ACTIVESCROLLERS)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    QList<QScroller *> list = QScroller::activeScrollers();
    PHB_DYNS pDynSym = hb_dynsymFindName("QSCROLLER");
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
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QSCROLLER", HB_ERR_ARGS_BASEPARAMS);
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

/*
static Qt::GestureType grabGesture( QObject * target, QScroller::ScrollerGestureType scrollGestureType =
QScroller::TouchGesture )
*/
HB_FUNC_STATIC(QSCROLLER_GRABGESTURE)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(1, 2) && ISQOBJECT(1) && ISNUMORNIL(2))
  {
#endif
    RENUM(QScroller::grabGesture(PQOBJECT(1), HB_ISNIL(2) ? (QScroller::ScrollerGestureType)QScroller::TouchGesture
                                                          : (QScroller::ScrollerGestureType)hb_parni(2)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static Qt::GestureType grabbedGesture( QObject * target )
*/
HB_FUNC_STATIC(QSCROLLER_GRABBEDGESTURE)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && ISQOBJECT(1))
  {
#endif
    RENUM(QScroller::grabbedGesture(PQOBJECT(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool hasScroller( QObject * target )
*/
HB_FUNC_STATIC(QSCROLLER_HASSCROLLER)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && ISQOBJECT(1))
  {
#endif
    RBOOL(QScroller::hasScroller(PQOBJECT(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

#if 0
/*
static const QScroller * scroller( const QObject * target )
*/
void QScroller_scroller2()
{
  const QScroller * ptr = QScroller::scroller( PQOBJECT(1) );
  Qt5xHb::createReturnQObjectClass(ptr, "QSCROLLER");
}
#endif

/*
static QScroller * scroller( QObject * target )
*/
HB_FUNC_STATIC(QSCROLLER_SCROLLER)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && ISQOBJECT(1))
  {
#endif
    QScroller *ptr = QScroller::scroller(PQOBJECT(1));
    Qt5xHb::createReturnQObjectClass(ptr, "QSCROLLER");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
void ungrabGesture( QObject * target )
*/
HB_FUNC_STATIC(QSCROLLER_UNGRABGESTURE)
{
  QScroller *obj = (QScroller *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQOBJECT(1))
    {
#endif
      obj->ungrabGesture(PQOBJECT(1));
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

void QScrollerSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QSCROLLER_ONSCROLLERPROPERTIESCHANGED)
{
  QScrollerSlots_connect_signal("scrollerPropertiesChanged(QScrollerProperties)",
                                "scrollerPropertiesChanged(QScrollerProperties)");
}

HB_FUNC_STATIC(QSCROLLER_ONSTATECHANGED)
{
  QScrollerSlots_connect_signal("stateChanged(QScroller::State)", "stateChanged(QScroller::State)");
}

#pragma ENDDUMP
