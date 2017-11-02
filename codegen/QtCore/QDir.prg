$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFILEINFO
REQUEST QCHAR
#endif

CLASS QDir

   DATA pointer
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

$destructor

#pragma BEGINDUMP

$includes

/*
QDir(const QDir & dir)
*/
$internalConstructor=|new1|const QDir &

/*
QDir(const QString & path = QString())
*/
$internalConstructor=|new2|const QString &=QString()

/*
QDir(const QString & path, const QString & nameFilter, SortFlags sort = SortFlags( Name | IgnoreCase ), Filters filters = AllEntries)
*/
$internalConstructor=|new3|const QString &,const QString &,QDir::SortFlags=QDir::SortFlags( QDir::Name OR QDir::IgnoreCase ),QDir::Filters=QDir::AllEntries

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

$deleteMethod

/*
QString absoluteFilePath(const QString & fileName) const
*/
$method=|QString|absoluteFilePath|const QString &

/*
QString absolutePath() const
*/
$method=|QString|absolutePath|

/*
QString canonicalPath() const
*/
$method=|QString|canonicalPath|

/*
bool cd(const QString & dirName)
*/
$method=|bool|cd|const QString &

/*
bool cdUp()
*/
$method=|bool|cdUp|

/*
uint count() const
*/
$method=|uint|count|

/*
QString dirName() const
*/
$method=|QString|dirName|

/*
QFileInfoList entryInfoList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
$internalMethod=|QFileInfoList|entryInfoList,entryInfoList1|const QStringList &,QDir::FiltersFilters=QDir::FiltersNoFilter,QDir::SortFlags=QDir::NoSort

/*
QFileInfoList entryInfoList(Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
$internalMethod=|QFileInfoList|entryInfoList,entryInfoList2|QDir::Filters=QDir::NoFilter,QDir::SortFlags=QDir::NoSort

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
$internalMethod=|QStringList|entryList,entryList1|const QStringList &,QDir::Filters=QDir::NoFilter,QDir::SortFlags=QDir::NoSort

/*
QStringList entryList(Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
$internalMethod=|QStringList|entryList,entryList2|QDir::Filters=QDir::NoFilter,QDir::SortFlags=QDir::NoSort

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
$internalMethod=|bool|exists,exists1|const QString &

/*
bool exists() const
*/
$internalMethod=|bool|exists,exists2|

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
$method=|QString|filePath|const QString &

/*
Filters filter() const
*/
$method=|QDir::Filters|filter|

/*
bool isAbsolute() const
*/
$method=|bool|isAbsolute|

/*
bool isReadable() const
*/
$method=|bool|isReadable|

/*
bool isRelative() const
*/
$method=|bool|isRelative|

/*
bool isRoot() const
*/
$method=|bool|isRoot|

/*
bool makeAbsolute()
*/
$method=|bool|makeAbsolute|

/*
bool mkdir(const QString & dirName) const
*/
$method=|bool|mkdir|const QString &

/*
bool mkpath(const QString & dirPath) const
*/
$method=|bool|mkpath|const QString &

/*
QStringList nameFilters() const
*/
$method=|QStringList|nameFilters|

/*
QString path() const
*/
$method=|QString|path|

/*
void refresh() const
*/
$method=|void|refresh|

/*
QString relativeFilePath(const QString & fileName) const
*/
$method=|QString|relativeFilePath|const QString &

/*
bool remove(const QString & fileName)
*/
$method=|bool|remove|const QString &

/*
bool removeRecursively()
*/
$method=|bool|removeRecursively|

/*
bool rename(const QString & oldName, const QString & newName)
*/
$method=|bool|rename|const QString &,const QString &

/*
bool rmdir(const QString & dirName) const
*/
$method=|bool|rmdir|const QString &

/*
bool rmpath(const QString & dirPath) const
*/
$method=|bool|rmpath|const QString &

/*
void setFilter(Filters filters)
*/
$method=|void|setFilter|QDir::Filters

/*
void setNameFilters(const QStringList & nameFilters)
*/
$method=|void|setNameFilters|const QStringList &

/*
void setPath(const QString & path)
*/
$method=|void|setPath|const QString &

/*
void setSorting(SortFlags sort)
*/
$method=|void|setSorting|QDir::SortFlags

/*
SortFlags sorting() const
*/
$method=|QDir::SortFlags|sorting|

/*
void swap(QDir & other)
*/
$method=|void|swap|QDir &

/*
static void addSearchPath(const QString & prefix, const QString & path)
*/
$staticMethod=|void|addSearchPath|const QString &,const QString &

/*
static QString cleanPath(const QString & path)
*/
$staticMethod=|QString|cleanPath|const QString &

/*
static QDir current()
*/
$staticMethod=|QDir|current|

/*
static QString currentPath()
*/
$staticMethod=|QString|currentPath|

/*
static QFileInfoList drives()
*/
HB_FUNC_STATIC( QDIR_DRIVES )
{
  QFileInfoList list = QDir::drives ();
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
$staticMethod=|QString|fromNativeSeparators|const QString &

/*
static QDir home()
*/
$staticMethod=|QDir|home|

/*
static QString homePath()
*/
$staticMethod=|QString|homePath|

/*
static bool isAbsolutePath(const QString & path)
*/
$staticMethod=|bool|isAbsolutePath|const QString &

/*
static bool isRelativePath(const QString & path)
*/
$staticMethod=|bool|isRelativePath|const QString &

/*
static bool match(const QString & filter, const QString & fileName)
*/
$internalStaticMethod=|bool|match,match1|const QString &,const QString &

/*
static bool match(const QStringList & filters, const QString & fileName)
*/
$internalStaticMethod=|bool|match,match2|const QStringList &,const QString &

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
$staticMethod=|QDir|root|

/*
static QString rootPath()
*/
$staticMethod=|QString|rootPath|

/*
static QStringList searchPaths(const QString & prefix)
*/
$staticMethod=|QStringList|searchPaths|const QString &

/*
static QChar separator()
*/
$staticMethod=|QChar|separator|

/*
static bool setCurrent(const QString & path)
*/
$staticMethod=|bool|setCurrent|const QString &

/*
static void setSearchPaths(const QString & prefix, const QStringList & searchPaths)
*/
$staticMethod=|void|setSearchPaths|const QString &,const QStringList &

/*
static QDir temp()
*/
$staticMethod=|QDir|temp|

/*
static QString tempPath()
*/
$staticMethod=|QString|tempPath|

/*
static QString toNativeSeparators(const QString & pathName)
*/
$staticMethod=|QString|toNativeSeparators|const QString &

$extraMethods

#pragma ENDDUMP
