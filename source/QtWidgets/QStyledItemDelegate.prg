//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QITEMEDITORFACTORY
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QStyledItemDelegate INHERIT QAbstractItemDelegate

   METHOD new
   METHOD delete
   METHOD paint
   METHOD sizeHint
   METHOD createEditor
   METHOD setEditorData
   METHOD setModelData
   METHOD updateEditorGeometry
   METHOD itemEditorFactory
   METHOD setItemEditorFactory
   METHOD displayText

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyledItemDelegate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyledItemDelegate>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyledItemDelegate>
#endif

    /*
    QStyledItemDelegate( QObject * parent = 0 )
    */
HB_FUNC_STATIC(QSTYLEDITEMDELEGATE_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QStyledItemDelegate *obj = new QStyledItemDelegate(OPQOBJECT(1, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSTYLEDITEMDELEGATE_DELETE)
{
  QStyledItemDelegate *obj = (QStyledItemDelegate *)Qt5xHb::itemGetPtrStackSelfItem();

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
void paint( QPainter * painter, const QStyleOptionViewItem &option, const QModelIndex &index ) const
*/
HB_FUNC_STATIC(QSTYLEDITEMDELEGATE_PAINT)
{
  QStyledItemDelegate *obj = (QStyledItemDelegate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && ISQPAINTER(1) && ISQSTYLEOPTIONVIEWITEM(2) && ISQMODELINDEX(3))
    {
#endif
      obj->paint(PQPAINTER(1), *PQSTYLEOPTIONVIEWITEM(2), *PQMODELINDEX(3));
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
QSize sizeHint( const QStyleOptionViewItem &option, const QModelIndex &index ) const
*/
HB_FUNC_STATIC(QSTYLEDITEMDELEGATE_SIZEHINT)
{
  QStyledItemDelegate *obj = (QStyledItemDelegate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQSTYLEOPTIONVIEWITEM(1) && ISQMODELINDEX(2))
    {
#endif
      QSize *ptr = new QSize(obj->sizeHint(*PQSTYLEOPTIONVIEWITEM(1), *PQMODELINDEX(2)));
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
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
QWidget * createEditor( QWidget * parent, const QStyleOptionViewItem &option, const QModelIndex &index ) const
*/
HB_FUNC_STATIC(QSTYLEDITEMDELEGATE_CREATEEDITOR)
{
  QStyledItemDelegate *obj = (QStyledItemDelegate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && ISQWIDGET(1) && ISQSTYLEOPTIONVIEWITEM(2) && ISQMODELINDEX(3))
    {
#endif
      QWidget *ptr = obj->createEditor(PQWIDGET(1), *PQSTYLEOPTIONVIEWITEM(2), *PQMODELINDEX(3));
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
void setEditorData( QWidget * editor, const QModelIndex &index ) const
*/
HB_FUNC_STATIC(QSTYLEDITEMDELEGATE_SETEDITORDATA)
{
  QStyledItemDelegate *obj = (QStyledItemDelegate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQWIDGET(1) && ISQMODELINDEX(2))
    {
#endif
      obj->setEditorData(PQWIDGET(1), *PQMODELINDEX(2));
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
void setModelData( QWidget * editor, QAbstractItemModel * model, const QModelIndex &index ) const
*/
HB_FUNC_STATIC(QSTYLEDITEMDELEGATE_SETMODELDATA)
{
  QStyledItemDelegate *obj = (QStyledItemDelegate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && ISQWIDGET(1) && ISQABSTRACTITEMMODEL(2) && ISQMODELINDEX(3))
    {
#endif
      obj->setModelData(PQWIDGET(1), PQABSTRACTITEMMODEL(2), *PQMODELINDEX(3));
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
void updateEditorGeometry( QWidget * editor, const QStyleOptionViewItem &option, const QModelIndex &index ) const
*/
HB_FUNC_STATIC(QSTYLEDITEMDELEGATE_UPDATEEDITORGEOMETRY)
{
  QStyledItemDelegate *obj = (QStyledItemDelegate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && ISQWIDGET(1) && ISQSTYLEOPTIONVIEWITEM(2) && ISQMODELINDEX(3))
    {
#endif
      obj->updateEditorGeometry(PQWIDGET(1), *PQSTYLEOPTIONVIEWITEM(2), *PQMODELINDEX(3));
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
QItemEditorFactory * itemEditorFactory() const
*/
HB_FUNC_STATIC(QSTYLEDITEMDELEGATE_ITEMEDITORFACTORY)
{
  QStyledItemDelegate *obj = (QStyledItemDelegate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QItemEditorFactory *ptr = obj->itemEditorFactory();
      Qt5xHb::createReturnClass(ptr, "QITEMEDITORFACTORY", false);
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
void setItemEditorFactory( QItemEditorFactory * factory )
*/
HB_FUNC_STATIC(QSTYLEDITEMDELEGATE_SETITEMEDITORFACTORY)
{
  QStyledItemDelegate *obj = (QStyledItemDelegate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQITEMEDITORFACTORY(1))
    {
#endif
      obj->setItemEditorFactory(PQITEMEDITORFACTORY(1));
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
virtual QString displayText( const QVariant &value, const QLocale &locale ) const
*/
HB_FUNC_STATIC(QSTYLEDITEMDELEGATE_DISPLAYTEXT)
{
  QStyledItemDelegate *obj = (QStyledItemDelegate *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQVARIANT(1) && ISQLOCALE(2))
    {
#endif
      RQSTRING(obj->displayText(*PQVARIANT(1), *PQLOCALE(2)));
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
