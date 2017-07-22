$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDIR
REQUEST QDATETIME
#endif

CLASS QFileInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD absoluteDir
   METHOD absoluteFilePath
   METHOD absolutePath
   METHOD baseName
   METHOD bundleName
   METHOD caching
   METHOD canonicalFilePath
   METHOD canonicalPath
   METHOD completeBaseName
   METHOD completeSuffix
   METHOD created
   METHOD dir
   METHOD exists
   METHOD fileName
   METHOD filePath
   METHOD group
   METHOD groupId
   METHOD isAbsolute
   METHOD isBundle
   METHOD isDir
   METHOD isExecutable
   METHOD isFile
   METHOD isHidden
   METHOD isNativePath
   METHOD isReadable
   METHOD isRelative
   METHOD isRoot
   METHOD isSymLink
   METHOD isWritable
   METHOD lastModified
   METHOD lastRead
   METHOD makeAbsolute
   METHOD owner
   METHOD ownerId
   METHOD path
   METHOD permission
   METHOD permissions
   METHOD refresh
   METHOD setCaching
   METHOD setFile
   METHOD size
   METHOD suffix
   METHOD swap
   METHOD symLinkTarget

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

#include <QDir>
#include <QDateTime>

/*
QFileInfo()
*/
$internalConstructor=|new1|

/*
QFileInfo(const QString & file)
*/
$internalConstructor=|new2|const QString &

/*
QFileInfo(const QFile & file)
*/
$internalConstructor=|new3|const QFile &

/*
QFileInfo(const QDir & dir, const QString & file)
*/
$internalConstructor=|new4|const QDir &,const QString &

/*
QFileInfo(const QFileInfo & fileinfo)
*/
$internalConstructor=|new5|const QFileInfo &

//[1]QFileInfo()
//[2]QFileInfo(const QString & file)
//[3]QFileInfo(const QFile & file)
//[4]QFileInfo(const QDir & dir, const QString & file)
//[5]QFileInfo(const QFileInfo & fileinfo)

HB_FUNC_STATIC( QFILEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QFileInfo_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFileInfo_new2();
  }
  else if( ISNUMPAR(1) && ISQFILE(1) )
  {
    QFileInfo_new3();
  }
  else if( ISNUMPAR(2) && ISQDIR(1) && ISCHAR(2) )
  {
    QFileInfo_new4();
  }
  else if( ISNUMPAR(1) && ISQFILEINFO(1) )
  {
    QFileInfo_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QDir absoluteDir() const
*/
$method=|QDir|absoluteDir|

/*
QString absoluteFilePath() const
*/
$method=|QString|absoluteFilePath|

/*
QString absolutePath() const
*/
$method=|QString|absolutePath|

/*
QString baseName() const
*/
$method=|QString|baseName|

/*
QString bundleName() const
*/
$method=|QString|bundleName|

/*
bool caching() const
*/
$method=|bool|caching|

/*
QString canonicalFilePath() const
*/
$method=|QString|canonicalFilePath|

/*
QString canonicalPath() const
*/
$method=|QString|canonicalPath|

/*
QString completeBaseName() const
*/
$method=|QString|completeBaseName|

/*
QString completeSuffix() const
*/
$method=|QString|completeSuffix|

/*
QDateTime created() const
*/
$method=|QDateTime|created|

/*
QDir dir() const
*/
$method=|QDir|dir|

/*
bool exists() const
*/
$method=|bool|exists|

/*
QString fileName() const
*/
$method=|QString|fileName|

/*
QString filePath() const
*/
$method=|QString|filePath|

/*
QString group() const
*/
$method=|QString|group|

/*
uint groupId() const
*/
$method=|uint|groupId|

/*
bool isAbsolute() const
*/
$method=|bool|isAbsolute|

/*
bool isBundle() const
*/
$method=|bool|isBundle|

/*
bool isDir() const
*/
$method=|bool|isDir|

/*
bool isExecutable() const
*/
$method=|bool|isExecutable|

/*
bool isFile() const
*/
$method=|bool|isFile|

/*
bool isHidden() const
*/
$method=|bool|isHidden|

/*
bool isNativePath() const
*/
$method=|bool|isNativePath|

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
bool isSymLink() const
*/
$method=|bool|isSymLink|

/*
bool isWritable() const
*/
$method=|bool|isWritable|

/*
QDateTime lastModified() const
*/
$method=|QDateTime|lastModified|

/*
QDateTime lastRead() const
*/
$method=|QDateTime|lastRead|

/*
bool makeAbsolute()
*/
$method=|bool|makeAbsolute|

/*
QString owner() const
*/
$method=|QString|owner|

/*
uint ownerId() const
*/
$method=|uint|ownerId|

/*
QString path() const
*/
$method=|QString|path|

/*
bool permission(QFile::Permissions permissions) const
*/
$method=|bool|permission|QFile::Permissions

/*
QFile::Permissions permissions() const
*/
$method=|QFile::Permissions|permissions|

/*
void refresh()
*/
$method=|void|refresh|

/*
void setCaching(bool enable)
*/
$method=|void|setCaching|bool

/*
void setFile(const QString & file)
*/
$internalMethod=|void|setFile,setFile1|const QString &

/*
void setFile(const QFile & file)
*/
$internalMethod=|void|setFile,setFile2|const QFile &

/*
void setFile(const QDir & dir, const QString & file)
*/
$internalMethod=|void|setFile,setFile3|const QDir &,const QString &

//[1]void setFile(const QString & file)
//[2]void setFile(const QFile & file)
//[3]void setFile(const QDir & dir, const QString & file)

HB_FUNC_STATIC( QFILEINFO_SETFILE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFileInfo_setFile1();
  }
  else if( ISNUMPAR(1) && ISQFILE(1) )
  {
    QFileInfo_setFile2();
  }
  else if( ISNUMPAR(2) && ISQDIR(1) && ISCHAR(2) )
  {
    QFileInfo_setFile3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qint64 size() const
*/
$method=|qint64|size|

/*
QString suffix() const
*/
$method=|QString|suffix|

/*
void swap(QFileInfo & other)
*/
$method=|void|swap|QFileInfo &

/*
QString symLinkTarget() const
*/
$method=|QString|symLinkTarget|

$extraMethods

#pragma ENDDUMP
