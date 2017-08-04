$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QVARIANT
REQUEST QFILEICONPROVIDER
REQUEST QICON
REQUEST QFILEINFO
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

$destructor

#pragma BEGINDUMP

$includes

/*
QDirModel(const QStringList &nameFilters, QDir::Filters filters,QDir::SortFlags sort, QObject *parent = 0)
*/
$internalConstructor=|new1|const QStringList &,QDir::Filters,QDir::SortFlags,QObject *=0

/*
QDirModel(QObject *parent = 0)
*/
$internalConstructor=|new2|QObject *=0

//[1]QDirModel(const QStringList &nameFilters, QDir::Filters filters,QDir::SortFlags sort, QObject *parent = 0)
//[2]QDirModel(QObject *parent = 0)

HB_FUNC_STATIC( QDIRMODEL_NEW )
{
  if( ISBETWEEN(3,4) && ISARRAY(1) && ISNUM(2) && ISNUM(3) && ISOPTQOBJECT(4) )
  {
    QDirModel_new1();
  }
  else if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QDirModel_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const
*/
$internalMethod=|QModelIndex|index,index1|int,int,const QModelIndex &=QModelIndex()

/*
QModelIndex index(const QString &path, int column = 0) const
*/
$internalMethod=|QModelIndex|index,index2|const QString &,int=0

//[1]QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const
//[2]QModelIndex index(const QString &path, int column = 0) const

HB_FUNC_STATIC( QDIRMODEL_INDEX )
{
  if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
  {
    QDirModel_index1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QDirModel_index2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QModelIndex parent(const QModelIndex &child) const
*/
$method=|QModelIndex|parent|const QModelIndex &

/*
int rowCount(const QModelIndex &parent = QModelIndex()) const
*/
$method=|int|rowCount|const QModelIndex &=QModelIndex()

/*
int columnCount(const QModelIndex &parent = QModelIndex()) const
*/
$method=|int|columnCount|const QModelIndex &=QModelIndex()

/*
QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const
*/
$method=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

/*
bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole)
*/
$method=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

/*
QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const
*/
$method=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

/*
bool hasChildren(const QModelIndex &index = QModelIndex()) const
*/
$method=|bool|hasChildren|const QModelIndex &=QModelIndex()

/*
Qt::ItemFlags flags(const QModelIndex &index) const
*/
$method=|Qt::ItemFlags|flags|const QModelIndex &

/*
void sort(int column, Qt::SortOrder order = Qt::AscendingOrder)
*/
$method=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

/*
QStringList mimeTypes() const
*/
$method=|QStringList|mimeTypes|

/*
Qt::DropActions supportedDropActions() const
*/
$method=|Qt::DropActions|supportedDropActions|

/*
void setIconProvider(QFileIconProvider *provider)
*/
$method=|void|setIconProvider|QFileIconProvider *

/*
QFileIconProvider *iconProvider() const
*/
$method=|QFileIconProvider *|iconProvider|

/*
void setNameFilters(const QStringList &filters)
*/
$method=|void|setNameFilters|const QStringList &

/*
QStringList nameFilters() const
*/
$method=|QStringList|nameFilters|

/*
void setFilter(QDir::Filters filters)
*/
$method=|void|setFilter|QDir::Filters

/*
QDir::Filters filter() const
*/
$method=|QDir::Filters|filter|

/*
void setSorting(QDir::SortFlags sort)
*/
$method=|void|setSorting|QDir::SortFlags

/*
QDir::SortFlags sorting() const
*/
$method=|QDir::SortFlags|sorting|

/*
void setResolveSymlinks(bool enable)
*/
$method=|void|setResolveSymlinks|bool

/*
bool resolveSymlinks() const
*/
$method=|bool|resolveSymlinks|

/*
void setReadOnly(bool enable)
*/
$method=|void|setReadOnly|bool

/*
bool isReadOnly() const
*/
$method=|bool|isReadOnly|

/*
void setLazyChildCount(bool enable)
*/
$method=|void|setLazyChildCount|bool

/*
bool lazyChildCount() const
*/
$method=|bool|lazyChildCount|

/*
bool isDir(const QModelIndex &index) const
*/
$method=|bool|isDir|const QModelIndex &

/*
QModelIndex mkdir(const QModelIndex &parent, const QString &name)
*/
$method=|QModelIndex|mkdir|const QModelIndex &,const QString &

/*
bool rmdir(const QModelIndex &index)
*/
$method=|bool|rmdir|const QModelIndex &

/*
bool remove(const QModelIndex &index)
*/
$method=|bool|remove|const QModelIndex &

/*
QString filePath(const QModelIndex &index) const
*/
$method=|QString|filePath|const QModelIndex &

/*
QString fileName(const QModelIndex &index) const
*/
$method=|QString|fileName|const QModelIndex &

/*
QIcon fileIcon(const QModelIndex &index) const
*/
$method=|QIcon|fileIcon|const QModelIndex &

/*
QFileInfo fileInfo(const QModelIndex &index) const
*/
$method=|QFileInfo|fileInfo|const QModelIndex &

/*
void refresh(const QModelIndex &parent = QModelIndex())
*/
$method=|void|refresh|const QModelIndex &=QModelIndex()

#pragma ENDDUMP
