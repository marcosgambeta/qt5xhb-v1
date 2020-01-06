%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QDir>
#include <QtCore/QDateTime>

$prototype=QFileInfo()
$internalConstructor=|new1|

$prototype=QFileInfo(const QString & file)
$internalConstructor=|new2|const QString &

$prototype=QFileInfo(const QFile & file)
$internalConstructor=|new3|const QFile &

$prototype=QFileInfo(const QDir & dir, const QString & file)
$internalConstructor=|new4|const QDir &,const QString &

$prototype=QFileInfo(const QFileInfo & fileinfo)
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

$prototype=QDir absoluteDir() const
$method=|QDir|absoluteDir|

$prototype=QString absoluteFilePath() const
$method=|QString|absoluteFilePath|

$prototype=QString absolutePath() const
$method=|QString|absolutePath|

$prototype=QString baseName() const
$method=|QString|baseName|

$prototype=QString bundleName() const
$method=|QString|bundleName|

$prototype=bool caching() const
$method=|bool|caching|

$prototype=QString canonicalFilePath() const
$method=|QString|canonicalFilePath|

$prototype=QString canonicalPath() const
$method=|QString|canonicalPath|

$prototype=QString completeBaseName() const
$method=|QString|completeBaseName|

$prototype=QString completeSuffix() const
$method=|QString|completeSuffix|

$prototype=QDateTime created() const
$method=|QDateTime|created|

$prototype=QDir dir() const
$method=|QDir|dir|

$prototype=bool exists() const
$method=|bool|exists|

$prototype=QString fileName() const
$method=|QString|fileName|

$prototype=QString filePath() const
$method=|QString|filePath|

$prototype=QString group() const
$method=|QString|group|

$prototype=uint groupId() const
$method=|uint|groupId|

$prototype=bool isAbsolute() const
$method=|bool|isAbsolute|

$prototype=bool isBundle() const
$method=|bool|isBundle|

$prototype=bool isDir() const
$method=|bool|isDir|

$prototype=bool isExecutable() const
$method=|bool|isExecutable|

$prototype=bool isFile() const
$method=|bool|isFile|

$prototype=bool isHidden() const
$method=|bool|isHidden|

$prototype=bool isNativePath() const
$method=|bool|isNativePath|

$prototype=bool isReadable() const
$method=|bool|isReadable|

$prototype=bool isRelative() const
$method=|bool|isRelative|

$prototype=bool isRoot() const
$method=|bool|isRoot|

$prototype=bool isSymLink() const
$method=|bool|isSymLink|

$prototype=bool isWritable() const
$method=|bool|isWritable|

$prototype=QDateTime lastModified() const
$method=|QDateTime|lastModified|

$prototype=QDateTime lastRead() const
$method=|QDateTime|lastRead|

$prototype=bool makeAbsolute()
$method=|bool|makeAbsolute|

$prototype=QString owner() const
$method=|QString|owner|

$prototype=uint ownerId() const
$method=|uint|ownerId|

$prototype=QString path() const
$method=|QString|path|

$prototype=bool permission(QFile::Permissions permissions) const
$method=|bool|permission|QFile::Permissions

$prototype=QFile::Permissions permissions() const
$method=|QFile::Permissions|permissions|

$prototype=void refresh()
$method=|void|refresh|

$prototype=void setCaching(bool enable)
$method=|void|setCaching|bool

$prototype=void setFile(const QString & file)
$internalMethod=|void|setFile,setFile1|const QString &

$prototype=void setFile(const QFile & file)
$internalMethod=|void|setFile,setFile2|const QFile &

$prototype=void setFile(const QDir & dir, const QString & file)
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
$addMethod=setFile

$prototype=qint64 size() const
$method=|qint64|size|

$prototype=QString suffix() const
$method=|QString|suffix|

$prototype=void swap(QFileInfo & other)
$method=|void|swap|QFileInfo &

$prototype=QString symLinkTarget() const
$method=|QString|symLinkTarget|

$extraMethods

#pragma ENDDUMP
