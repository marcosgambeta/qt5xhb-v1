/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSQLDATABASE
REQUEST QSQLINDEX
REQUEST QVARIANT
REQUEST QSQLRECORD
#endif

CLASS QSqlTableModel INHERIT QSqlQueryModel

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD database
   METHOD editStrategy
   METHOD setEditStrategy
   METHOD fieldIndex
   METHOD filter
   METHOD setFilter
   METHOD insertRecord
   METHOD isDirty
   METHOD primaryKey
   METHOD revertRow
   METHOD select
   METHOD setRecord
   METHOD sort
   METHOD setSort
   METHOD setTable
   METHOD tableName
   METHOD clear
   METHOD data
   METHOD setData
   METHOD flags
   METHOD headerData
   METHOD insertRows
   METHOD removeColumns
   METHOD removeRows
   METHOD rowCount
   METHOD revert
   METHOD revertAll
   METHOD submit
   METHOD submitAll
   METHOD record
   METHOD selectRow

   METHOD onBeforeDelete
   METHOD onBeforeInsert
   METHOD onBeforeUpdate
   METHOD onPrimeInsert

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlTableModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSqlTableModel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSqlTableModel>
#endif

#include <QSqlIndex>

/*
explicit QSqlTableModel ( QObject * parent = 0, QSqlDatabase db = QSqlDatabase() )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_NEW )
{
  QSqlDatabase par2 = ISNIL(2)? QSqlDatabase() : *(QSqlDatabase *) _qt5xhb_itemGetPtr(2);
  QSqlTableModel * o = new QSqlTableModel ( OPQOBJECT(1,0), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

HB_FUNC_STATIC( QSQLTABLEMODEL_DELETE )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSqlDatabase database () const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_DATABASE )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSqlDatabase * ptr = new QSqlDatabase( obj->database () );
    _qt5xhb_createReturnClass ( ptr, "QSQLDATABASE", true );
  }
}

/*
EditStrategy editStrategy () const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_EDITSTRATEGY )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->editStrategy () );
  }
}

/*
virtual void setEditStrategy ( EditStrategy strategy )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SETEDITSTRATEGY )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setEditStrategy ( (QSqlTableModel::EditStrategy) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int fieldIndex ( const QString & fieldName ) const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_FIELDINDEX )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      hb_retni( obj->fieldIndex ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString filter () const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_FILTER )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->filter () ) );
  }
}

/*
virtual void setFilter ( const QString & filter )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SETFILTER )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setFilter ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool insertRecord ( int row, const QSqlRecord & record )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_INSERTRECORD )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQSQLRECORD(2) )
    {
      QSqlRecord * par2 = (QSqlRecord *) _qt5xhb_itemGetPtr(2);
      hb_retl( obj->insertRecord ( PINT(1), *par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isDirty() const
*/
void QSqlTableModel_isDirty1 ()
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isDirty () );
  }
}

/*
bool isDirty ( const QModelIndex & index ) const
*/
void QSqlTableModel_isDirty2 ()
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isDirty ( *PQMODELINDEX(1) ) );
  }
}

//[1]bool isDirty() const
//[2]bool isDirty ( const QModelIndex & index ) const

HB_FUNC( QSQLTABLEMODEL_ISDIRTY )
{
  if( ISNUMPAR(0) )
  {
    QSqlTableModel_isDirty1();
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QSqlTableModel_isDirty2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSqlIndex primaryKey () const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_PRIMARYKEY )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSqlIndex * ptr = new QSqlIndex( obj->primaryKey () );
    _qt5xhb_createReturnClass ( ptr, "QSQLINDEX", true );
  }
}

/*
virtual void revertRow ( int row )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_REVERTROW )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->revertRow ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool select ()
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SELECT )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->select () );
  }
}

/*
bool setRecord ( int row, const QSqlRecord & record )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SETRECORD )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQSQLRECORD(2) )
    {
      QSqlRecord * par2 = (QSqlRecord *) _qt5xhb_itemGetPtr(2);
      hb_retl( obj->setRecord ( PINT(1), *par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void sort ( int column, Qt::SortOrder order )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SORT )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->sort ( PINT(1), (Qt::SortOrder) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setSort ( int column, Qt::SortOrder order )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SETSORT )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->setSort ( PINT(1), (Qt::SortOrder) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setTable ( const QString & tableName )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SETTABLE )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setTable ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString tableName () const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_TABLENAME )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->tableName () ) );
  }
}

/*
void clear ()
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_CLEAR )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_DATA )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) && ISOPTNUM(2) )
    {
      QVariant * ptr = new QVariant( obj->data ( *PQMODELINDEX(1), OPINT(2,Qt::DisplayRole) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SETDATA )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) && ISQVARIANT(2) && ISOPTNUM(3) )
    {
      hb_retl( obj->setData ( *PQMODELINDEX(1), *PQVARIANT(2), OPINT(3,Qt::EditRole) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::ItemFlags flags ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_FLAGS )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_HEADERDATA )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISOPTNUM(3) )
    {
      QVariant * ptr = new QVariant( obj->headerData ( PINT(1), (Qt::Orientation) hb_parni(2), OPINT(3,Qt::DisplayRole) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool insertRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_INSERTROWS )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
      hb_retl( obj->insertRows ( PINT(1), PINT(2), par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_REMOVECOLUMNS )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
      hb_retl( obj->removeColumns ( PINT(1), PINT(2), par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool removeRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_REMOVEROWS )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
      hb_retl( obj->removeRows ( PINT(1), PINT(2), par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int rowCount ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_ROWCOUNT )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
      hb_retni( obj->rowCount ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void revert ()
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_REVERT )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->revert ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void revertAll ()
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_REVERTALL )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->revertAll ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool submit ()
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SUBMIT )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->submit () );
  }
}

/*
bool submitAll ()
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SUBMITALL )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->submitAll () );
  }
}

/*
QSqlRecord record() const
*/
void QSqlTableModel_record1 ()
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSqlRecord * ptr = new QSqlRecord( obj->record () );
    _qt5xhb_createReturnClass ( ptr, "QSQLRECORD", true );
  }
}

/*
QSqlRecord record(int row) const
*/
void QSqlTableModel_record2 ()
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSqlRecord * ptr = new QSqlRecord( obj->record ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QSQLRECORD", true );
  }
}

//[1]QSqlRecord record() const
//[2]QSqlRecord record(int row) const

HB_FUNC( QSQLTABLEMODEL_RECORD )
{
  if( ISNUMPAR(0) )
  {
    QSqlTableModel_record1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlTableModel_record2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual bool selectRow(int row)
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SELECTROW )
{
  QSqlTableModel * obj = (QSqlTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retl( obj->selectRow ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
