//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QWIDGET
#endif

CLASS QDesktopWidget INHERIT QWidget

   METHOD delete
   METHOD availableGeometry
   METHOD isVirtualDesktop
   METHOD primaryScreen
   METHOD screen
   METHOD screenCount
   METHOD screenGeometry
   METHOD screenNumber

   METHOD onResized
   METHOD onScreenCountChanged
   METHOD onWorkAreaResized

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDesktopWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QDesktopWidget>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QDesktopWidget>
#endif

HB_FUNC_STATIC(QDESKTOPWIDGET_DELETE)
{
  QDesktopWidget *obj = (QDesktopWidget *)Qt5xHb::itemGetPtrStackSelfItem();

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
}

HB_FUNC_STATIC(QDESKTOPWIDGET_AVAILABLEGEOMETRY)
{
  if (ISBETWEEN(0, 1) && ISNUMORNIL(1))
  {
    /*
    const QRect availableGeometry( int screen = -1 ) const
    */
    QDesktopWidget *obj = (QDesktopWidget *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QRect *ptr = new QRect(obj->availableGeometry(OPINT(1, -1)));
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
    }
  }
  else if (ISNUMPAR(1) && ISQWIDGET(1))
  {
    /*
    const QRect availableGeometry( const QWidget * widget ) const
    */
    QDesktopWidget *obj = (QDesktopWidget *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QRect *ptr = new QRect(obj->availableGeometry(PQWIDGET(1)));
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
    }
  }
  else if (ISNUMPAR(1) && ISQPOINT(1))
  {
    /*
    const QRect availableGeometry( const QPoint &p ) const
    */
    QDesktopWidget *obj = (QDesktopWidget *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QRect *ptr = new QRect(obj->availableGeometry(*PQPOINT(1)));
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool isVirtualDesktop() const
*/
HB_FUNC_STATIC(QDESKTOPWIDGET_ISVIRTUALDESKTOP)
{
  QDesktopWidget *obj = (QDesktopWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isVirtualDesktop());
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
int primaryScreen() const
*/
HB_FUNC_STATIC(QDESKTOPWIDGET_PRIMARYSCREEN)
{
  QDesktopWidget *obj = (QDesktopWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->primaryScreen());
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
QWidget * screen( int screen = -1 )
*/
HB_FUNC_STATIC(QDESKTOPWIDGET_SCREEN)
{
  QDesktopWidget *obj = (QDesktopWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && ISNUMORNIL(1))
    {
#endif
      QWidget *ptr = obj->screen(OPINT(1, -1));
      Qt5xHb::createReturnQWidgetClass(ptr, "QWIDGET");
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
int screenCount() const
*/
HB_FUNC_STATIC(QDESKTOPWIDGET_SCREENCOUNT)
{
  QDesktopWidget *obj = (QDesktopWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->screenCount());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QDESKTOPWIDGET_SCREENGEOMETRY)
{
  if (ISBETWEEN(0, 1) && ISNUMORNIL(1))
  {
    /*
    const QRect screenGeometry( int screen = -1 ) const
    */
    QDesktopWidget *obj = (QDesktopWidget *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QRect *ptr = new QRect(obj->screenGeometry(OPINT(1, -1)));
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
    }
  }
  else if (ISNUMPAR(1) && ISQWIDGET(1))
  {
    /*
    const QRect screenGeometry( const QWidget * widget ) const
    */
    QDesktopWidget *obj = (QDesktopWidget *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QRect *ptr = new QRect(obj->screenGeometry(PQWIDGET(1)));
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
    }
  }
  else if (ISNUMPAR(1) && ISQPOINT(1))
  {
    /*
    const QRect screenGeometry( const QPoint &p ) const
    */
    QDesktopWidget *obj = (QDesktopWidget *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QRect *ptr = new QRect(obj->screenGeometry(*PQPOINT(1)));
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QDESKTOPWIDGET_SCREENNUMBER)
{
  if (ISBETWEEN(0, 1) && (ISQWIDGET(1) || HB_ISNIL(1)))
  {
    /*
    int screenNumber( const QWidget * widget = 0 ) const
    */
    QDesktopWidget *obj = (QDesktopWidget *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RINT(obj->screenNumber(OPQWIDGET(1, 0)));
    }
  }
  else if (ISNUMPAR(1) && ISQPOINT(1))
  {
    /*
    int screenNumber( const QPoint &point ) const
    */
    QDesktopWidget *obj = (QDesktopWidget *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RINT(obj->screenNumber(*PQPOINT(1)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

void QDesktopWidgetSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QDESKTOPWIDGET_ONRESIZED)
{
  QDesktopWidgetSlots_connect_signal("resized(int)", "resized(int)");
}

HB_FUNC_STATIC(QDESKTOPWIDGET_ONSCREENCOUNTCHANGED)
{
  QDesktopWidgetSlots_connect_signal("screenCountChanged(int)", "screenCountChanged(int)");
}

HB_FUNC_STATIC(QDESKTOPWIDGET_ONWORKAREARESIZED)
{
  QDesktopWidgetSlots_connect_signal("workAreaResized(int)", "workAreaResized(int)");
}

#pragma ENDDUMP
