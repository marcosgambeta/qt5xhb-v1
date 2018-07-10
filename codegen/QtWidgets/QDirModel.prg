%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractItemModel

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDirModel(const QStringList &nameFilters, QDir::Filters filters,QDir::SortFlags sort, QObject *parent = 0)
$internalConstructor=|new1|const QStringList &,QDir::Filters,QDir::SortFlags,QObject *=0

$prototype=QDirModel(QObject *parent = 0)
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

$prototype=QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const
$internalMethod=|QModelIndex|index,index1|int,int,const QModelIndex &=QModelIndex()

$prototype=QModelIndex index(const QString &path, int column = 0) const
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

$prototype=QModelIndex parent(const QModelIndex &child) const
$method=|QModelIndex|parent|const QModelIndex &

$prototype=int rowCount(const QModelIndex &parent = QModelIndex()) const
$method=|int|rowCount|const QModelIndex &=QModelIndex()

$prototype=int columnCount(const QModelIndex &parent = QModelIndex()) const
$method=|int|columnCount|const QModelIndex &=QModelIndex()

$prototype=QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const
$method=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

$prototype=bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole)
$method=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

$prototype=QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const
$method=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

$prototype=bool hasChildren(const QModelIndex &index = QModelIndex()) const
$method=|bool|hasChildren|const QModelIndex &=QModelIndex()

$prototype=Qt::ItemFlags flags(const QModelIndex &index) const
$method=|Qt::ItemFlags|flags|const QModelIndex &

$prototype=void sort(int column, Qt::SortOrder order = Qt::AscendingOrder)
$method=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

$prototype=QStringList mimeTypes() const
$method=|QStringList|mimeTypes|

$prototype=Qt::DropActions supportedDropActions() const
$method=|Qt::DropActions|supportedDropActions|

$prototype=void setIconProvider(QFileIconProvider *provider)
$method=|void|setIconProvider|QFileIconProvider *

$prototype=QFileIconProvider *iconProvider() const
$method=|QFileIconProvider *|iconProvider|

$prototype=void setNameFilters(const QStringList &filters)
$method=|void|setNameFilters|const QStringList &

$prototype=QStringList nameFilters() const
$method=|QStringList|nameFilters|

$prototype=void setFilter(QDir::Filters filters)
$method=|void|setFilter|QDir::Filters

$prototype=QDir::Filters filter() const
$method=|QDir::Filters|filter|

$prototype=void setSorting(QDir::SortFlags sort)
$method=|void|setSorting|QDir::SortFlags

$prototype=QDir::SortFlags sorting() const
$method=|QDir::SortFlags|sorting|

$prototype=void setResolveSymlinks(bool enable)
$method=|void|setResolveSymlinks|bool

$prototype=bool resolveSymlinks() const
$method=|bool|resolveSymlinks|

$prototype=void setReadOnly(bool enable)
$method=|void|setReadOnly|bool

$prototype=bool isReadOnly() const
$method=|bool|isReadOnly|

$prototype=void setLazyChildCount(bool enable)
$method=|void|setLazyChildCount|bool

$prototype=bool lazyChildCount() const
$method=|bool|lazyChildCount|

$prototype=bool isDir(const QModelIndex &index) const
$method=|bool|isDir|const QModelIndex &

$prototype=QModelIndex mkdir(const QModelIndex &parent, const QString &name)
$method=|QModelIndex|mkdir|const QModelIndex &,const QString &

$prototype=bool rmdir(const QModelIndex &index)
$method=|bool|rmdir|const QModelIndex &

$prototype=bool remove(const QModelIndex &index)
$method=|bool|remove|const QModelIndex &

$prototype=QString filePath(const QModelIndex &index) const
$method=|QString|filePath|const QModelIndex &

$prototype=QString fileName(const QModelIndex &index) const
$method=|QString|fileName|const QModelIndex &

$prototype=QIcon fileIcon(const QModelIndex &index) const
$method=|QIcon|fileIcon|const QModelIndex &

$prototype=QFileInfo fileInfo(const QModelIndex &index) const
$method=|QFileInfo|fileInfo|const QModelIndex &

$prototype=void refresh(const QModelIndex &parent = QModelIndex())
$method=|void|refresh|const QModelIndex &=QModelIndex()

#pragma ENDDUMP
