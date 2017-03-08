/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSQLERROR
REQUEST QSQLQUERY
REQUEST QSQLRECORD
REQUEST QVARIANT
#endif

CLASS QSqlQueryModel INHERIT QAbstractTableModel

   DATA class_id INIT Class_Id_QSqlQueryModel
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD clear
   METHOD lastError
   METHOD query
   METHOD setQuery1
   METHOD setQuery2
   METHOD setQuery
   METHOD record1
   METHOD record2
   METHOD record
   METHOD canFetchMore
   METHOD columnCount
   METHOD data
   METHOD fetchMore
   METHOD headerData
   METHOD setHeaderData
   METHOD insertColumns
   METHOD removeColumns
   METHOD rowCount
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlQueryModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSqlQueryModel>
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSqlQueryModel>
#endif

#include <QSqlError>
#include <QSqlQuery>
#include <QSqlRecord>

/*
explicit QSqlQueryModel ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QSqlQueryModel * o = new QSqlQueryModel ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlQueryModel *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QSQLQUERYMODEL_DELETE )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void clear ()
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_CLEAR )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSqlError lastError () const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_LASTERROR )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSqlError * ptr = new QSqlError( obj->lastError (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSQLERROR", true );
  }
}


/*
QSqlQuery query () const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_QUERY )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSqlQuery * ptr = new QSqlQuery( obj->query (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSQLQUERY", true );
  }
}

/*
void setQuery ( const QSqlQuery & query )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_SETQUERY1 )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSqlQuery * par1 = (QSqlQuery *) _qt5xhb_itemGetPtr(1);
    obj->setQuery ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setQuery ( const QString & query, const QSqlDatabase & db = QSqlDatabase() )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_SETQUERY2 )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QSqlDatabase par2 = ISNIL(2)? QSqlDatabase() : *(QSqlDatabase *) _qt5xhb_itemGetPtr(2);
    obj->setQuery ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setQuery ( const QSqlQuery & query )
//[2]void setQuery ( const QString & query, const QSqlDatabase & db = QSqlDatabase() )

HB_FUNC_STATIC( QSQLQUERYMODEL_SETQUERY )
{
  if( ISNUMPAR(1) && ISQSQLQUERY(1) )
  {
    HB_FUNC_EXEC( QSQLQUERYMODEL_SETQUERY1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQSQLDATABASE(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSQLQUERYMODEL_SETQUERY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSqlRecord record ( int row ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_RECORD1 )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSqlRecord * ptr = new QSqlRecord( obj->record ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QSQLRECORD", true );
  }
}

/*
QSqlRecord record () const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_RECORD2 )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSqlRecord * ptr = new QSqlRecord( obj->record (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSQLRECORD", true );
  }
}


//[1]QSqlRecord record ( int row ) const
//[2]QSqlRecord record () const

HB_FUNC_STATIC( QSQLQUERYMODEL_RECORD )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSQLQUERYMODEL_RECORD1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSQLQUERYMODEL_RECORD2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool canFetchMore ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_CANFETCHMORE )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->canFetchMore ( par1 ) );
  }
}


/*
int columnCount ( const QModelIndex & index = QModelIndex() ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_COLUMNCOUNT )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->columnCount ( par1 ) );
  }
}


/*
QVariant data ( const QModelIndex & item, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_DATA )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QVariant * ptr = new QVariant( obj->data ( *par1, (int) ISNIL(2)? Qt::DisplayRole : hb_parni(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
void fetchMore ( const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_FETCHMORE )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
    obj->fetchMore ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_HEADERDATA )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    QVariant * ptr = new QVariant( obj->headerData ( (int) hb_parni(1),  (Qt::Orientation) par2, (int) ISNIL(3)? Qt::DisplayRole : hb_parni(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
bool setHeaderData ( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_SETHEADERDATA )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    QVariant * par3 = (QVariant *) _qt5xhb_itemGetPtr(3);
    hb_retl( obj->setHeaderData ( (int) hb_parni(1),  (Qt::Orientation) par2, *par3, (int) ISNIL(4)? Qt::EditRole : hb_parni(4) ) );
  }
}


/*
bool insertColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_INSERTCOLUMNS )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
    hb_retl( obj->insertColumns ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
  }
}


/*
bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_REMOVECOLUMNS )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
    hb_retl( obj->removeColumns ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
  }
}


/*
int rowCount ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_ROWCOUNT )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->rowCount ( par1 ) );
  }
}



#pragma ENDDUMP
