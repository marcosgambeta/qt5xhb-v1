//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QUNDOSTACK
#endif

CLASS QUndoGroup INHERIT QObject

   METHOD new
   METHOD delete
   METHOD activeStack
   METHOD addStack
   METHOD canRedo
   METHOD canUndo
   METHOD createRedoAction
   METHOD createUndoAction
   METHOD isClean
   METHOD redoText
   METHOD removeStack
   METHOD stacks
   METHOD undoText
   METHOD redo
   METHOD setActiveStack
   METHOD undo

   METHOD onActiveStackChanged
   METHOD onCanRedoChanged
   METHOD onCanUndoChanged
   METHOD onCleanChanged
   METHOD onIndexChanged
   METHOD onRedoTextChanged
   METHOD onUndoTextChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QUndoGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QUndoGroup>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QUndoGroup>
#endif

#include <QtWidgets/QUndoStack>
#include <QtWidgets/QAction>

    /*
    QUndoGroup( QObject * parent = 0 )
    */
HB_FUNC_STATIC(QUNDOGROUP_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QUndoGroup *obj = new QUndoGroup(OPQOBJECT(1, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QUNDOGROUP_DELETE)
{
  QUndoGroup *obj = (QUndoGroup *)Qt5xHb::itemGetPtrStackSelfItem();

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
QUndoStack * activeStack() const
*/
HB_FUNC_STATIC(QUNDOGROUP_ACTIVESTACK)
{
  QUndoGroup *obj = (QUndoGroup *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QUndoStack *ptr = obj->activeStack();
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
void addStack( QUndoStack * stack )
*/
HB_FUNC_STATIC(QUNDOGROUP_ADDSTACK)
{
  QUndoGroup *obj = (QUndoGroup *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQUNDOSTACK(1))
    {
#endif
      obj->addStack(PQUNDOSTACK(1));
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
bool canRedo() const
*/
HB_FUNC_STATIC(QUNDOGROUP_CANREDO)
{
  QUndoGroup *obj = (QUndoGroup *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->canRedo());
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
bool canUndo() const
*/
HB_FUNC_STATIC(QUNDOGROUP_CANUNDO)
{
  QUndoGroup *obj = (QUndoGroup *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->canUndo());
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
QAction * createRedoAction( QObject * parent, const QString &prefix = QString() ) const
*/
HB_FUNC_STATIC(QUNDOGROUP_CREATEREDOACTION)
{
  QUndoGroup *obj = (QUndoGroup *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && ISQOBJECT(1) && (HB_ISCHAR(2) || HB_ISNIL(2)))
    {
#endif
      QAction *ptr = obj->createRedoAction(PQOBJECT(1), OPQSTRING(2, QString()));
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
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
QAction * createUndoAction( QObject * parent, const QString &prefix = QString() ) const
*/
HB_FUNC_STATIC(QUNDOGROUP_CREATEUNDOACTION)
{
  QUndoGroup *obj = (QUndoGroup *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && ISQOBJECT(1) && (HB_ISCHAR(2) || HB_ISNIL(2)))
    {
#endif
      QAction *ptr = obj->createUndoAction(PQOBJECT(1), OPQSTRING(2, QString()));
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
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
bool isClean() const
*/
HB_FUNC_STATIC(QUNDOGROUP_ISCLEAN)
{
  QUndoGroup *obj = (QUndoGroup *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isClean());
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
QString redoText() const
*/
HB_FUNC_STATIC(QUNDOGROUP_REDOTEXT)
{
  QUndoGroup *obj = (QUndoGroup *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->redoText());
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
void removeStack( QUndoStack * stack )
*/
HB_FUNC_STATIC(QUNDOGROUP_REMOVESTACK)
{
  QUndoGroup *obj = (QUndoGroup *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQUNDOSTACK(1))
    {
#endif
      obj->removeStack(PQUNDOSTACK(1));
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
QList<QUndoStack*> stacks() const
*/
HB_FUNC_STATIC(QUNDOGROUP_STACKS)
{
  QUndoGroup *obj = (QUndoGroup *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QList<QUndoStack *> list = obj->stacks();
      PHB_DYNS pDynSym = hb_dynsymFindName("QUNDOSTACK");
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
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QUNDOSTACK", HB_ERR_ARGS_BASEPARAMS);
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
}

/*
QString undoText() const
*/
HB_FUNC_STATIC(QUNDOGROUP_UNDOTEXT)
{
  QUndoGroup *obj = (QUndoGroup *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->undoText());
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
void redo()
*/
HB_FUNC_STATIC(QUNDOGROUP_REDO)
{
  QUndoGroup *obj = (QUndoGroup *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->redo();
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
void setActiveStack( QUndoStack * stack )
*/
HB_FUNC_STATIC(QUNDOGROUP_SETACTIVESTACK)
{
  QUndoGroup *obj = (QUndoGroup *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQUNDOSTACK(1))
    {
#endif
      obj->setActiveStack(PQUNDOSTACK(1));
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
void undo()
*/
HB_FUNC_STATIC(QUNDOGROUP_UNDO)
{
  QUndoGroup *obj = (QUndoGroup *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->undo();
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

void QUndoGroupSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QUNDOGROUP_ONACTIVESTACKCHANGED)
{
  QUndoGroupSlots_connect_signal("activeStackChanged(QUndoStack*)", "activeStackChanged(QUndoStack*)");
}

HB_FUNC_STATIC(QUNDOGROUP_ONCANREDOCHANGED)
{
  QUndoGroupSlots_connect_signal("canRedoChanged(bool)", "canRedoChanged(bool)");
}

HB_FUNC_STATIC(QUNDOGROUP_ONCANUNDOCHANGED)
{
  QUndoGroupSlots_connect_signal("canUndoChanged(bool)", "canUndoChanged(bool)");
}

HB_FUNC_STATIC(QUNDOGROUP_ONCLEANCHANGED)
{
  QUndoGroupSlots_connect_signal("cleanChanged(bool)", "cleanChanged(bool)");
}

HB_FUNC_STATIC(QUNDOGROUP_ONINDEXCHANGED)
{
  QUndoGroupSlots_connect_signal("indexChanged(int)", "indexChanged(int)");
}

HB_FUNC_STATIC(QUNDOGROUP_ONREDOTEXTCHANGED)
{
  QUndoGroupSlots_connect_signal("redoTextChanged(QString)", "redoTextChanged(QString)");
}

HB_FUNC_STATIC(QUNDOGROUP_ONUNDOTEXTCHANGED)
{
  QUndoGroupSlots_connect_signal("undoTextChanged(QString)", "undoTextChanged(QString)");
}

#pragma ENDDUMP
