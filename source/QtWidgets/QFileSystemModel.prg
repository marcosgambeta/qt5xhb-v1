/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

PROCEDURE destroyObject () CLASS QFileSystemModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QFileSystemModel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QFileSystemModel>
#endif

#include <QDateTime>

/*
explicit QFileSystemModel(QObject * parent = 0)
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_NEW )
{
  QFileSystemModel * o = new QFileSystemModel ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QFILESYSTEMMODEL_DELETE )
{
  QFileSystemModel * obj = (QFileSystemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QIcon fileIcon ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_FILEICON )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->fileIcon ( *PQMODELINDEX(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
QFileInfo fileInfo ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_FILEINFO )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFileInfo * ptr = new QFileInfo( obj->fileInfo ( *PQMODELINDEX(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QFILEINFO", true );
  }
}


/*
QString fileName ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_FILENAME )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->fileName ( *PQMODELINDEX(1) ) );
  }
}


/*
QString filePath ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_FILEPATH )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->filePath ( *PQMODELINDEX(1) ) );
  }
}


/*
QDir::Filters filter () const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_FILTER )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->filter () );
  }
}

/*
void setFilter ( QDir::Filters filters )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETFILTER )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFilter ( (QDir::Filters) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QFileIconProvider * iconProvider () const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_ICONPROVIDER )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFileIconProvider * ptr = obj->iconProvider ();
    _qt5xhb_createReturnClass ( ptr, "QFILEICONPROVIDER" );
  }
}

/*
void setIconProvider ( QFileIconProvider * provider )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETICONPROVIDER )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIconProvider ( PQFILEICONPROVIDER(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QModelIndex index ( const QString & path, int column = 0 ) const
*/
void QFileSystemModel_index1 ()
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->index ( PQSTRING(1), OPINT(2,0) ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

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
HB_FUNC_STATIC( QFILESYSTEMMODEL_ISDIR )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isDir ( *PQMODELINDEX(1) ) );
  }
}


/*
bool isReadOnly () const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_ISREADONLY )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isReadOnly () );
  }
}

/*
void setReadOnly ( bool enable )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETREADONLY )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setReadOnly ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
QDateTime lastModified ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_LASTMODIFIED )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->lastModified ( *PQMODELINDEX(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
QModelIndex mkdir ( const QModelIndex & parent, const QString & name )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_MKDIR )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->mkdir ( *PQMODELINDEX(1), PQSTRING(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
QVariant myComputer ( int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_MYCOMPUTER )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->myComputer ( OPINT(1,Qt::DisplayRole) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
bool nameFilterDisables () const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_NAMEFILTERDISABLES )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->nameFilterDisables () );
  }
}

/*
void setNameFilterDisables ( bool enable )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETNAMEFILTERDISABLES )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setNameFilterDisables ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList nameFilters () const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_NAMEFILTERS )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->nameFilters () );
  }
}

/*
void setNameFilters ( const QStringList & filters )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETNAMEFILTERS )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNameFilters ( PQSTRINGLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QFile::Permissions permissions ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_PERMISSIONS )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->permissions ( *PQMODELINDEX(1) ) );
  }
}


/*
bool remove ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_REMOVE )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->remove ( *PQMODELINDEX(1) ) );
  }
}


/*
bool resolveSymlinks () const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_RESOLVESYMLINKS )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->resolveSymlinks () );
  }
}

/*
void setResolveSymlinks ( bool enable )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETRESOLVESYMLINKS )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool rmdir ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_RMDIR )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->rmdir ( *PQMODELINDEX(1) ) );
  }
}


/*
QDir rootDirectory () const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_ROOTDIRECTORY )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDir * ptr = new QDir( obj->rootDirectory () );
    _qt5xhb_createReturnClass ( ptr, "QDIR", true );
  }
}


/*
QString rootPath () const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_ROOTPATH )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->rootPath () );
  }
}

/*
QModelIndex setRootPath ( const QString & newPath )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETROOTPATH )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->setRootPath ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
qint64 size ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SIZE )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->size ( *PQMODELINDEX(1) ) );
  }
}


/*
QString type ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_TYPE )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->type ( *PQMODELINDEX(1) ) );
  }
}


/*
bool canFetchMore ( const QModelIndex & parent ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_CANFETCHMORE )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->canFetchMore ( *PQMODELINDEX(1) ) );
  }
}


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
HB_FUNC_STATIC( QFILESYSTEMMODEL_DATA )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->data ( *PQMODELINDEX(1), OPINT(2,Qt::DisplayRole) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
bool setData ( const QModelIndex & idx, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETDATA )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setData ( *PQMODELINDEX(1), *PQVARIANT(2), OPINT(3,Qt::EditRole) ) );
  }
}


/*
bool dropMimeData ( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_DROPMIMEDATA )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMimeData * par1 = (const QMimeData *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->dropMimeData ( par1, (Qt::DropAction) hb_parni(2), PINT(3), PINT(4), *PQMODELINDEX(5) ) );
  }
}


/*
void fetchMore ( const QModelIndex & parent )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_FETCHMORE )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->fetchMore ( *PQMODELINDEX(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::ItemFlags flags ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_FLAGS )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->flags ( *PQMODELINDEX(1) ) );
  }
}


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
HB_FUNC_STATIC( QFILESYSTEMMODEL_HEADERDATA )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->headerData ( PINT(1), (Qt::Orientation) hb_parni(2), OPINT(3,Qt::DisplayRole) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


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
HB_FUNC_STATIC( QFILESYSTEMMODEL_MIMETYPES )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->mimeTypes () );
  }
}


/*
QModelIndex parent ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_PARENT )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->parent ( *PQMODELINDEX(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


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
HB_FUNC_STATIC( QFILESYSTEMMODEL_SORT )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::AscendingOrder : hb_parni(2);
    obj->sort ( PINT(1), (Qt::SortOrder) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::DropActions supportedDropActions () const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SUPPORTEDDROPACTIONS )
{
  QFileSystemModel * obj = (QFileSystemModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedDropActions () );
  }
}




#pragma ENDDUMP
