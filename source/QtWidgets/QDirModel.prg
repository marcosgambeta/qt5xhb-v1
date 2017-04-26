/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QVARIANT
REQUEST QFILEICONPROVIDER
REQUEST QICON
REQUEST QFILEINFO
#endif

CLASS QDirModel INHERIT QAbstractItemModel

   DATA class_flags INIT 1
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

PROCEDURE destroyObject () CLASS QDirModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDirModel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDirModel>
#endif

/*
QDirModel(const QStringList &nameFilters, QDir::Filters filters,QDir::SortFlags sort, QObject *parent = 0)
*/
void QDirModel_new1 ()
{
  QStringList par1 = _qt5xhb_convert_array_parameter_to_qstringlist(1);
  //PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
  //int i1;
  //int nLen1 = hb_arrayLen(aStrings1);
  //for (i1=0;i1<nLen1;i1++)
  //{
  //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
  //  par1 << temp;
  //}
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  QObject * par4 = ISNIL(4)? 0 : (QObject *) _qt5xhb_itemGetPtr(4);
  QDirModel * o = new QDirModel ( par1,  (QDir::Filters) par2,  (QDir::SortFlags) par3, par4 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDirModel(QObject *parent = 0)
*/
void QDirModel_new2 ()
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QDirModel * o = new QDirModel ( par1 );
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

HB_FUNC_STATIC( QDIRMODEL_DELETE )
{
  QDirModel * obj = (QDirModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const
*/
void QDirModel_index1 ()
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
    QModelIndex * ptr = new QModelIndex( obj->index ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QModelIndex * ptr = new QModelIndex( obj->index ( par1, (int) ISNIL(2)? 0 : hb_parni(2) ) );
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
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      QModelIndex * ptr = new QModelIndex( obj->parent ( *par1 ) );
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
      hb_retni( obj->rowCount ( par1 ) );
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
      hb_retni( obj->columnCount ( par1 ) );
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
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      QVariant * ptr = new QVariant( obj->data ( *par1, (int) ISNIL(2)? Qt::DisplayRole : hb_parni(2) ) );
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
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
      hb_retl( obj->setData ( *par1, *par2, (int) ISNIL(3)? Qt::EditRole : hb_parni(3) ) );
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
      int par2 = hb_parni(2);
      QVariant * ptr = new QVariant( obj->headerData ( (int) hb_parni(1),  (Qt::Orientation) par2, (int) ISNIL(3)? Qt::DisplayRole : hb_parni(3) ) );
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
      hb_retl( obj->hasChildren ( par1 ) );
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
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      hb_retni( obj->flags ( *par1 ) );
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
      obj->sort ( (int) hb_parni(1),  (Qt::SortOrder) par2 );
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
    QStringList strl = obj->mimeTypes (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
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
    hb_retni( obj->supportedDropActions (  ) );
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
      QFileIconProvider * par1 = (QFileIconProvider *) _qt5xhb_itemGetPtr(1);
      obj->setIconProvider ( par1 );
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
    QFileIconProvider * ptr = obj->iconProvider (  );
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
      QStringList par1 = _qt5xhb_convert_array_parameter_to_qstringlist(1);
      //PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
      //int i1;
      //int nLen1 = hb_arrayLen(aStrings1);
      //for (i1=0;i1<nLen1;i1++)
      //{
      //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
      //  par1 << temp;
      //}
      obj->setNameFilters ( par1 );
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
    QStringList strl = obj->nameFilters (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
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
      obj->setFilter (  (QDir::Filters) par1 );
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
    hb_retni( obj->filter (  ) );
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
      obj->setSorting (  (QDir::SortFlags) par1 );
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
    hb_retni( obj->sorting (  ) );
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
      obj->setResolveSymlinks ( (bool) hb_parl(1) );
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
HB_FUNC_STATIC( QDIRMODEL_RESOLVESYMLINKS )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->resolveSymlinks (  ) );
  }
}

/*
void setReadOnly(bool enable)
*/
HB_FUNC_STATIC( QDIRMODEL_SETREADONLY )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setReadOnly ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isReadOnly() const
*/
HB_FUNC_STATIC( QDIRMODEL_ISREADONLY )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isReadOnly (  ) );
  }
}

/*
void setLazyChildCount(bool enable)
*/
HB_FUNC_STATIC( QDIRMODEL_SETLAZYCHILDCOUNT )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setLazyChildCount ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool lazyChildCount() const
*/
HB_FUNC_STATIC( QDIRMODEL_LAZYCHILDCOUNT )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->lazyChildCount (  ) );
  }
}

/*
bool isDir(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QDIRMODEL_ISDIR )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) )
    {
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->isDir ( *par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

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
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      QString par2 = QLatin1String( hb_parc(2) );
      QModelIndex * ptr = new QModelIndex( obj->mkdir ( *par1, par2 ) );
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
HB_FUNC_STATIC( QDIRMODEL_RMDIR )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) )
    {
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->rmdir ( *par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool remove(const QModelIndex &index)
*/
HB_FUNC_STATIC( QDIRMODEL_REMOVE )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) )
    {
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->remove ( *par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString filePath(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QDIRMODEL_FILEPATH )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) )
    {
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      hb_retc( (const char *) obj->filePath ( *par1 ).toLatin1().data() );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString fileName(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QDIRMODEL_FILENAME )
{
  QDirModel * obj = (QDirModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) )
    {
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      hb_retc( (const char *) obj->fileName ( *par1 ).toLatin1().data() );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

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
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      QIcon * ptr = new QIcon( obj->fileIcon ( *par1 ) );
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
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      QFileInfo * ptr = new QFileInfo( obj->fileInfo ( *par1 ) );
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
