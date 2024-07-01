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
REQUEST QICON
REQUEST QUNDOGROUP
REQUEST QUNDOSTACK
#endif

CLASS QUndoView INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD cleanIcon
   METHOD emptyLabel
   METHOD group
   METHOD setCleanIcon
   METHOD setEmptyLabel
   METHOD stack
   METHOD setGroup
   METHOD setStack

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QUndoView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QUndoView>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QUndoView>
#endif

#include <QtWidgets/QUndoGroup>
#include <QtWidgets/QUndoStack>

HB_FUNC_STATIC(QUNDOVIEW_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQWIDGET(1) || HB_ISNIL(1)))
  {
    /*
    QUndoView( QWidget * parent = 0 )
    */
    QUndoView *obj = new QUndoView(OPQWIDGET(1, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 2) && ISQUNDOSTACK(1) && (ISQWIDGET(2) || HB_ISNIL(2)))
  {
    /*
    QUndoView( QUndoStack * stack, QWidget * parent = 0 )
    */
    QUndoView *obj = new QUndoView(PQUNDOSTACK(1), OPQWIDGET(2, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 2) && ISQUNDOGROUP(1) && (ISQWIDGET(2) || HB_ISNIL(2)))
  {
    /*
    QUndoView( QUndoGroup * group, QWidget * parent = 0 )
    */
    QUndoView *obj = new QUndoView(PQUNDOGROUP(1), OPQWIDGET(2, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QUNDOVIEW_DELETE)
{
  QUndoView *obj = (QUndoView *)Qt5xHb::itemGetPtrStackSelfItem();

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

/*
QIcon cleanIcon() const
*/
HB_FUNC_STATIC(QUNDOVIEW_CLEANICON)
{
  QUndoView *obj = (QUndoView *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QIcon *ptr = new QIcon(obj->cleanIcon());
      Qt5xHb::createReturnClass(ptr, "QICON", true);
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
QString emptyLabel() const
*/
HB_FUNC_STATIC(QUNDOVIEW_EMPTYLABEL)
{
  QUndoView *obj = (QUndoView *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->emptyLabel());
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
QUndoGroup * group() const
*/
HB_FUNC_STATIC(QUNDOVIEW_GROUP)
{
  QUndoView *obj = (QUndoView *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QUndoGroup *ptr = obj->group();
      Qt5xHb::createReturnQObjectClass(ptr, "QUNDOGROUP");
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
void setCleanIcon( const QIcon & icon )
*/
HB_FUNC_STATIC(QUNDOVIEW_SETCLEANICON)
{
  QUndoView *obj = (QUndoView *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && (ISQICON(1) || HB_ISCHAR(1)))
    {
#endif
      obj->setCleanIcon(HB_ISOBJECT(1) ? *(QIcon *)Qt5xHb::itemGetPtr(1) : QIcon(hb_parc(1)));
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
void setEmptyLabel( const QString & label )
*/
HB_FUNC_STATIC(QUNDOVIEW_SETEMPTYLABEL)
{
  QUndoView *obj = (QUndoView *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setEmptyLabel(PQSTRING(1));
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
QUndoStack * stack() const
*/
HB_FUNC_STATIC(QUNDOVIEW_STACK)
{
  QUndoView *obj = (QUndoView *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QUndoStack *ptr = obj->stack();
      Qt5xHb::createReturnQObjectClass(ptr, "QUNDOSTACK");
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
void setGroup( QUndoGroup * group )
*/
HB_FUNC_STATIC(QUNDOVIEW_SETGROUP)
{
  QUndoView *obj = (QUndoView *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQUNDOGROUP(1))
    {
#endif
      obj->setGroup(PQUNDOGROUP(1));
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
void setStack( QUndoStack * stack )
*/
HB_FUNC_STATIC(QUNDOVIEW_SETSTACK)
{
  QUndoView *obj = (QUndoView *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQUNDOSTACK(1))
    {
#endif
      obj->setStack(PQUNDOSTACK(1));
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
