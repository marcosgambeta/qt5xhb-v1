/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFILEICONPROVIDER
REQUEST QFILEINFO
REQUEST QICON
REQUEST QMODELINDEX
REQUEST QVARIANT
#endif

CLASS QDirModel INHERIT QAbstractItemModel

   METHOD new
   METHOD delete
   METHOD index
   METHOD parent
   METHOD rowCount
   METHOD columnCount
   METHOD data
   METHOD setData
   METHOD headerData
   METHOD hasChildren
   METHOD flags
   METHOD sort
   METHOD mimeTypes
   METHOD supportedDropActions
   METHOD setIconProvider
   METHOD iconProvider
   METHOD setNameFilters
   METHOD nameFilters
   METHOD setFilter
   METHOD filter
   METHOD setSorting
   METHOD sorting
   METHOD setResolveSymlinks
   METHOD resolveSymlinks
   METHOD setReadOnly
   METHOD isReadOnly
   METHOD setLazyChildCount
   METHOD lazyChildCount
   METHOD isDir
   METHOD mkdir
   METHOD rmdir
   METHOD remove
   METHOD filePath
   METHOD fileName
   METHOD fileIcon
   METHOD fileInfo
   METHOD refresh

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDirModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QDirModel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QDirModel>
#endif

HB_FUNC_STATIC( QDIRMODEL_NEW )
{
  if( ISBETWEEN(3,4) && HB_ISARRAY(1) && HB_ISNUM(2) && HB_ISNUM(3) && (ISQOBJECT(4)||HB_ISNIL(4)) )
  {
    /*
    QDirModel( const QStringList & nameFilters, QDir::Filters filters, QDir::SortFlags sort, QObject * parent = 0 )
    */
    QDirModel * obj = new QDirModel( PQSTRINGLIST(1), (QDir::Filters) hb_parni(2), (QDir::SortFlags) hb_parni(3), OPQOBJECT(4,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    /*
    QDirModel( QObject * parent = 0 )
    */
    QDirModel * obj = new QDirModel( OPQOBJECT(1,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDIRMODEL_DELETE )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QDIRMODEL_INDEX )
{
  if( ISBETWEEN(2,3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3)||HB_ISNIL(3)) )
  {
    /*
    QModelIndex index( int row, int column, const QModelIndex & parent = QModelIndex() ) const
    */
    QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj )
    {
      QModelIndex * ptr = new QModelIndex( obj->index( PINT(1), PINT(2), HB_ISNIL(3)? QModelIndex() : *(QModelIndex *) Qt5xHb::itemGetPtr(3) ) );
      Qt5xHb::createReturnClass(ptr, "QMODELINDEX", true);
    }
  }
  else if( ISBETWEEN(1,2) && HB_ISCHAR(1) && ( HB_ISNUM(2)||HB_ISNIL(2)) )
  {
    /*
    QModelIndex index( const QString & path, int column = 0 ) const
    */
    QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj )
    {
      QModelIndex * ptr = new QModelIndex( obj->index( PQSTRING(1), OPINT(2,0) ) );
      Qt5xHb::createReturnClass(ptr, "QMODELINDEX", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QModelIndex parent( const QModelIndex & child ) const
*/
HB_FUNC_STATIC( QDIRMODEL_PARENT )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      QModelIndex * ptr = new QModelIndex( obj->parent( *PQMODELINDEX(1) ) );
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
int rowCount( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QDIRMODEL_ROWCOUNT )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||HB_ISNIL(1)) )
    {
#endif
      RINT( obj->rowCount( HB_ISNIL(1)? QModelIndex() : *(QModelIndex *) Qt5xHb::itemGetPtr(1) ) );
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
int columnCount( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QDIRMODEL_COLUMNCOUNT )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||HB_ISNIL(1)) )
    {
#endif
      RINT( obj->columnCount( HB_ISNIL(1)? QModelIndex() : *(QModelIndex *) Qt5xHb::itemGetPtr(1) ) );
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
QVariant data( const QModelIndex & index, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QDIRMODEL_DATA )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQMODELINDEX(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
    {
#endif
      QVariant * ptr = new QVariant( obj->data( *PQMODELINDEX(1), OPINT(2,Qt::DisplayRole) ) );
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
bool setData( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QDIRMODEL_SETDATA )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISQMODELINDEX(1) && ISQVARIANT(2) && (HB_ISNUM(3)||HB_ISNIL(3)) )
    {
#endif
      RBOOL( obj->setData( *PQMODELINDEX(1), *PQVARIANT(2), OPINT(3,Qt::EditRole) ) );
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
QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QDIRMODEL_HEADERDATA )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && HB_ISNUM(1) && HB_ISNUM(2) && (HB_ISNUM(3)||HB_ISNIL(3)) )
    {
#endif
      QVariant * ptr = new QVariant( obj->headerData( PINT(1), (Qt::Orientation) hb_parni(2), OPINT(3,Qt::DisplayRole) ) );
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
bool hasChildren( const QModelIndex & index = QModelIndex() ) const
*/
HB_FUNC_STATIC( QDIRMODEL_HASCHILDREN )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||HB_ISNIL(1)) )
    {
#endif
      RBOOL( obj->hasChildren( HB_ISNIL(1)? QModelIndex() : *(QModelIndex *) Qt5xHb::itemGetPtr(1) ) );
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
Qt::ItemFlags flags( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QDIRMODEL_FLAGS )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RENUM( obj->flags( *PQMODELINDEX(1) ) );
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
void sort( int column, Qt::SortOrder order = Qt::AscendingOrder )
*/
HB_FUNC_STATIC( QDIRMODEL_SORT )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && HB_ISNUM(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
    {
#endif
      obj->sort( PINT(1), HB_ISNIL(2)? (Qt::SortOrder) Qt::AscendingOrder : (Qt::SortOrder) hb_parni(2) );
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
QStringList mimeTypes() const
*/
HB_FUNC_STATIC( QDIRMODEL_MIMETYPES )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->mimeTypes() );
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
Qt::DropActions supportedDropActions() const
*/
HB_FUNC_STATIC( QDIRMODEL_SUPPORTEDDROPACTIONS )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->supportedDropActions() );
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
void setIconProvider( QFileIconProvider * provider )
*/
HB_FUNC_STATIC( QDIRMODEL_SETICONPROVIDER )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQFILEICONPROVIDER(1) )
    {
#endif
      obj->setIconProvider( PQFILEICONPROVIDER(1) );
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
QFileIconProvider * iconProvider() const
*/
HB_FUNC_STATIC( QDIRMODEL_ICONPROVIDER )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QFileIconProvider * ptr = obj->iconProvider();
      Qt5xHb::createReturnClass(ptr, "QFILEICONPROVIDER", false);
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
void setNameFilters( const QStringList & filters )
*/
HB_FUNC_STATIC( QDIRMODEL_SETNAMEFILTERS )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      obj->setNameFilters( PQSTRINGLIST(1) );
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
QStringList nameFilters() const
*/
HB_FUNC_STATIC( QDIRMODEL_NAMEFILTERS )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->nameFilters() );
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
void setFilter( QDir::Filters filters )
*/
HB_FUNC_STATIC( QDIRMODEL_SETFILTER )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setFilter( (QDir::Filters) hb_parni(1) );
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
QDir::Filters filter() const
*/
HB_FUNC_STATIC( QDIRMODEL_FILTER )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->filter() );
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
void setSorting( QDir::SortFlags sort )
*/
HB_FUNC_STATIC( QDIRMODEL_SETSORTING )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setSorting( (QDir::SortFlags) hb_parni(1) );
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
QDir::SortFlags sorting() const
*/
HB_FUNC_STATIC( QDIRMODEL_SORTING )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->sorting() );
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
void setResolveSymlinks( bool enable )
*/
HB_FUNC_STATIC( QDIRMODEL_SETRESOLVESYMLINKS )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setResolveSymlinks( PBOOL(1) );
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
bool resolveSymlinks() const
*/
HB_FUNC_STATIC( QDIRMODEL_RESOLVESYMLINKS )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->resolveSymlinks() );
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
void setReadOnly( bool enable )
*/
HB_FUNC_STATIC( QDIRMODEL_SETREADONLY )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setReadOnly( PBOOL(1) );
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
bool isReadOnly() const
*/
HB_FUNC_STATIC( QDIRMODEL_ISREADONLY )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isReadOnly() );
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
void setLazyChildCount( bool enable )
*/
HB_FUNC_STATIC( QDIRMODEL_SETLAZYCHILDCOUNT )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setLazyChildCount( PBOOL(1) );
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
bool lazyChildCount() const
*/
HB_FUNC_STATIC( QDIRMODEL_LAZYCHILDCOUNT )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->lazyChildCount() );
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
bool isDir( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QDIRMODEL_ISDIR )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RBOOL( obj->isDir( *PQMODELINDEX(1) ) );
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
QModelIndex mkdir( const QModelIndex & parent, const QString & name )
*/
HB_FUNC_STATIC( QDIRMODEL_MKDIR )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQMODELINDEX(1) && HB_ISCHAR(2) )
    {
#endif
      QModelIndex * ptr = new QModelIndex( obj->mkdir( *PQMODELINDEX(1), PQSTRING(2) ) );
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
bool rmdir( const QModelIndex & index )
*/
HB_FUNC_STATIC( QDIRMODEL_RMDIR )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RBOOL( obj->rmdir( *PQMODELINDEX(1) ) );
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
bool remove( const QModelIndex & index )
*/
HB_FUNC_STATIC( QDIRMODEL_REMOVE )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RBOOL( obj->remove( *PQMODELINDEX(1) ) );
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
QString filePath( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QDIRMODEL_FILEPATH )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RQSTRING( obj->filePath( *PQMODELINDEX(1) ) );
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
QString fileName( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QDIRMODEL_FILENAME )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RQSTRING( obj->fileName( *PQMODELINDEX(1) ) );
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
QIcon fileIcon( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QDIRMODEL_FILEICON )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      QIcon * ptr = new QIcon( obj->fileIcon( *PQMODELINDEX(1) ) );
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
QFileInfo fileInfo( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QDIRMODEL_FILEINFO )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      QFileInfo * ptr = new QFileInfo( obj->fileInfo( *PQMODELINDEX(1) ) );
      Qt5xHb::createReturnClass(ptr, "QFILEINFO", true);
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
void refresh( const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QDIRMODEL_REFRESH )
{
  QDirModel * obj = (QDirModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||HB_ISNIL(1)) )
    {
#endif
      obj->refresh( HB_ISNIL(1)? QModelIndex() : *(QModelIndex *) Qt5xHb::itemGetPtr(1) );
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
