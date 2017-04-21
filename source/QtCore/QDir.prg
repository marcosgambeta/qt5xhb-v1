/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFILEINFO
REQUEST QCHAR
#endif

CLASS QDir

   DATA pointer
   DATA class_id INIT Class_Id_QDir
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD absoluteFilePath
   METHOD absolutePath
   METHOD canonicalPath
   METHOD cd
   METHOD cdUp
   METHOD count
   METHOD dirName
   METHOD entryInfoList
   METHOD entryList
   METHOD exists
   METHOD filePath
   METHOD filter
   METHOD isAbsolute
   METHOD isReadable
   METHOD isRelative
   METHOD isRoot
   METHOD makeAbsolute
   METHOD mkdir
   METHOD mkpath
   METHOD nameFilters
   METHOD path
   METHOD refresh
   METHOD relativeFilePath
   METHOD remove
   METHOD removeRecursively
   METHOD rename
   METHOD rmdir
   METHOD rmpath
   METHOD setFilter
   METHOD setNameFilters
   METHOD setPath
   METHOD setSorting
   METHOD sorting
   METHOD swap
   METHOD addSearchPath
   METHOD cleanPath
   METHOD current
   METHOD currentPath
   METHOD drives
   METHOD fromNativeSeparators
   METHOD home
   METHOD homePath
   METHOD isAbsolutePath
   METHOD isRelativePath
   METHOD match
   METHOD root
   METHOD rootPath
   METHOD searchPaths
   METHOD separator
   METHOD setCurrent
   METHOD setSearchPaths
   METHOD temp
   METHOD tempPath
   METHOD toNativeSeparators

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDir
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDir>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDir>
#endif

/*
QDir(const QDir & dir)
*/
void QDir_new1 ()
{
  QDir * par1 = (QDir *) _qt5xhb_itemGetPtr(1);
  QDir * o = new QDir ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDir(const QString & path = QString())
*/
void QDir_new2 ()
{
  QString par1 = ISNIL(1)? QString() : QLatin1String( hb_parc(1) );
  QDir * o = new QDir ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDir(const QString & path, const QString & nameFilter, SortFlags sort = SortFlags( Name | IgnoreCase ), Filters filters = AllEntries)
*/
void QDir_new3 ()
{
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = QLatin1String( hb_parc(2) );
  int par3 = ISNIL(3)? (int) QDir::Name | QDir::IgnoreCase : hb_parni(3);
  int par4 = ISNIL(4)? (int) QDir::AllEntries : hb_parni(4);
  QDir * o = new QDir ( par1, par2,  (QDir::SortFlags) par3,  (QDir::Filters) par4 );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QDir(const QDir & dir)
//[2]QDir(const QString & path = QString())
//[3]QDir(const QString & path, const QString & nameFilter, SortFlags sort = SortFlags( Name | IgnoreCase ), Filters filters = AllEntries)

HB_FUNC_STATIC( QDIR_NEW )
{
  if( ISNUMPAR(1) && ISQDIR(1) )
  {
    QDir_new1();
  }
  else if( ISBETWEEN(0,1) && ISOPTCHAR(1) )
  {
    QDir_new2();
  }
  else if( ISBETWEEN(2,4) && ISCHAR(1) && ISCHAR(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    QDir_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDIR_DELETE )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QString absoluteFilePath(const QString & fileName) const
*/
HB_FUNC_STATIC( QDIR_ABSOLUTEFILEPATH )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      hb_retc( (const char *) obj->absoluteFilePath ( par1 ).toLatin1().data() );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString absolutePath() const
*/
HB_FUNC_STATIC( QDIR_ABSOLUTEPATH )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->absolutePath (  ).toLatin1().data() );
  }
}

/*
QString canonicalPath() const
*/
HB_FUNC_STATIC( QDIR_CANONICALPATH )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->canonicalPath (  ).toLatin1().data() );
  }
}

/*
bool cd(const QString & dirName)
*/
HB_FUNC_STATIC( QDIR_CD )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      hb_retl( obj->cd ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool cdUp()
*/
HB_FUNC_STATIC( QDIR_CDUP )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->cdUp (  ) );
  }
}

/*
uint count() const
*/
HB_FUNC_STATIC( QDIR_COUNT )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}

/*
QString dirName() const
*/
HB_FUNC_STATIC( QDIR_DIRNAME )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->dirName (  ).toLatin1().data() );
  }
}

