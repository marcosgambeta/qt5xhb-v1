//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QAccessibleTextInsertEvent INHERIT QAccessibleTextCursorEvent

   METHOD new
   METHOD delete
   METHOD textInserted
   METHOD changePosition

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAccessibleTextInsertEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QAccessibleTextInsertEvent>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QAccessibleTextInsertEvent>
#endif

    /*
    QAccessibleTextInsertEvent( QObject * obj, int position, const QString &text )
    */
HB_FUNC_STATIC(QACCESSIBLETEXTINSERTEVENT_NEW)
{
  if (ISNUMPAR(3) && ISQOBJECT(1) && HB_ISNUM(2) && HB_ISCHAR(3))
  {
    QAccessibleTextInsertEvent *obj = new QAccessibleTextInsertEvent(PQOBJECT(1), PINT(2), PQSTRING(3));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QACCESSIBLETEXTINSERTEVENT_DELETE)
{
  QAccessibleTextInsertEvent *obj = (QAccessibleTextInsertEvent *)Qt5xHb::itemGetPtrStackSelfItem();

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
QString textInserted() const
*/
HB_FUNC_STATIC(QACCESSIBLETEXTINSERTEVENT_TEXTINSERTED)
{
  QAccessibleTextInsertEvent *obj = (QAccessibleTextInsertEvent *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->textInserted());
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
int changePosition() const
*/
HB_FUNC_STATIC(QACCESSIBLETEXTINSERTEVENT_CHANGEPOSITION)
{
  QAccessibleTextInsertEvent *obj = (QAccessibleTextInsertEvent *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->changePosition());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
