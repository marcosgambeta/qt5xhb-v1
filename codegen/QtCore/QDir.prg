%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=QDir(const QDir & dir)
$internalConstructor=|new1|const QDir &

$prototype=QDir(const QString & path = QString())
$internalConstructor=|new2|const QString &=QString()

$prototype=QDir(const QString & path, const QString & nameFilter, SortFlags sort = SortFlags( Name | IgnoreCase ), Filters filters = AllEntries)
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

$prototype=QString absoluteFilePath(const QString & fileName) const
$method=|QString|absoluteFilePath|const QString &

$prototype=QString absolutePath() const
$method=|QString|absolutePath|

$prototype=QString canonicalPath() const
$method=|QString|canonicalPath|

$prototype=bool cd(const QString & dirName)
$method=|bool|cd|const QString &

$prototype=bool cdUp()
$method=|bool|cdUp|

$prototype=uint count() const
$method=|uint|count|

$prototype=QString dirName() const
$method=|QString|dirName|

$prototype=QFileInfoList entryInfoList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
$internalMethod=|QFileInfoList|entryInfoList,entryInfoList1|const QStringList &,QDir::Filters=QDir::NoFilter,QDir::SortFlags=QDir::NoSort

$prototype=QFileInfoList entryInfoList(Filters filters = NoFilter, SortFlags sort = NoSort) const
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

$prototype=QStringList entryList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
$internalMethod=|QStringList|entryList,entryList1|const QStringList &,QDir::Filters=QDir::NoFilter,QDir::SortFlags=QDir::NoSort

$prototype=QStringList entryList(Filters filters = NoFilter, SortFlags sort = NoSort) const
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

$prototype=bool exists(const QString & name) const
$internalMethod=|bool|exists,exists1|const QString &

$prototype=bool exists() const
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

$prototype=QString filePath(const QString & fileName) const
$method=|QString|filePath|const QString &

$prototype=Filters filter() const
$method=|QDir::Filters|filter|

$prototype=bool isAbsolute() const
$method=|bool|isAbsolute|

$prototype=bool isReadable() const
$method=|bool|isReadable|

$prototype=bool isRelative() const
$method=|bool|isRelative|

$prototype=bool isRoot() const
$method=|bool|isRoot|

$prototype=bool makeAbsolute()
$method=|bool|makeAbsolute|

$prototype=bool mkdir(const QString & dirName) const
$method=|bool|mkdir|const QString &

$prototype=bool mkpath(const QString & dirPath) const
$method=|bool|mkpath|const QString &

$prototype=QStringList nameFilters() const
$method=|QStringList|nameFilters|

$prototype=QString path() const
$method=|QString|path|

$prototype=void refresh() const
$method=|void|refresh|

$prototype=QString relativeFilePath(const QString & fileName) const
$method=|QString|relativeFilePath|const QString &

$prototype=bool remove(const QString & fileName)
$method=|bool|remove|const QString &

$prototype=bool removeRecursively()
$method=|bool|removeRecursively|

$prototype=bool rename(const QString & oldName, const QString & newName)
$method=|bool|rename|const QString &,const QString &

$prototype=bool rmdir(const QString & dirName) const
$method=|bool|rmdir|const QString &

$prototype=bool rmpath(const QString & dirPath) const
$method=|bool|rmpath|const QString &

$prototype=void setFilter(Filters filters)
$method=|void|setFilter|QDir::Filters

$prototype=void setNameFilters(const QStringList & nameFilters)
$method=|void|setNameFilters|const QStringList &

$prototype=void setPath(const QString & path)
$method=|void|setPath|const QString &

$prototype=void setSorting(SortFlags sort)
$method=|void|setSorting|QDir::SortFlags

$prototype=SortFlags sorting() const
$method=|QDir::SortFlags|sorting|

$prototype=void swap(QDir & other)
$method=|void|swap|QDir &

$prototype=static void addSearchPath(const QString & prefix, const QString & path)
$staticMethod=|void|addSearchPath|const QString &,const QString &

$prototype=static QString cleanPath(const QString & path)
$staticMethod=|QString|cleanPath|const QString &

$prototype=static QDir current()
$staticMethod=|QDir|current|

$prototype=static QString currentPath()
$staticMethod=|QString|currentPath|

$prototype=static QFileInfoList drives()
$staticMethod=|QFileInfoList|drives|

$prototype=static QString fromNativeSeparators(const QString & pathName)
$staticMethod=|QString|fromNativeSeparators|const QString &

$prototype=static QDir home()
$staticMethod=|QDir|home|

$prototype=static QString homePath()
$staticMethod=|QString|homePath|

$prototype=static bool isAbsolutePath(const QString & path)
$staticMethod=|bool|isAbsolutePath|const QString &

$prototype=static bool isRelativePath(const QString & path)
$staticMethod=|bool|isRelativePath|const QString &

$prototype=static bool match(const QString & filter, const QString & fileName)
$internalStaticMethod=|bool|match,match1|const QString &,const QString &

$prototype=static bool match(const QStringList & filters, const QString & fileName)
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

$prototype=static QDir root()
$staticMethod=|QDir|root|

$prototype=static QString rootPath()
$staticMethod=|QString|rootPath|

$prototype=static QStringList searchPaths(const QString & prefix)
$staticMethod=|QStringList|searchPaths|const QString &

$prototype=static QChar separator()
$staticMethod=|QChar|separator|

$prototype=static bool setCurrent(const QString & path)
$staticMethod=|bool|setCurrent|const QString &

$prototype=static void setSearchPaths(const QString & prefix, const QStringList & searchPaths)
$staticMethod=|void|setSearchPaths|const QString &,const QStringList &

$prototype=static QDir temp()
$staticMethod=|QDir|temp|

$prototype=static QString tempPath()
$staticMethod=|QString|tempPath|

$prototype=static QString toNativeSeparators(const QString & pathName)
$staticMethod=|QString|toNativeSeparators|const QString &

$extraMethods

#pragma ENDDUMP