/*
QFileInfoList entryInfoList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
void QDir_entryInfoList1 ()
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
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
    int par2 = ISNIL(2)? (int) QDir::NoFilter : hb_parni(2);
    int par3 = ISNIL(3)? (int) QDir::NoSort : hb_parni(3);
    QFileInfoList list = obj->entryInfoList ( par1,  (QDir::Filters) par2,  (QDir::SortFlags) par3 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QFILEINFO" );
    #else
    pDynSym = hb_dynsymFindName( "QFILEINFO" );
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
        hb_itemPutPtr( pItem, (QFileInfo *) new QFileInfo( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QFileInfoList entryInfoList(Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
void QDir_entryInfoList2 ()
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = ISNIL(1)? (int) QDir::NoFilter : hb_parni(1);
    int par2 = ISNIL(2)? (int) QDir::NoSort : hb_parni(2);
    QFileInfoList list = obj->entryInfoList (  (QDir::Filters) par1,  (QDir::SortFlags) par2 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QFILEINFO" );
    #else
    pDynSym = hb_dynsymFindName( "QFILEINFO" );
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
        hb_itemPutPtr( pItem, (QFileInfo *) new QFileInfo( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

//[1]QFileInfoList entryInfoList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
//[2]QFileInfoList entryInfoList(Filters filters = NoFilter, SortFlags sort = NoSort) const

HB_FUNC_STATIC( QDIR_ENTRYINFOLIST )
{
  if( ISBETWEEN(1,3) && ISARRAY(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QDir_entryInfoList1();
  }
  else if( ISBETWEEN(0,2) && ISOPTNUM(1) && ISOPTNUM(2) )
  {
    QDir_entryInfoList2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringList entryList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
void QDir_entryList1 ()
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
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
    int par2 = ISNIL(2)? (int) QDir::NoFilter : hb_parni(2);
    int par3 = ISNIL(3)? (int) QDir::NoSort : hb_parni(3);
    QStringList strl = obj->entryList ( par1,  (QDir::Filters) par2,  (QDir::SortFlags) par3 );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}

/*
QStringList entryList(Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
void QDir_entryList2 ()
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = ISNIL(1)? (int) QDir::NoFilter : hb_parni(1);
    int par2 = ISNIL(2)? (int) QDir::NoSort : hb_parni(2);
    QStringList strl = obj->entryList (  (QDir::Filters) par1,  (QDir::SortFlags) par2 );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}

//[1]QStringList entryList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
//[2]QStringList entryList(Filters filters = NoFilter, SortFlags sort = NoSort) const

HB_FUNC_STATIC( QDIR_ENTRYLIST )
{
  if( ISBETWEEN(1,3) && ISARRAY(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QDir_entryList1();
  }
  else if( ISBETWEEN(0,2) && ISOPTNUM(1) && ISOPTNUM(2) )
  {
    QDir_entryList2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool exists(const QString & name) const
*/
void QDir_exists1 ()
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->exists ( par1 ) );
  }
}

/*
bool exists() const
*/
void QDir_exists2 ()
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->exists (  ) );
  }
}

//[1]bool exists(const QString & name) const
//[2]bool exists() const

HB_FUNC_STATIC( QDIR_EXISTS )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QDir_exists1();
  }
  else if( ISNUMPAR(0) )
  {
    QDir_exists2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString filePath(const QString & fileName) const
*/
HB_FUNC_STATIC( QDIR_FILEPATH )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      hb_retc( (const char *) obj->filePath ( par1 ).toLatin1().data() );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Filters filter() const
*/
HB_FUNC_STATIC( QDIR_FILTER )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->filter (  ) );
  }
}

/*
bool isAbsolute() const
*/
HB_FUNC_STATIC( QDIR_ISABSOLUTE )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isAbsolute (  ) );
  }
}

/*
bool isReadable() const
*/
HB_FUNC_STATIC( QDIR_ISREADABLE )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isReadable (  ) );
  }
}

/*
bool isRelative() const
*/
HB_FUNC_STATIC( QDIR_ISRELATIVE )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isRelative (  ) );
  }
}

/*
bool isRoot() const
*/
HB_FUNC_STATIC( QDIR_ISROOT )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isRoot (  ) );
  }
}

