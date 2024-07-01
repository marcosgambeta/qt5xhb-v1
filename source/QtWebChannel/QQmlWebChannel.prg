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
#endif

CLASS QQmlWebChannel INHERIT QWebChannel

   METHOD new
   METHOD delete
   METHOD connectTo
   METHOD disconnectFrom

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QQmlWebChannel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
#include <QtWebChannel/QQmlWebChannel>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
#include <QtWebChannel/QQmlWebChannel>
#endif
#endif

    /*
    QQmlWebChannel( QObject * parent = 0 )
    */
HB_FUNC_STATIC(QQMLWEBCHANNEL_NEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QQmlWebChannel *obj = new QQmlWebChannel(OPQOBJECT(1, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QQMLWEBCHANNEL_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QQmlWebChannel *obj = (QQmlWebChannel *)Qt5xHb::itemGetPtrStackSelfItem();

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
Q_INVOKABLE void connectTo( QObject * transport )
*/
HB_FUNC_STATIC(QQMLWEBCHANNEL_CONNECTTO)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QQmlWebChannel *obj = (QQmlWebChannel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQOBJECT(1))
    {
#endif
      obj->connectTo(PQOBJECT(1));
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
Q_INVOKABLE void disconnectFrom( QObject * transport )
*/
HB_FUNC_STATIC(QQMLWEBCHANNEL_DISCONNECTFROM)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QQmlWebChannel *obj = (QQmlWebChannel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQOBJECT(1))
    {
#endif
      obj->disconnectFrom(PQOBJECT(1));
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

#pragma ENDDUMP
