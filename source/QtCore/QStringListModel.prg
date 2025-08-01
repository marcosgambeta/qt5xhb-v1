//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QVARIANT
#endif

CLASS QStringListModel INHERIT QAbstractListModel

   METHOD new
   METHOD setStringList
   METHOD stringList
   METHOD data
   METHOD flags
   METHOD insertRows
   METHOD removeRows
   METHOD rowCount
   METHOD setData
   METHOD sibling
   METHOD sort
   METHOD supportedDropActions

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStringListModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QStringListModel>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QStringListModel>
#endif

HB_FUNC_STATIC(QSTRINGLISTMODEL_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    /*
    QStringListModel( QObject * parent = 0 )
    */
    QStringListModel *obj = new QStringListModel(OPQOBJECT(1, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 2) && HB_ISARRAY(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    /*
    QStringListModel( const QStringList &strings, QObject * parent = 0)
    */
    QStringListModel *obj = new QStringListModel(PQSTRINGLIST(1), OPQOBJECT(2, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setStringList( const QStringList &strings )
*/
HB_FUNC_STATIC(QSTRINGLISTMODEL_SETSTRINGLIST)
{
  QStringListModel *obj = (QStringListModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISARRAY(1))
    {
#endif
      obj->setStringList(PQSTRINGLIST(1));
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
QStringList stringList() const
*/
HB_FUNC_STATIC(QSTRINGLISTMODEL_STRINGLIST)
{
  QStringListModel *obj = (QStringListModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->stringList());
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
virtual QVariant data( const QModelIndex &index, int role ) const
*/
HB_FUNC_STATIC(QSTRINGLISTMODEL_DATA)
{
  QStringListModel *obj = (QStringListModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQMODELINDEX(1) && HB_ISNUM(2))
    {
#endif
      QVariant *ptr = new QVariant(obj->data(*PQMODELINDEX(1), PINT(2)));
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
virtual Qt::ItemFlags flags( const QModelIndex &index ) const
*/
HB_FUNC_STATIC(QSTRINGLISTMODEL_FLAGS)
{
  QStringListModel *obj = (QStringListModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQMODELINDEX(1))
    {
#endif
      RENUM(obj->flags(*PQMODELINDEX(1)));
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
virtual bool insertRows( int row, int count, const QModelIndex &parent = QModelIndex() )
*/
HB_FUNC_STATIC(QSTRINGLISTMODEL_INSERTROWS)
{
  QStringListModel *obj = (QStringListModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3) || HB_ISNIL(3)))
    {
#endif
      RBOOL(obj->insertRows(PINT(1), PINT(2), HB_ISNIL(3) ? QModelIndex() : *(QModelIndex *)Qt5xHb::itemGetPtr(3)));
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
virtual bool removeRows( int row, int count, const QModelIndex &parent = QModelIndex() )
*/
HB_FUNC_STATIC(QSTRINGLISTMODEL_REMOVEROWS)
{
  QStringListModel *obj = (QStringListModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3) || HB_ISNIL(3)))
    {
#endif
      RBOOL(obj->removeRows(PINT(1), PINT(2), HB_ISNIL(3) ? QModelIndex() : *(QModelIndex *)Qt5xHb::itemGetPtr(3)));
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
virtual int rowCount( const QModelIndex &parent = QModelIndex() ) const
*/
HB_FUNC_STATIC(QSTRINGLISTMODEL_ROWCOUNT)
{
  QStringListModel *obj = (QStringListModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (ISQMODELINDEX(1) || HB_ISNIL(1)))
    {
#endif
      RINT(obj->rowCount(HB_ISNIL(1) ? QModelIndex() : *(QModelIndex *)Qt5xHb::itemGetPtr(1)));
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
virtual bool setData( const QModelIndex &index, const QVariant &value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC(QSTRINGLISTMODEL_SETDATA)
{
  QStringListModel *obj = (QStringListModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && ISQMODELINDEX(1) && ISQVARIANT(2) && ISNUMORNIL(3))
    {
#endif
      RBOOL(obj->setData(*PQMODELINDEX(1), *PQVARIANT(2), OPINT(3, Qt::EditRole)));
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
virtual QModelIndex sibling( int row, int column, const QModelIndex &idx ) const
*/
HB_FUNC_STATIC(QSTRINGLISTMODEL_SIBLING)
{
  QStringListModel *obj = (QStringListModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && ISQMODELINDEX(3))
    {
#endif
      QModelIndex *ptr = new QModelIndex(obj->sibling(PINT(1), PINT(2), *PQMODELINDEX(3)));
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
virtual void sort( int column, Qt::SortOrder order = Qt::AscendingOrder )
*/
HB_FUNC_STATIC(QSTRINGLISTMODEL_SORT)
{
  QStringListModel *obj = (QStringListModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISNUM(1) && ISNUMORNIL(2))
    {
#endif
      obj->sort(PINT(1), HB_ISNIL(2) ? (Qt::SortOrder)Qt::AscendingOrder : (Qt::SortOrder)hb_parni(2));
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
virtual Qt::DropActions supportedDropActions() const
*/
HB_FUNC_STATIC(QSTRINGLISTMODEL_SUPPORTEDDROPACTIONS)
{
  QStringListModel *obj = (QStringListModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->supportedDropActions());
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