/*
bool makeAbsolute()
*/
HB_FUNC_STATIC( QDIR_MAKEABSOLUTE )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->makeAbsolute (  ) );
  }
}

/*
bool mkdir(const QString & dirName) const
*/
HB_FUNC_STATIC( QDIR_MKDIR )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      hb_retl( obj->mkdir ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool mkpath(const QString & dirPath) const
*/
HB_FUNC_STATIC( QDIR_MKPATH )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      hb_retl( obj->mkpath ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList nameFilters() const
*/
HB_FUNC_STATIC( QDIR_NAMEFILTERS )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringList strl = obj->nameFilters (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}

/*
QString path() const
*/
HB_FUNC_STATIC( QDIR_PATH )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->path (  ).toLatin1().data() );
  }
}

/*
void refresh() const
*/
HB_FUNC_STATIC( QDIR_REFRESH )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->refresh (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString relativeFilePath(const QString & fileName) const
*/
HB_FUNC_STATIC( QDIR_RELATIVEFILEPATH )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      hb_retc( (const char *) obj->relativeFilePath ( par1 ).toLatin1().data() );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool remove(const QString & fileName)
*/
HB_FUNC_STATIC( QDIR_REMOVE )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      hb_retl( obj->remove ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool removeRecursively()
*/
HB_FUNC_STATIC( QDIR_REMOVERECURSIVELY )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->removeRecursively (  ) );
  }
}

