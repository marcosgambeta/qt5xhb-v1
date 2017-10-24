/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSQLRELATION
REQUEST QSQLTABLEMODEL
REQUEST QVARIANT
#endif

CLASS QSqlRelationalTableModel INHERIT QSqlTableModel

   METHOD new
   METHOD delete
   METHOD relation
   METHOD relationModel
   METHOD setRelation
   METHOD clear
   METHOD data
   METHOD removeColumns
   METHOD select
   METHOD setData
   METHOD setTable
   METHOD revertRow
   METHOD setJoinMode

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlRelationalTableModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSqlRelationalTableModel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSqlRelationalTableModel>
#endif

/*
explicit QSqlRelationalTableModel ( QObject * parent = 0, QSqlDatabase db = QSqlDatabase() )
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_NEW )
{
  QSqlDatabase par2 = ISNIL(2)? QSqlDatabase() : *(QSqlDatabase *) _qt5xhb_itemGetPtr(2);
  QSqlRelationalTableModel * o = new QSqlRelationalTableModel ( OPQOBJECT(1,0), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_DELETE )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QSqlRelation relation ( int column ) const
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_RELATION )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QSqlRelation * ptr = new QSqlRelation( obj->relation ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSQLRELATION", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QSqlTableModel * relationModel ( int column ) const
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_RELATIONMODEL )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QSqlTableModel * ptr = obj->relationModel ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QSQLTABLEMODEL" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setRelation ( int column, const QSqlRelation & relation )
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_SETRELATION )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQSQLRELATION(2) )
    {
      QSqlRelation * par2 = (QSqlRelation *) _qt5xhb_itemGetPtr(2);
      obj->setRelation ( PINT(1), *par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clear ()
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_CLEAR )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_DATA )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_REMOVECOLUMNS )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
      RBOOL( obj->removeColumns ( PINT(1), PINT(2), par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool select ()
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_SELECT )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->select () );
  }
}

/*
bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_SETDATA )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setTable ( const QString & table )
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_SETTABLE )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
void revertRow ( int row )
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_REVERTROW )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setJoinMode( QSqlRelationalTableModel::JoinMode joinMode )
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_SETJOINMODE )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setJoinMode ( (QSqlRelationalTableModel::JoinMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
