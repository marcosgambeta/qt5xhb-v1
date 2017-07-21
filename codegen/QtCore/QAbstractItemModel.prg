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
$method=|int|columnCount|const QModelIndex &=QModelIndex()

/*
virtual QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const = 0
*/
$method=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

/*
virtual bool dropMimeData ( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
*/
$method=|bool|dropMimeData|const QMimeData *,Qt::DropAction,int,int,const QModelIndex &

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
$method=|bool|hasChildren|const QModelIndex &=QModelIndex()

/*
bool hasIndex ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
*/
$method=|bool|hasIndex|int,int,const QModelIndex &=QModelIndex()

/*
virtual QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/
$method=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

/*
virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const = 0
*/
$method=|QModelIndex|index|int,int,const QModelIndex &=QModelIndex()

/*
bool insertColumn ( int column, const QModelIndex & parent = QModelIndex() )
*/
$method=|bool|insertColumn|int,const QModelIndex &=QModelIndex()

/*
virtual bool insertColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
$method=|bool|insertColumns|int,int,const QModelIndex &=QModelIndex()

/*
bool insertRow ( int row, const QModelIndex & parent = QModelIndex() )
*/
$method=|bool|insertRow|int,const QModelIndex &=QModelIndex()

/*
virtual bool insertRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
$method=|bool|insertRows|int,int,const QModelIndex &=QModelIndex()

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
$method=|bool|removeColumn|int,const QModelIndex &=QModelIndex()

/*
virtual bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
$method=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

/*
bool removeRow ( int row, const QModelIndex & parent = QModelIndex() )
*/
$method=|bool|removeRow|int,const QModelIndex &=QModelIndex()

/*
virtual bool removeRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
$method=|bool|removeRows|int,int,const QModelIndex &=QModelIndex()

/*
virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const = 0
*/
$method=|int|rowCount|const QModelIndex &=QModelIndex()

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
$method=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

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