/*
bool rename(const QString & oldName, const QString & newName)
*/
HB_FUNC_STATIC( QDIR_RENAME )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISCHAR(2) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      QString par2 = QLatin1String( hb_parc(2) );
      hb_retl( obj->rename ( par1, par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool rmdir(const QString & dirName) const
*/
HB_FUNC_STATIC( QDIR_RMDIR )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      hb_retl( obj->rmdir ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool rmpath(const QString & dirPath) const
*/
HB_FUNC_STATIC( QDIR_RMPATH )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      hb_retl( obj->rmpath ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setFilter(Filters filters)
*/
HB_FUNC_STATIC( QDIR_SETFILTER )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setNameFilters(const QStringList & nameFilters)
*/
HB_FUNC_STATIC( QDIR_SETNAMEFILTERS )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setPath(const QString & path)
*/
HB_FUNC_STATIC( QDIR_SETPATH )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      obj->setPath ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSorting(SortFlags sort)
*/
HB_FUNC_STATIC( QDIR_SETSORTING )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

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
SortFlags sorting() const
*/
HB_FUNC_STATIC( QDIR_SORTING )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->sorting (  ) );
  }
}

/*
void swap(QDir & other)
*/
HB_FUNC_STATIC( QDIR_SWAP )
{
  QDir * obj = (QDir *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDIR(1) )
    {
      QDir * par1 = (QDir *) _qt5xhb_itemGetPtr(1);
      obj->swap ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void addSearchPath(const QString & prefix, const QString & path)
*/
HB_FUNC_STATIC( QDIR_ADDSEARCHPATH )
{
  if( ISCHAR(1) && ISCHAR(2) )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QDir::addSearchPath ( par1, par2 );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString cleanPath(const QString & path)
*/
HB_FUNC_STATIC( QDIR_CLEANPATH )
{
  if( ISCHAR(1) )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) QDir::cleanPath ( par1 ).toLatin1().data() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QDir current()
*/
HB_FUNC_STATIC( QDIR_CURRENT )
{
  QDir * ptr = new QDir( QDir::current (  ) );
  _qt5xhb_createReturnClass ( ptr, "QDIR", true );
}

/*
static QString currentPath()
*/
HB_FUNC_STATIC( QDIR_CURRENTPATH )
{
  hb_retc( (const char *) QDir::currentPath (  ).toLatin1().data() );
}

/*
static QFileInfoList drives()
*/
HB_FUNC_STATIC( QDIR_DRIVES )
{
  QFileInfoList list = QDir::drives (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QFILEINFO" );
  #else
  pDynSym = hb_dynsymFindName( "QFILEINFO" );
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
      hb_itemPutPtr( pItem, (QFileInfo *) new QFileInfo( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
      hb_itemRelease( pItem );
    }
  }
  hb_itemReturnRelease(pArray);
}

/*
static QString fromNativeSeparators(const QString & pathName)
*/
HB_FUNC_STATIC( QDIR_FROMNATIVESEPARATORS )
{
  if( ISCHAR(1) )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) QDir::fromNativeSeparators ( par1 ).toLatin1().data() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QDir home()
*/
HB_FUNC_STATIC( QDIR_HOME )
{
  QDir * ptr = new QDir( QDir::home (  ) );
  _qt5xhb_createReturnClass ( ptr, "QDIR", true );
}

/*
static QString homePath()
*/
HB_FUNC_STATIC( QDIR_HOMEPATH )
{
  hb_retc( (const char *) QDir::homePath (  ).toLatin1().data() );
}

/*
static bool isAbsolutePath(const QString & path)
*/
HB_FUNC_STATIC( QDIR_ISABSOLUTEPATH )
{
  if( ISCHAR(1) )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( QDir::isAbsolutePath ( par1 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool isRelativePath(const QString & path)
*/
HB_FUNC_STATIC( QDIR_ISRELATIVEPATH )
{
  if( ISCHAR(1) )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( QDir::isRelativePath ( par1 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool match(const QString & filter, const QString & fileName)
*/
void QDir_match1 ()
{
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = QLatin1String( hb_parc(2) );
  hb_retl( QDir::match ( par1, par2 ) );
}

/*
static bool match(const QStringList & filters, const QString & fileName)
*/
void QDir_match2 ()
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
  QString par2 = QLatin1String( hb_parc(2) );
  hb_retl( QDir::match ( par1, par2 ) );
}

//[1]bool match(const QString & filter, const QString & fileName)
//[2]bool match(const QStringList & filters, const QString & fileName)

HB_FUNC_STATIC( QDIR_MATCH )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QDir_match1();
  }
  else if( ISNUMPAR(2) && ISARRAY(1) && ISCHAR(2) )
  {
    QDir_match2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QDir root()
*/
HB_FUNC_STATIC( QDIR_ROOT )
{
  QDir * ptr = new QDir( QDir::root (  ) );
  _qt5xhb_createReturnClass ( ptr, "QDIR", true );
}

/*
static QString rootPath()
*/
HB_FUNC_STATIC( QDIR_ROOTPATH )
{
  hb_retc( (const char *) QDir::rootPath (  ).toLatin1().data() );
}

/*
static QStringList searchPaths(const QString & prefix)
*/
HB_FUNC_STATIC( QDIR_SEARCHPATHS )
{
  if( ISCHAR(1) )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QStringList strl = QDir::searchPaths ( par1 );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QChar separator()
*/
HB_FUNC_STATIC( QDIR_SEPARATOR )
{
  QChar * ptr = new QChar( QDir::separator (  ) );
  _qt5xhb_createReturnClass ( ptr, "QCHAR" );
}

/*
static bool setCurrent(const QString & path)
*/
HB_FUNC_STATIC( QDIR_SETCURRENT )
{
  if( ISCHAR(1) )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( QDir::setCurrent ( par1 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setSearchPaths(const QString & prefix, const QStringList & searchPaths)
*/
HB_FUNC_STATIC( QDIR_SETSEARCHPATHS )
{
  if( ISCHAR(1) && ISARRAY(2) )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QStringList par2 = _qt5xhb_convert_array_parameter_to_qstringlist(2);
    //PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
    //int i2;
    //int nLen2 = hb_arrayLen(aStrings2);
    //for (i2=0;i2<nLen2;i2++)
    //{
    //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings2, i2+1) );
    //  par2 << temp;
    //}
    QDir::setSearchPaths ( par1, par2 );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QDir temp()
*/
HB_FUNC_STATIC( QDIR_TEMP )
{
  QDir * ptr = new QDir( QDir::temp (  ) );
  _qt5xhb_createReturnClass ( ptr, "QDIR", true );
}

/*
static QString tempPath()
*/
HB_FUNC_STATIC( QDIR_TEMPPATH )
{
  hb_retc( (const char *) QDir::tempPath (  ).toLatin1().data() );
}

/*
static QString toNativeSeparators(const QString & pathName)
*/
HB_FUNC_STATIC( QDIR_TONATIVESEPARATORS )
{
  if( ISCHAR(1) )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) QDir::toNativeSeparators ( par1 ).toLatin1().data() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDIR_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QDIR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDIR_NEWFROM );
}

HB_FUNC_STATIC( QDIR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDIR_NEWFROM );
}

HB_FUNC_STATIC( QDIR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDIR_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
