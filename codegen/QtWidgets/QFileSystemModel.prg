$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
REQUEST QFILEINFO
REQUEST QFILEICONPROVIDER
REQUEST QMODELINDEX
REQUEST QDATETIME
REQUEST QVARIANT
REQUEST QDIR
REQUEST QMIMEDATA
#endif

CLASS QFileSystemModel INHERIT QAbstractItemModel

   METHOD new
   METHOD delete
   METHOD fileIcon
   METHOD fileInfo
   METHOD fileName
   METHOD filePath
   METHOD filter
   METHOD setFilter
   METHOD iconProvider
   METHOD setIconProvider
   METHOD index
   METHOD isDir
   METHOD isReadOnly
   METHOD setReadOnly
   METHOD lastModified
   METHOD mkdir
   METHOD myComputer
   METHOD nameFilterDisables
   METHOD setNameFilterDisables
   METHOD nameFilters
   METHOD setNameFilters
   METHOD permissions
   METHOD remove
   METHOD resolveSymlinks
   METHOD setResolveSymlinks
   METHOD rmdir
   METHOD rootDirectory
   METHOD rootPath
   METHOD setRootPath
   METHOD size
   METHOD type
   METHOD canFetchMore
   METHOD columnCount
   METHOD data
   METHOD setData
   METHOD dropMimeData
   METHOD fetchMore
   METHOD flags
   METHOD hasChildren
   METHOD headerData
   METHOD mimeData
   METHOD mimeTypes
   METHOD parent
   METHOD rowCount
   METHOD sort
   METHOD supportedDropActions

   METHOD onDirectoryLoaded
   METHOD onFileRenamed
   METHOD onRootPathChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QDateTime>

/*
explicit QFileSystemModel(QObject * parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
QIcon fileIcon ( const QModelIndex & index ) const
*/
$method=|QIcon|fileIcon|const QModelIndex &

/*
QFileInfo fileInfo ( const QModelIndex & index ) const
*/
$method=|QFileInfo|fileInfo|const QModelIndex &

/*
QString fileName ( const QModelIndex & index ) const
*/
$method=|QString|fileName|const QModelIndex &

/*
QString filePath ( const QModelIndex & index ) const
*/
$method=|QString|filePath|const QModelIndex &

/*
QDir::Filters filter () const
*/
$method=|QDir::Filters|filter|

/*
void setFilter ( QDir::Filters filters )
*/
$method=|void|setFilter|QDir::Filters

/*
QFileIconProvider * iconProvider () const
*/
$method=|QFileIconProvider *|iconProvider|

/*
void setIconProvider ( QFileIconProvider * provider )
*/
$method=|void|setIconProvider|QFileIconProvider *

/*
QModelIndex index ( const QString & path, int column = 0 ) const
*/
$internalMethod=|QModelIndex|index,index1|const QString &,int=0

/*
QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
*/
void QFileSystemModel_index2 ()
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
    QModelIndex * ptr = new QModelIndex( obj->index ( PINT(1), PINT(2), par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

//[1]QModelIndex index ( const QString & path, int column = 0 ) const
//[2]QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const

HB_FUNC_STATIC( QFILESYSTEMMODEL_INDEX )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QFileSystemModel_index1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
  {
    QFileSystemModel_index2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isDir ( const QModelIndex & index ) const
*/
$method=|bool|isDir|const QModelIndex &

/*
bool isReadOnly () const
*/
$method=|bool|isReadOnly|

/*
void setReadOnly ( bool enable )
*/
$method=|void|setReadOnly|bool

/*
QDateTime lastModified ( const QModelIndex & index ) const
*/
$method=|QDateTime|lastModified|const QModelIndex &

/*
QModelIndex mkdir ( const QModelIndex & parent, const QString & name )
*/
$method=|QModelIndex|mkdir|const QModelIndex &,const QString &

/*
QVariant myComputer ( int role = Qt::DisplayRole ) const
*/
$method=|QVariant|myComputer|int=Qt::DisplayRole

/*
bool nameFilterDisables () const
*/
$method=|bool|nameFilterDisables|

/*
void setNameFilterDisables ( bool enable )
*/
$method=|void|setNameFilterDisables|bool

/*
QStringList nameFilters () const
*/
$method=|QStringList|nameFilters|

/*
void setNameFilters ( const QStringList & filters )
*/
$method=|void|setNameFilters|const QStringList &

/*
QFile::Permissions permissions ( const QModelIndex & index ) const
*/
$method=|QFile::Permissions|permissions|const QModelIndex &

/*
bool remove ( const QModelIndex & index ) const
*/
$method=|bool|remove|const QModelIndex &

/*
bool resolveSymlinks () const
*/
$method=|bool|resolveSymlinks|

/*
void setResolveSymlinks ( bool enable )
*/
$method=|void|setResolveSymlinks|bool

/*
bool rmdir ( const QModelIndex & index ) const
*/
$method=|bool|rmdir|const QModelIndex &

/*
QDir rootDirectory () const
*/
$method=|QDir|rootDirectory|

/*
QString rootPath () const
*/
$method=|QString|rootPath|

/*
QModelIndex setRootPath ( const QString & newPath )
*/
$method=|QModelIndex|setRootPath|const QString &

/*
qint64 size ( const QModelIndex & index ) const
*/
$method=|qint64|size|const QModelIndex &

/*
QString type ( const QModelIndex & index ) const
*/
$method=|QString|type|const QModelIndex &

/*
bool canFetchMore ( const QModelIndex & parent ) const
*/
$method=|bool|canFetchMore|const QModelIndex &

/*
int columnCount ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_COLUMNCOUNT )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
    RINT( obj->columnCount ( par1 ) );
  }
}

/*
QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const
*/
$method=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

/*
bool setData ( const QModelIndex & idx, const QVariant & value, int role = Qt::EditRole )
*/
$method=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

/*
bool dropMimeData ( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
*/
$method=|bool|dropMimeData|const QMimeData *,Qt::DropAction,int,int,const QModelIndex &

/*
void fetchMore ( const QModelIndex & parent )
*/
$method=|void|fetchMore|const QModelIndex &

/*
Qt::ItemFlags flags ( const QModelIndex & index ) const
*/
$method=|Qt::ItemFlags|flags|const QModelIndex &

/*
bool hasChildren ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_HASCHILDREN )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->hasChildren ( par1 ) );
  }
}

/*
QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/
$method=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

/*
QMimeData * mimeData ( const QModelIndexList & indexes ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_MIMEDATA )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndexList par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    QMimeData * ptr = obj->mimeData ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QMIMEDATA" );
  }
}

/*
QStringList mimeTypes () const
*/
$method=|QStringList|mimeTypes|

/*
QModelIndex parent ( const QModelIndex & index ) const
*/
$method=|QModelIndex|parent|const QModelIndex &

/*
int rowCount ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_ROWCOUNT )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
    RINT( obj->rowCount ( par1 ) );
  }
}

/*
void sort ( int column, Qt::SortOrder order = Qt::AscendingOrder )
*/
$method=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

/*
Qt::DropActions supportedDropActions () const
*/
$method=|Qt::DropActions|supportedDropActions|

#pragma ENDDUMP
