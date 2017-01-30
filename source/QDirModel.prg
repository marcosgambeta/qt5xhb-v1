/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMODELINDEX
REQUEST QVARIANT
REQUEST QFILEICONPROVIDER
REQUEST QICON
REQUEST QFILEINFO

CLASS QDirModel INHERIT QAbstractItemModel

   DATA class_id INIT Class_Id_QDirModel
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD index1
   METHOD index2
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

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDirModel>
#endif
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDirModel>
#endif
#endif

/*
QDirModel(const QStringList &nameFilters, QDir::Filters filters,QDir::SortFlags sort, QObject *parent = 0)
*/
HB_FUNC_STATIC( QDIRMODEL_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  QObject * par4 = ISNIL(4)? 0 : (QObject *) _qtxhb_itemGetPtr(4);
  QDirModel * o = new QDirModel ( par1,  (QDir::Filters) par2,  (QDir::SortFlags) par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDirModel *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QDirModel(QObject *parent = 0)
*/
HB_FUNC_STATIC( QDIRMODEL_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QDirModel * o = new QDirModel ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDirModel *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QDirModel(const QStringList &nameFilters, QDir::Filters filters,QDir::SortFlags sort, QObject *parent = 0)
//[2]QDirModel(QObject *parent = 0)

HB_FUNC_STATIC( QDIRMODEL_NEW )
{
  if( ISBETWEEN(3,4) && ISARRAY(1) && ISNUM(2) && ISNUM(3) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QDIRMODEL_NEW1 );
  }
  else if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDIRMODEL_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDIRMODEL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QDIRMODEL_INDEX1 )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(3);
    QModelIndex * ptr = new QModelIndex( obj->index ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
QModelIndex index(const QString &path, int column = 0) const
*/
HB_FUNC_STATIC( QDIRMODEL_INDEX2 )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QModelIndex * ptr = new QModelIndex( obj->index ( par1, (int) ISNIL(2)? 0 : hb_parni(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


//[1]QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const
//[2]QModelIndex index(const QString &path, int column = 0) const

HB_FUNC_STATIC( QDIRMODEL_INDEX )
{
  if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDIRMODEL_INDEX1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDIRMODEL_INDEX2 );
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
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    QModelIndex * ptr = new QModelIndex( obj->parent ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
int rowCount(const QModelIndex &parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QDIRMODEL_ROWCOUNT )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->rowCount ( par1 ) );
  }
}


/*
int columnCount(const QModelIndex &parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QDIRMODEL_COLUMNCOUNT )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->columnCount ( par1 ) );
  }
}


/*
QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const
*/
HB_FUNC_STATIC( QDIRMODEL_DATA )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    QVariant * ptr = new QVariant( obj->data ( *par1, (int) ISNIL(2)? Qt::DisplayRole : hb_parni(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole)
*/
HB_FUNC_STATIC( QDIRMODEL_SETDATA )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    hb_retl( obj->setData ( *par1, *par2, (int) ISNIL(3)? Qt::EditRole : hb_parni(3) ) );
  }
}


/*
QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const
*/
HB_FUNC_STATIC( QDIRMODEL_HEADERDATA )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    QVariant * ptr = new QVariant( obj->headerData ( (int) hb_parni(1),  (Qt::Orientation) par2, (int) ISNIL(3)? Qt::DisplayRole : hb_parni(3) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
bool hasChildren(const QModelIndex &index = QModelIndex()) const
*/
HB_FUNC_STATIC( QDIRMODEL_HASCHILDREN )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->hasChildren ( par1 ) );
  }
}


/*
Qt::ItemFlags flags(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QDIRMODEL_FLAGS )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    int i = obj->flags ( *par1 );
    hb_retni( i );
  }
}


/*
void sort(int column, Qt::SortOrder order = Qt::AscendingOrder)
*/
HB_FUNC_STATIC( QDIRMODEL_SORT )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::AscendingOrder : hb_parni(2);
    obj->sort ( (int) hb_parni(1),  (Qt::SortOrder) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList mimeTypes() const
*/
HB_FUNC_STATIC( QDIRMODEL_MIMETYPES )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->mimeTypes (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}




/*
Qt::DropActions supportedDropActions() const
*/
HB_FUNC_STATIC( QDIRMODEL_SUPPORTEDDROPACTIONS )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->supportedDropActions (  );
    hb_retni( i );
  }
}


/*
void setIconProvider(QFileIconProvider *provider)
*/
HB_FUNC_STATIC( QDIRMODEL_SETICONPROVIDER )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFileIconProvider * par1 = (QFileIconProvider *) _qtxhb_itemGetPtr(1);
    obj->setIconProvider ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QFileIconProvider *iconProvider() const
*/
HB_FUNC_STATIC( QDIRMODEL_ICONPROVIDER )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFileIconProvider * ptr = obj->iconProvider (  );
    _qt4xhb_createReturnClass ( ptr, "QFILEICONPROVIDER" );
  }
}


