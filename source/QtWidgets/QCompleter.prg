//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTITEMMODEL
REQUEST QABSTRACTITEMVIEW
REQUEST QMODELINDEX
REQUEST QWIDGET
#endif

CLASS QCompleter INHERIT QObject

   METHOD new
   METHOD delete
   METHOD caseSensitivity
   METHOD completionColumn
   METHOD completionCount
   METHOD completionMode
   METHOD completionModel
   METHOD completionPrefix
   METHOD completionRole
   METHOD currentCompletion
   METHOD currentIndex
   METHOD currentRow
   METHOD maxVisibleItems
   METHOD model
   METHOD modelSorting
   METHOD pathFromIndex
   METHOD popup
   METHOD setCaseSensitivity
   METHOD setCompletionColumn
   METHOD setCompletionMode
   METHOD setCompletionRole
   METHOD setCurrentRow
   METHOD setMaxVisibleItems
   METHOD setModel
   METHOD setModelSorting
   METHOD setPopup
   METHOD setWidget
   METHOD splitPath
   METHOD widget
   METHOD wrapAround
   METHOD complete
   METHOD setCompletionPrefix
   METHOD setWrapAround
   METHOD setFilterMode
   METHOD filterMode

   METHOD onActivated1
   METHOD onActivated2
   METHOD onHighlighted1
   METHOD onHighlighted2

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCompleter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QCompleter>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QCompleter>
#endif

#include <QtCore/QStringList>
#include <QtWidgets/QAbstractItemView>

