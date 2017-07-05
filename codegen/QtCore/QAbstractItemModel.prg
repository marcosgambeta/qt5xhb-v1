$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QVARIANT
REQUEST QSIZE
#endif

CLASS QAbstractItemModel INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD buddy
   METHOD canFetchMore
   METHOD columnCount
   METHOD data
   METHOD dropMimeData
   METHOD fetchMore
   METHOD flags
   METHOD hasChildren
   METHOD hasIndex
   METHOD headerData
   METHOD index
   METHOD insertColumn
   METHOD insertColumns
   METHOD insertRow
   METHOD insertRows
   METHOD match
   METHOD mimeTypes
   METHOD parent
   METHOD removeColumn
   METHOD removeColumns
   METHOD removeRow
   METHOD removeRows
   METHOD rowCount
   METHOD setData
   METHOD setHeaderData
   METHOD sibling
   METHOD sort
   METHOD span
   METHOD supportedDragActions
   METHOD supportedDropActions
   METHOD revert
   METHOD submit

   METHOD onColumnsAboutToBeInserted
   METHOD onColumnsAboutToBeMoved
   METHOD onColumnsAboutToBeRemoved
   METHOD onColumnsInserted
   METHOD onColumnsMoved
   METHOD onColumnsRemoved
   METHOD onDataChanged
   METHOD onHeaderDataChanged
   METHOD onLayoutAboutToBeChanged
   METHOD onLayoutChanged
   METHOD onModelAboutToBeReset
   METHOD onModelReset
   METHOD onRowsAboutToBeInserted
   METHOD onRowsAboutToBeMoved
   METHOD onRowsAboutToBeRemoved
   METHOD onRowsInserted
   METHOD onRowsMoved
   METHOD onRowsRemoved

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>
#include <QSize>

$deleteMethod

/*
virtual QModelIndex buddy ( const QModelIndex & index ) const
*/
$method=|QModelIndex|buddy|const QModelIndex &

/*
virtual bool canFetchMore ( const QModelIndex & parent ) const
*/
$method=|bool|canFetchMore|const QModelIndex &

/*
virtual int columnCount ( const QModelIndex & parent = QModelIndex() ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_COLUMNCOUNT )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
      RINT( obj->columnCount ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const = 0
*/
$method=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

/*
virtual bool dropMimeData ( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_DROPMIMEDATA )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMIMEDATA(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISQMODELINDEX(5) )
    {
      const QMimeData * par1 = (const QMimeData *) _qt5xhb_itemGetPtr(1);
      RBOOL( obj->dropMimeData ( par1, (Qt::DropAction) hb_parni(2), PINT(3), PINT(4), *PQMODELINDEX(5) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void fetchMore ( const QModelIndex & parent )
*/
$method=|void|fetchMore|const QModelIndex &

/*
virtual Qt::ItemFlags flags ( const QModelIndex & index ) const
*/
$method=|Qt::ItemFlags|flags|const QModelIndex &

/*
virtual bool hasChildren ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_HASCHILDREN )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
      RBOOL( obj->hasChildren ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool hasIndex ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_HASINDEX )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
      RBOOL( obj->hasIndex ( PINT(1), PINT(2), par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/
$method=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

/*
virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_INDEX )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
      QModelIndex * ptr = new QModelIndex( obj->index ( PINT(1), PINT(2), par3 ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool insertColumn ( int column, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_INSERTCOLUMN )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISQMODELINDEX(2)||ISNIL(2)) )
    {
      QModelIndex par2 = ISNIL(2)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(2);
      RBOOL( obj->insertColumn ( PINT(1), par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool insertColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_INSERTCOLUMNS )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
      RBOOL( obj->insertColumns ( PINT(1), PINT(2), par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool insertRow ( int row, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_INSERTROW )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISQMODELINDEX(2)||ISNIL(2)) )
    {
      QModelIndex par2 = ISNIL(2)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(2);
      RBOOL( obj->insertRow ( PINT(1), par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool insertRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_INSERTROWS )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual QModelIndexList match ( const QModelIndex & start, int role, const QVariant & value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags( Qt::MatchStartsWith | Qt::MatchWrap ) ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_MATCH )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) && ISNUM(2) && ISQVARIANT(3) && ISOPTNUM(4) && ISOPTNUM(5) )
    {
      int par5 = ISNIL(5)? (int) Qt::MatchStartsWith | Qt::MatchWrap : hb_parni(5);
      QModelIndexList list = obj->match ( *PQMODELINDEX(1), PINT(2), *PQVARIANT(3), OPINT(4,1), (Qt::MatchFlags) par5 );
      PHB_DYNS pDynSym;
      #ifdef __XHARBOUR__
      pDynSym = hb_dynsymFind( "QMODELINDEX" );
      #else
      pDynSym = hb_dynsymFindName( "QMODELINDEX" );
      #endif
      PHB_ITEM pArray;
      pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          #ifdef __XHARBOUR__
          hb_vmPushSymbol( pDynSym->pSymbol );
          #else
          hb_vmPushDynSym( pDynSym );
          #endif
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QModelIndex *) new QModelIndex( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
          hb_itemRelease( pItem );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QStringList mimeTypes () const
*/
$method=|QStringList|mimeTypes|

/*
virtual QModelIndex parent ( const QModelIndex & index ) const = 0
*/
$method=|QModelIndex|parent|const QModelIndex &

/*
bool removeColumn ( int column, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_REMOVECOLUMN )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISQMODELINDEX(2)||ISNIL(2)) )
    {
      QModelIndex par2 = ISNIL(2)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(2);
      RBOOL( obj->removeColumn ( PINT(1), par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_REMOVECOLUMNS )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool removeRow ( int row, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_REMOVEROW )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISQMODELINDEX(2)||ISNIL(2)) )
    {
      QModelIndex par2 = ISNIL(2)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(2);
      RBOOL( obj->removeRow ( PINT(1), par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool removeRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_REMOVEROWS )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_ROWCOUNT )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
*/
$method=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

/*
virtual bool setHeaderData ( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )
*/
$method=|bool|setHeaderData|int,Qt::Orientation,const QVariant &,int=Qt::EditRole

/*
QModelIndex sibling ( int row, int column, const QModelIndex & index ) const
*/
$method=|QModelIndex|sibling|int,int,const QModelIndex &

/*
virtual void sort ( int column, Qt::SortOrder order = Qt::AscendingOrder )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_SORT )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual QSize span ( const QModelIndex & index ) const
*/
$method=|QSize|span|const QModelIndex &

/*
Qt::DropActions supportedDragActions () const
*/
$method=|Qt::DropActions|supportedDragActions|

/*
virtual Qt::DropActions supportedDropActions () const
*/
$method=|Qt::DropActions|supportedDropActions|

/*
virtual void revert ()
*/
$method=|void|revert|

/*
virtual bool submit ()
*/
$method=|bool|submit|

#pragma ENDDUMP
