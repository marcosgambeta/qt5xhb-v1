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
void QFileInfo_new1 ()
{
  QFileInfo * o = new QFileInfo ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QFileInfo(const QString & file)
*/
void QFileInfo_new2 ()
{
  QFileInfo * o = new QFileInfo ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QFileInfo(const QFile & file)
*/
void QFileInfo_new3 ()
{
  QFileInfo * o = new QFileInfo ( *PQFILE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QFileInfo(const QDir & dir, const QString & file)
*/
void QFileInfo_new4 ()
{
  QFileInfo * o = new QFileInfo ( *PQDIR(1), PQSTRING(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QFileInfo(const QFileInfo & fileinfo)
*/
void QFileInfo_new5 ()
{
  QFileInfo * o = new QFileInfo ( *PQFILEINFO(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

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
HB_FUNC_STATIC( QFILEINFO_ABSOLUTEDIR )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDir * ptr = new QDir( obj->absoluteDir () );
    _qt5xhb_createReturnClass ( ptr, "QDIR", true );
  }
}

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
HB_FUNC_STATIC( QFILEINFO_CREATED )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->created () );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}

/*
QDir dir() const
*/
HB_FUNC_STATIC( QFILEINFO_DIR )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDir * ptr = new QDir( obj->dir () );
    _qt5xhb_createReturnClass ( ptr, "QDIR", true );
  }
}

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
HB_FUNC_STATIC( QFILEINFO_LASTMODIFIED )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->lastModified () );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}

/*
QDateTime lastRead() const
*/
HB_FUNC_STATIC( QFILEINFO_LASTREAD )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->lastRead () );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}

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
HB_FUNC_STATIC( QFILEINFO_PERMISSION )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      RBOOL( obj->permission ( (QFile::Permissions) par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QFile::Permissions permissions() const
*/
HB_FUNC_STATIC( QFILEINFO_PERMISSIONS )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->permissions () );
  }
}

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
void QFileInfo_setFile1 ()
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFile ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFile(const QFile & file)
*/
void QFileInfo_setFile2 ()
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFile ( *PQFILE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFile(const QDir & dir, const QString & file)
*/
void QFileInfo_setFile3 ()
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFile ( *PQDIR(1), PQSTRING(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QFILEINFO_SWAP )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQFILEINFO(1) )
    {
      QFileInfo * par1 = (QFileInfo *) _qt5xhb_itemGetPtr(1);
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
QString symLinkTarget() const
*/
$method=|QString|symLinkTarget|

$extraMethods

#pragma ENDDUMP
