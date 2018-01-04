/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QMODELINDEX
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

PROCEDURE destroyObject () CLASS QStringListModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStringListModel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStringListModel>
#endif

/*
QStringListModel(QObject * parent = 0)
*/
void QStringListModel_new1 ()
{
  QStringListModel * o = new QStringListModel ( OPQOBJECT(1,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QStringListModel(const QStringList & strings, QObject * parent = 0)
*/
void QStringListModel_new2 ()
{
  QStringListModel * o = new QStringListModel ( PQSTRINGLIST(1), OPQOBJECT(2,0) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QStringListModel(QObject * parent = 0)
//[2]QStringListModel(const QStringList & strings, QObject * parent = 0)

HB_FUNC_STATIC( QSTRINGLISTMODEL_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QStringListModel_new1();
  }
  else if( ISBETWEEN(1,2) && ISARRAY(1) && ISOPTQOBJECT(2) )
  {
    QStringListModel_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setStringList(const QStringList & strings)
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_SETSTRINGLIST )
{
  QStringListModel * obj = (QStringListModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      obj->setStringList ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList stringList() const
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_STRINGLIST )
{
  QStringListModel * obj = (QStringListModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRINGLIST( obj->stringList () );
  }
}

/*
virtual QVariant data(const QModelIndex & index, int role) const
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_DATA )
{
  QStringListModel * obj = (QStringListModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) && ISNUM(2) )
    {
      QVariant * ptr = new QVariant( obj->data ( *PQMODELINDEX(1), PINT(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual Qt::ItemFlags flags(const QModelIndex & index) const
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_FLAGS )
{
  QStringListModel * obj = (QStringListModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) )
    {
      hb_retni( obj->flags ( *PQMODELINDEX(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool insertRows(int row, int count, const QModelIndex & parent = QModelIndex())
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_INSERTROWS )
{
  QStringListModel * obj = (QStringListModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
      RBOOL( obj->insertRows ( PINT(1), PINT(2), par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool removeRows(int row, int count, const QModelIndex & parent = QModelIndex())
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_REMOVEROWS )
{
  QStringListModel * obj = (QStringListModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
      RBOOL( obj->removeRows ( PINT(1), PINT(2), par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual int rowCount(const QModelIndex & parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_ROWCOUNT )
{
  QStringListModel * obj = (QStringListModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
      RINT( obj->rowCount ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool setData(const QModelIndex & index, const QVariant & value, int role = Qt::EditRole)
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_SETDATA )
{
  QStringListModel * obj = (QStringListModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) && ISQVARIANT(2) && ISOPTNUM(3) )
    {
      RBOOL( obj->setData ( *PQMODELINDEX(1), *PQVARIANT(2), OPINT(3,Qt::EditRole) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QModelIndex sibling(int row, int column, const QModelIndex & idx) const
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_SIBLING )
{
  QStringListModel * obj = (QStringListModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISQMODELINDEX(3) )
    {
      QModelIndex * ptr = new QModelIndex( obj->sibling ( PINT(1), PINT(2), *PQMODELINDEX(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void sort(int column, Qt::SortOrder order = Qt::AscendingOrder)
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_SORT )
{
  QStringListModel * obj = (QStringListModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) Qt::AscendingOrder : hb_parni(2);
      obj->sort ( PINT(1), (Qt::SortOrder) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual Qt::DropActions supportedDropActions() const
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_SUPPORTEDDROPACTIONS )
{
  QStringListModel * obj = (QStringListModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->supportedDropActions () );
  }
}

#pragma ENDDUMP
