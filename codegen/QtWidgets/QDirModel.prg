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

   DATA self_destruction INIT .F.

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
void QDirModel_new1 ()
{
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  QDirModel * o = new QDirModel ( PQSTRINGLIST(1), (QDir::Filters) par2, (QDir::SortFlags) par3, OPQOBJECT(4,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDirModel(QObject *parent = 0)
*/
void QDirModel_new2 ()
{
  QDirModel * o = new QDirModel ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

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
void QDirModel_index1 ()
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
    QModelIndex * ptr = new QModelIndex( obj->index ( PINT(1), PINT(2), par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
QModelIndex index(const QString &path, int column = 0) const
*/
void QDirModel_index2 ()
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->index ( PQSTRING(1), OPINT(2,0) ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

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
HB_FUNC_STATIC( QDIRMODEL_PARENT )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) )
    {
      QModelIndex * ptr = new QModelIndex( obj->parent ( *PQMODELINDEX(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int rowCount(const QModelIndex &parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QDIRMODEL_ROWCOUNT )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
int columnCount(const QModelIndex &parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QDIRMODEL_COLUMNCOUNT )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const
*/
HB_FUNC_STATIC( QDIRMODEL_DATA )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole)
*/
HB_FUNC_STATIC( QDIRMODEL_SETDATA )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const
*/
HB_FUNC_STATIC( QDIRMODEL_HEADERDATA )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool hasChildren(const QModelIndex &index = QModelIndex()) const
*/
HB_FUNC_STATIC( QDIRMODEL_HASCHILDREN )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
Qt::ItemFlags flags(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QDIRMODEL_FLAGS )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
void sort(int column, Qt::SortOrder order = Qt::AscendingOrder)
*/
HB_FUNC_STATIC( QDIRMODEL_SORT )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
QStringList mimeTypes() const
*/
HB_FUNC_STATIC( QDIRMODEL_MIMETYPES )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRINGLIST( obj->mimeTypes () );
  }
}

/*
Qt::DropActions supportedDropActions() const
*/
HB_FUNC_STATIC( QDIRMODEL_SUPPORTEDDROPACTIONS )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->supportedDropActions () );
  }
}

/*
void setIconProvider(QFileIconProvider *provider)
*/
HB_FUNC_STATIC( QDIRMODEL_SETICONPROVIDER )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQFILEICONPROVIDER(1) )
    {
      obj->setIconProvider ( PQFILEICONPROVIDER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QFileIconProvider *iconProvider() const
*/
HB_FUNC_STATIC( QDIRMODEL_ICONPROVIDER )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFileIconProvider * ptr = obj->iconProvider ();
    _qt5xhb_createReturnClass ( ptr, "QFILEICONPROVIDER" );
  }
}

/*
void setNameFilters(const QStringList &filters)
*/
HB_FUNC_STATIC( QDIRMODEL_SETNAMEFILTERS )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      obj->setNameFilters ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList nameFilters() const
*/
HB_FUNC_STATIC( QDIRMODEL_NAMEFILTERS )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRINGLIST( obj->nameFilters () );
  }
}

/*
void setFilter(QDir::Filters filters)
*/
HB_FUNC_STATIC( QDIRMODEL_SETFILTER )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setFilter ( (QDir::Filters) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDir::Filters filter() const
*/
HB_FUNC_STATIC( QDIRMODEL_FILTER )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->filter () );
  }
}

/*
void setSorting(QDir::SortFlags sort)
*/
HB_FUNC_STATIC( QDIRMODEL_SETSORTING )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setSorting ( (QDir::SortFlags) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDir::SortFlags sorting() const
*/
HB_FUNC_STATIC( QDIRMODEL_SORTING )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->sorting () );
  }
}

/*
void setResolveSymlinks(bool enable)
*/
HB_FUNC_STATIC( QDIRMODEL_SETRESOLVESYMLINKS )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setResolveSymlinks ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QDIRMODEL_MKDIR )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) && ISCHAR(1) )
    {
      QModelIndex * ptr = new QModelIndex( obj->mkdir ( *PQMODELINDEX(1), PQSTRING(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

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
HB_FUNC_STATIC( QDIRMODEL_FILEICON )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) )
    {
      QIcon * ptr = new QIcon( obj->fileIcon ( *PQMODELINDEX(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QFileInfo fileInfo(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QDIRMODEL_FILEINFO )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) )
    {
      QFileInfo * ptr = new QFileInfo( obj->fileInfo ( *PQMODELINDEX(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QFILEINFO", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void refresh(const QModelIndex &parent = QModelIndex())
*/
HB_FUNC_STATIC( QDIRMODEL_REFRESH )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
      obj->refresh ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