/*
void setNameFilters(const QStringList &filters)
*/
HB_FUNC_STATIC( QDIRMODEL_SETNAMEFILTERS )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
    obj->setNameFilters ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList nameFilters() const
*/
HB_FUNC_STATIC( QDIRMODEL_NAMEFILTERS )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->nameFilters (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
void setFilter(QDir::Filters filters)
*/
HB_FUNC_STATIC( QDIRMODEL_SETFILTER )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFilter (  (QDir::Filters) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QDir::Filters filter() const
*/
HB_FUNC_STATIC( QDIRMODEL_FILTER )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->filter (  );
    hb_retni( i );
  }
}


/*
void setSorting(QDir::SortFlags sort)
*/
HB_FUNC_STATIC( QDIRMODEL_SETSORTING )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSorting (  (QDir::SortFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QDir::SortFlags sorting() const
*/
HB_FUNC_STATIC( QDIRMODEL_SORTING )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->sorting (  );
    hb_retni( i );
  }
}


/*
void setResolveSymlinks(bool enable)
*/
HB_FUNC_STATIC( QDIRMODEL_SETRESOLVESYMLINKS )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setResolveSymlinks ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool resolveSymlinks() const
*/
HB_FUNC_STATIC( QDIRMODEL_RESOLVESYMLINKS )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
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
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setReadOnly ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isReadOnly() const
*/
HB_FUNC_STATIC( QDIRMODEL_ISREADONLY )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
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
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLazyChildCount ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool lazyChildCount() const
*/
HB_FUNC_STATIC( QDIRMODEL_LAZYCHILDCOUNT )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
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
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->isDir ( *par1 ) );
  }
}


/*
QModelIndex mkdir(const QModelIndex &parent, const QString &name)
*/
HB_FUNC_STATIC( QDIRMODEL_MKDIR )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    QString par2 = QLatin1String( hb_parc(2) );
    QModelIndex * ptr = new QModelIndex( obj->mkdir ( *par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
bool rmdir(const QModelIndex &index)
*/
HB_FUNC_STATIC( QDIRMODEL_RMDIR )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->rmdir ( *par1 ) );
  }
}


/*
bool remove(const QModelIndex &index)
*/
HB_FUNC_STATIC( QDIRMODEL_REMOVE )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->remove ( *par1 ) );
  }
}


/*
QString filePath(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QDIRMODEL_FILEPATH )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    hb_retc( (const char *) obj->filePath ( *par1 ).toLatin1().data() );
  }
}


/*
QString fileName(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QDIRMODEL_FILENAME )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    hb_retc( (const char *) obj->fileName ( *par1 ).toLatin1().data() );
  }
}


/*
QIcon fileIcon(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QDIRMODEL_FILEICON )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    QIcon * ptr = new QIcon( obj->fileIcon ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
QFileInfo fileInfo(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QDIRMODEL_FILEINFO )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
    QFileInfo * ptr = new QFileInfo( obj->fileInfo ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QFILEINFO", true );
  }
}


/*
void refresh(const QModelIndex &parent = QModelIndex())
*/
HB_FUNC_STATIC( QDIRMODEL_REFRESH )
{
  QDirModel * obj = (QDirModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(1);
    obj->refresh ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
