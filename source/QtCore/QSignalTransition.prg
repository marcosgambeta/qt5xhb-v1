//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QOBJECT
#endif

CLASS QSignalTransition INHERIT QAbstractTransition

   METHOD new
   METHOD delete
   METHOD senderObject
   METHOD setSenderObject
   METHOD signal
   METHOD setSignal

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSignalTransition
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QSignalTransition>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QSignalTransition>
#endif

HB_FUNC_STATIC(QSIGNALTRANSITION_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQSTATE(1) || HB_ISNIL(1)))
  {
    /*
    QSignalTransition( QState * sourceState = 0 )
    */
    QSignalTransition *obj = new QSignalTransition(OPQSTATE(1, 0));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(2, 3) && ISQOBJECT(1) && HB_ISCHAR(2) && (ISQSTATE(3) || HB_ISNIL(3)))
  {
    /*
    QSignalTransition( const QObject * sender, const char * signal, QState * sourceState = 0 )
    */
    QSignalTransition *obj = new QSignalTransition(PQOBJECT(1), PCONSTCHAR(2), OPQSTATE(3, 0));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSIGNALTRANSITION_DELETE)
{
  QSignalTransition *obj = (QSignalTransition *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QObject * senderObject() const
*/
HB_FUNC_STATIC(QSIGNALTRANSITION_SENDEROBJECT)
{
  QSignalTransition *obj = (QSignalTransition *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QObject *ptr = obj->senderObject();
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
void setSenderObject( const QObject * sender )
*/
HB_FUNC_STATIC(QSIGNALTRANSITION_SETSENDEROBJECT)
{
  QSignalTransition *obj = (QSignalTransition *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQOBJECT(1))
    {
#endif
      obj->setSenderObject(PQOBJECT(1));
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
QByteArray signal() const
*/
HB_FUNC_STATIC(QSIGNALTRANSITION_SIGNAL)
{
  QSignalTransition *obj = (QSignalTransition *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QByteArray *ptr = new QByteArray(obj->signal());
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
void setSignal( const QByteArray &signal )
*/
HB_FUNC_STATIC(QSIGNALTRANSITION_SETSIGNAL)
{
  QSignalTransition *obj = (QSignalTransition *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQBYTEARRAY(1))
    {
#endif
      obj->setSignal(*PQBYTEARRAY(1));
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

#pragma ENDDUMP
