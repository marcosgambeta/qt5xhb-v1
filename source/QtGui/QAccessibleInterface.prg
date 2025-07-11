//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCESSIBLEACTIONINTERFACE
REQUEST QACCESSIBLEEDITABLETEXTINTERFACE
REQUEST QACCESSIBLEIMAGEINTERFACE
REQUEST QACCESSIBLETABLECELLINTERFACE
REQUEST QACCESSIBLETABLEINTERFACE
REQUEST QACCESSIBLETEXTINTERFACE
REQUEST QACCESSIBLEVALUEINTERFACE
REQUEST QCOLOR
REQUEST QOBJECT
REQUEST QRECT
REQUEST QWINDOW
#endif

CLASS QAccessibleInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD isValid
   METHOD object
   METHOD window
   METHOD focusChild
   METHOD childAt
   METHOD parent
   METHOD child
   METHOD childCount
   METHOD indexOfChild
   METHOD text
   METHOD setText
   METHOD rect
   METHOD role
   METHOD foregroundColor
   METHOD backgroundColor
   METHOD textInterface
   METHOD editableTextInterface
   METHOD valueInterface
   METHOD actionInterface
   METHOD imageInterface
   METHOD tableInterface
   METHOD tableCellInterface
   METHOD virtual_hook
   METHOD interface_cast

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAccessibleInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QAccessibleInterface>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QAccessibleInterface>
#endif

#include <QtGui/QWindow>

    /*
    virtual bool isValid() const = 0
    */
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_ISVALID)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isValid());
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
virtual QObject * object() const = 0
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_OBJECT)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QObject *ptr = obj->object();
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
virtual QWindow * window() const
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_WINDOW)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QWindow *ptr = obj->window();
      Qt5xHb::createReturnQObjectClass(ptr, "QWINDOW");
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
virtual QAccessibleInterface * focusChild() const
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_FOCUSCHILD)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QAccessibleInterface *ptr = obj->focusChild();
      Qt5xHb::createReturnClass(ptr, "QACCESSIBLEINTERFACE", false);
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
virtual QAccessibleInterface * childAt( int x, int y ) const = 0
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_CHILDAT)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      QAccessibleInterface *ptr = obj->childAt(PINT(1), PINT(2));
      Qt5xHb::createReturnClass(ptr, "QACCESSIBLEINTERFACE", false);
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
virtual QAccessibleInterface * parent() const = 0
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_PARENT)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QAccessibleInterface *ptr = obj->parent();
      Qt5xHb::createReturnClass(ptr, "QACCESSIBLEINTERFACE", false);
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
virtual QAccessibleInterface * child( int index ) const = 0
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_CHILD)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      QAccessibleInterface *ptr = obj->child(PINT(1));
      Qt5xHb::createReturnClass(ptr, "QACCESSIBLEINTERFACE", false);
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
virtual int childCount() const = 0
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_CHILDCOUNT)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->childCount());
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
virtual int indexOfChild( const QAccessibleInterface * ) const = 0
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_INDEXOFCHILD)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQACCESSIBLEINTERFACE(1))
    {
#endif
      RINT(obj->indexOfChild(PQACCESSIBLEINTERFACE(1)));
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
virtual QString text( QAccessible::Text t ) const = 0
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_TEXT)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RQSTRING(obj->text((QAccessible::Text)hb_parni(1)));
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
virtual void setText( QAccessible::Text t, const QString &text ) = 0
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_SETTEXT)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2))
    {
#endif
      obj->setText((QAccessible::Text)hb_parni(1), PQSTRING(2));
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
virtual QRect rect() const = 0
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_RECT)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QRect *ptr = new QRect(obj->rect());
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
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
virtual QAccessible::Role role() const = 0
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_ROLE)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->role());
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
virtual QColor foregroundColor() const
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_FOREGROUNDCOLOR)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QColor *ptr = new QColor(obj->foregroundColor());
      Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
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
virtual QColor backgroundColor() const
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_BACKGROUNDCOLOR)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QColor *ptr = new QColor(obj->backgroundColor());
      Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
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
QAccessibleTextInterface * textInterface()
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_TEXTINTERFACE)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QAccessibleTextInterface *ptr = obj->textInterface();
      Qt5xHb::createReturnClass(ptr, "QACCESSIBLETEXTINTERFACE", false);
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
QAccessibleEditableTextInterface * editableTextInterface()
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_EDITABLETEXTINTERFACE)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QAccessibleEditableTextInterface *ptr = obj->editableTextInterface();
      Qt5xHb::createReturnClass(ptr, "QACCESSIBLEEDITABLETEXTINTERFACE", false);
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
QAccessibleValueInterface * valueInterface()
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_VALUEINTERFACE)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QAccessibleValueInterface *ptr = obj->valueInterface();
      Qt5xHb::createReturnClass(ptr, "QACCESSIBLEVALUEINTERFACE", false);
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
QAccessibleActionInterface * actionInterface()
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_ACTIONINTERFACE)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QAccessibleActionInterface *ptr = obj->actionInterface();
      Qt5xHb::createReturnClass(ptr, "QACCESSIBLEACTIONINTERFACE", false);
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
QAccessibleImageInterface * imageInterface()
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_IMAGEINTERFACE)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QAccessibleImageInterface *ptr = obj->imageInterface();
      Qt5xHb::createReturnClass(ptr, "QACCESSIBLEIMAGEINTERFACE", false);
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
QAccessibleTableInterface * tableInterface()
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_TABLEINTERFACE)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QAccessibleTableInterface *ptr = obj->tableInterface();
      Qt5xHb::createReturnClass(ptr, "QACCESSIBLETABLEINTERFACE", false);
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
QAccessibleTableCellInterface * tableCellInterface()
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_TABLECELLINTERFACE)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QAccessibleTableCellInterface *ptr = obj->tableCellInterface();
      Qt5xHb::createReturnClass(ptr, "QACCESSIBLETABLECELLINTERFACE", false);
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
void virtual_hook( int id, void * data )
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_VIRTUAL_HOOK)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISPOINTER(2))
    {
#endif
      obj->virtual_hook(PINT(1), (void *)hb_parptr(2));
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
virtual void * interface_cast( QAccessible::InterfaceType )
*/
HB_FUNC_STATIC(QACCESSIBLEINTERFACE_INTERFACE_CAST)
{
  QAccessibleInterface *obj = (QAccessibleInterface *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      hb_retptr((void *)obj->interface_cast((QAccessible::InterfaceType)hb_parni(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QACCESSIBLEINTERFACE_NEWFROM)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISOBJECT(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (hb_pcount() == 1 && HB_ISPOINTER(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC(QACCESSIBLEINTERFACE_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QACCESSIBLEINTERFACE_NEWFROM);
}

HB_FUNC_STATIC(QACCESSIBLEINTERFACE_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QACCESSIBLEINTERFACE_NEWFROM);
}

HB_FUNC_STATIC(QACCESSIBLEINTERFACE_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QACCESSIBLEINTERFACE_SETSELFDESTRUCTION)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISLOG(1))
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