HB_FUNC_STATIC(QCOMPLETER_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    /*
    QCompleter( QObject * parent = 0 )
    */
    QCompleter *obj = new QCompleter(OPQOBJECT(1, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 2) && ISQABSTRACTITEMMODEL(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    /*
    QCompleter( QAbstractItemModel * model, QObject * parent = 0 )
    */
    QCompleter *obj = new QCompleter(PQABSTRACTITEMMODEL(1), OPQOBJECT(2, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
#ifndef QT_NO_STRINGLISTMODEL
  else if (ISBETWEEN(1, 2) && HB_ISARRAY(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    /*
    QCompleter( const QStringList & list, QObject * parent = 0 )
    */
#ifndef QT_NO_STRINGLISTMODEL
    QCompleter *obj = new QCompleter(PQSTRINGLIST(1), OPQOBJECT(2, 0));
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
#endif
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QCompleter()
*/
HB_FUNC_STATIC(QCOMPLETER_DELETE)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

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
Qt::CaseSensitivity caseSensitivity() const
*/
HB_FUNC_STATIC(QCOMPLETER_CASESENSITIVITY)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->caseSensitivity());
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
int completionColumn() const
*/
HB_FUNC_STATIC(QCOMPLETER_COMPLETIONCOLUMN)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->completionColumn());
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
int completionCount() const
*/
HB_FUNC_STATIC(QCOMPLETER_COMPLETIONCOUNT)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->completionCount());
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
QCompleter::CompletionMode completionMode() const
*/
HB_FUNC_STATIC(QCOMPLETER_COMPLETIONMODE)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->completionMode());
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
QAbstractItemModel * completionModel() const
*/
HB_FUNC_STATIC(QCOMPLETER_COMPLETIONMODEL)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QAbstractItemModel *ptr = obj->completionModel();
      Qt5xHb::createReturnQObjectClass(ptr, "QABSTRACTITEMMODEL");
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
QString completionPrefix() const
*/
HB_FUNC_STATIC(QCOMPLETER_COMPLETIONPREFIX)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->completionPrefix());
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
int completionRole() const
*/
HB_FUNC_STATIC(QCOMPLETER_COMPLETIONROLE)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->completionRole());
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
QString currentCompletion() const
*/
HB_FUNC_STATIC(QCOMPLETER_CURRENTCOMPLETION)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->currentCompletion());
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
QModelIndex currentIndex() const
*/
HB_FUNC_STATIC(QCOMPLETER_CURRENTINDEX)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QModelIndex *ptr = new QModelIndex(obj->currentIndex());
      Qt5xHb::createReturnClass(ptr, "QMODELINDEX", true);
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
int currentRow() const
*/
HB_FUNC_STATIC(QCOMPLETER_CURRENTROW)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->currentRow());
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
int maxVisibleItems() const
*/
HB_FUNC_STATIC(QCOMPLETER_MAXVISIBLEITEMS)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->maxVisibleItems());
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
QAbstractItemModel * model() const
*/
HB_FUNC_STATIC(QCOMPLETER_MODEL)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QAbstractItemModel *ptr = obj->model();
      Qt5xHb::createReturnQObjectClass(ptr, "QABSTRACTITEMMODEL");
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
QCompleter::ModelSorting modelSorting() const
*/
HB_FUNC_STATIC(QCOMPLETER_MODELSORTING)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->modelSorting());
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
virtual QString pathFromIndex( const QModelIndex & index ) const
*/
HB_FUNC_STATIC(QCOMPLETER_PATHFROMINDEX)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQMODELINDEX(1))
    {
#endif
      RQSTRING(obj->pathFromIndex(*PQMODELINDEX(1)));
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
QAbstractItemView * popup() const
*/
HB_FUNC_STATIC(QCOMPLETER_POPUP)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QAbstractItemView *ptr = obj->popup();
      Qt5xHb::createReturnQWidgetClass(ptr, "QABSTRACTITEMVIEW");
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
void setCaseSensitivity( Qt::CaseSensitivity caseSensitivity )
*/
HB_FUNC_STATIC(QCOMPLETER_SETCASESENSITIVITY)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setCaseSensitivity((Qt::CaseSensitivity)hb_parni(1));
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
void setCompletionColumn( int column )
*/
HB_FUNC_STATIC(QCOMPLETER_SETCOMPLETIONCOLUMN)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setCompletionColumn(PINT(1));
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
void setCompletionMode( QCompleter::CompletionMode mode )
*/
HB_FUNC_STATIC(QCOMPLETER_SETCOMPLETIONMODE)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setCompletionMode((QCompleter::CompletionMode)hb_parni(1));
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
void setCompletionRole( int role )
*/
HB_FUNC_STATIC(QCOMPLETER_SETCOMPLETIONROLE)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setCompletionRole(PINT(1));
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
bool setCurrentRow( int row )
*/
HB_FUNC_STATIC(QCOMPLETER_SETCURRENTROW)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->setCurrentRow(PINT(1)));
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
void setMaxVisibleItems( int maxItems )
*/
HB_FUNC_STATIC(QCOMPLETER_SETMAXVISIBLEITEMS)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setMaxVisibleItems(PINT(1));
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
void setModel( QAbstractItemModel * model )
*/
HB_FUNC_STATIC(QCOMPLETER_SETMODEL)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1))
    {
#endif
      obj->setModel(PQABSTRACTITEMMODEL(1));
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
void setModelSorting( QCompleter::ModelSorting sorting )
*/
HB_FUNC_STATIC(QCOMPLETER_SETMODELSORTING)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setModelSorting((QCompleter::ModelSorting)hb_parni(1));
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
void setPopup( QAbstractItemView * popup )
*/
HB_FUNC_STATIC(QCOMPLETER_SETPOPUP)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTITEMVIEW(1))
    {
#endif
      obj->setPopup(PQABSTRACTITEMVIEW(1));
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
void setWidget( QWidget * widget )
*/
HB_FUNC_STATIC(QCOMPLETER_SETWIDGET)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQWIDGET(1))
    {
#endif
      obj->setWidget(PQWIDGET(1));
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
virtual QStringList splitPath( const QString & path ) const
*/
HB_FUNC_STATIC(QCOMPLETER_SPLITPATH)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RQSTRINGLIST(obj->splitPath(PQSTRING(1)));
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
QWidget * widget() const
*/
HB_FUNC_STATIC(QCOMPLETER_WIDGET)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QWidget *ptr = obj->widget();
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
bool wrapAround() const
*/
HB_FUNC_STATIC(QCOMPLETER_WRAPAROUND)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->wrapAround());
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
void complete( const QRect & rect = QRect() )
*/
HB_FUNC_STATIC(QCOMPLETER_COMPLETE)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (ISQRECT(1) || HB_ISNIL(1)))
    {
#endif
      obj->complete(HB_ISNIL(1) ? QRect() : *(QRect *)Qt5xHb::itemGetPtr(1));
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
void setCompletionPrefix( const QString & prefix )
*/
HB_FUNC_STATIC(QCOMPLETER_SETCOMPLETIONPREFIX)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setCompletionPrefix(PQSTRING(1));
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
void setWrapAround( bool wrap )
*/
HB_FUNC_STATIC(QCOMPLETER_SETWRAPAROUND)
{
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setWrapAround(PBOOL(1));
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
void setFilterMode( Qt::MatchFlags filterMode )
*/
HB_FUNC_STATIC(QCOMPLETER_SETFILTERMODE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setFilterMode((Qt::MatchFlags)hb_parni(1));
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
Qt::MatchFlags filterMode() const
*/
HB_FUNC_STATIC(QCOMPLETER_FILTERMODE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QCompleter *obj = (QCompleter *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->filterMode());
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

void QCompleterSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QCOMPLETER_ONACTIVATED1)
{
  QCompleterSlots_connect_signal("activated(QString)", "activated(QString)");
}

HB_FUNC_STATIC(QCOMPLETER_ONACTIVATED2)
{
  QCompleterSlots_connect_signal("activated(QModelIndex)", "activated(QModelIndex)");
}

HB_FUNC_STATIC(QCOMPLETER_ONHIGHLIGHTED1)
{
  QCompleterSlots_connect_signal("highlighted(QString)", "highlighted(QString)");
}

HB_FUNC_STATIC(QCOMPLETER_ONHIGHLIGHTED2)
{
  QCompleterSlots_connect_signal("highlighted(QModelIndex)", "highlighted(QModelIndex)");
}

#pragma ENDDUMP
