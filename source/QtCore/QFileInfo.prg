/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QDIR
REQUEST QDATETIME
#endif

CLASS QFileInfo

   DATA pointer
   DATA class_id INIT Class_Id_QFileInfo
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
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
   METHOD setFile1
   METHOD setFile2
   METHOD setFile3
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

PROCEDURE destroyObject () CLASS QFileInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QFileInfo>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QFileInfo>
#endif

#include <QDir>
#include <QDateTime>

/*
QFileInfo()
*/
HB_FUNC_STATIC( QFILEINFO_NEW1 )
{
  QFileInfo * o = new QFileInfo (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFileInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QFileInfo(const QString & file)
*/
HB_FUNC_STATIC( QFILEINFO_NEW2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QFileInfo * o = new QFileInfo ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFileInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QFileInfo(const QFile & file)
*/
HB_FUNC_STATIC( QFILEINFO_NEW3 )
{
  QFile * par1 = (QFile *) _qt5xhb_itemGetPtr(1);
  QFileInfo * o = new QFileInfo ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFileInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QFileInfo(const QDir & dir, const QString & file)
*/
HB_FUNC_STATIC( QFILEINFO_NEW4 )
{
  QDir * par1 = (QDir *) _qt5xhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QFileInfo * o = new QFileInfo ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFileInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QFileInfo(const QFileInfo & fileinfo)
*/
HB_FUNC_STATIC( QFILEINFO_NEW5 )
{
  QFileInfo * par1 = (QFileInfo *) _qt5xhb_itemGetPtr(1);
  QFileInfo * o = new QFileInfo ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFileInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
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
    HB_FUNC_EXEC( QFILEINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILEINFO_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQFILE(1) )
  {
    HB_FUNC_EXEC( QFILEINFO_NEW3 );
  }
  else if( ISNUMPAR(2) && ISQDIR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QFILEINFO_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQFILEINFO(1) )
  {
    HB_FUNC_EXEC( QFILEINFO_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFILEINFO_DELETE )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QDir absoluteDir() const
*/
HB_FUNC_STATIC( QFILEINFO_ABSOLUTEDIR )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDir * ptr = new QDir( obj->absoluteDir (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDIR", true );
  }
}


/*
QString absoluteFilePath() const
*/
HB_FUNC_STATIC( QFILEINFO_ABSOLUTEFILEPATH )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->absoluteFilePath (  ).toLatin1().data() );
  }
}


/*
QString absolutePath() const
*/
HB_FUNC_STATIC( QFILEINFO_ABSOLUTEPATH )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->absolutePath (  ).toLatin1().data() );
  }
}


/*
QString baseName() const
*/
HB_FUNC_STATIC( QFILEINFO_BASENAME )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->baseName (  ).toLatin1().data() );
  }
}


/*
QString bundleName() const
*/
HB_FUNC_STATIC( QFILEINFO_BUNDLENAME )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->bundleName (  ).toLatin1().data() );
  }
}


/*
bool caching() const
*/
HB_FUNC_STATIC( QFILEINFO_CACHING )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->caching (  ) );
  }
}


/*
QString canonicalFilePath() const
*/
HB_FUNC_STATIC( QFILEINFO_CANONICALFILEPATH )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->canonicalFilePath (  ).toLatin1().data() );
  }
}


/*
QString canonicalPath() const
*/
HB_FUNC_STATIC( QFILEINFO_CANONICALPATH )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->canonicalPath (  ).toLatin1().data() );
  }
}


/*
QString completeBaseName() const
*/
HB_FUNC_STATIC( QFILEINFO_COMPLETEBASENAME )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->completeBaseName (  ).toLatin1().data() );
  }
}


/*
QString completeSuffix() const
*/
HB_FUNC_STATIC( QFILEINFO_COMPLETESUFFIX )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->completeSuffix (  ).toLatin1().data() );
  }
}


/*
QDateTime created() const
*/
HB_FUNC_STATIC( QFILEINFO_CREATED )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->created (  ) );
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
    QDir * ptr = new QDir( obj->dir (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDIR", true );
  }
}


/*
bool exists() const
*/
HB_FUNC_STATIC( QFILEINFO_EXISTS )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->exists (  ) );
  }
}


/*
QString fileName() const
*/
HB_FUNC_STATIC( QFILEINFO_FILENAME )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->fileName (  ).toLatin1().data() );
  }
}


/*
QString filePath() const
*/
HB_FUNC_STATIC( QFILEINFO_FILEPATH )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->filePath (  ).toLatin1().data() );
  }
}


/*
QString group() const
*/
HB_FUNC_STATIC( QFILEINFO_GROUP )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->group (  ).toLatin1().data() );
  }
}


/*
uint groupId() const
*/
HB_FUNC_STATIC( QFILEINFO_GROUPID )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->groupId (  ) );
  }
}


/*
bool isAbsolute() const
*/
HB_FUNC_STATIC( QFILEINFO_ISABSOLUTE )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAbsolute (  ) );
  }
}


/*
bool isBundle() const
*/
HB_FUNC_STATIC( QFILEINFO_ISBUNDLE )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isBundle (  ) );
  }
}


/*
bool isDir() const
*/
HB_FUNC_STATIC( QFILEINFO_ISDIR )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isDir (  ) );
  }
}


/*
bool isExecutable() const
*/
HB_FUNC_STATIC( QFILEINFO_ISEXECUTABLE )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isExecutable (  ) );
  }
}


/*
bool isFile() const
*/
HB_FUNC_STATIC( QFILEINFO_ISFILE )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFile (  ) );
  }
}


/*
bool isHidden() const
*/
HB_FUNC_STATIC( QFILEINFO_ISHIDDEN )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isHidden (  ) );
  }
}


/*
bool isNativePath() const
*/
HB_FUNC_STATIC( QFILEINFO_ISNATIVEPATH )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNativePath (  ) );
  }
}


/*
bool isReadable() const
*/
HB_FUNC_STATIC( QFILEINFO_ISREADABLE )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isReadable (  ) );
  }
}


/*
bool isRelative() const
*/
HB_FUNC_STATIC( QFILEINFO_ISRELATIVE )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isRelative (  ) );
  }
}


/*
bool isRoot() const
*/
HB_FUNC_STATIC( QFILEINFO_ISROOT )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isRoot (  ) );
  }
}


/*
bool isSymLink() const
*/
HB_FUNC_STATIC( QFILEINFO_ISSYMLINK )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSymLink (  ) );
  }
}


/*
bool isWritable() const
*/
HB_FUNC_STATIC( QFILEINFO_ISWRITABLE )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isWritable (  ) );
  }
}


/*
QDateTime lastModified() const
*/
HB_FUNC_STATIC( QFILEINFO_LASTMODIFIED )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->lastModified (  ) );
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
    QDateTime * ptr = new QDateTime( obj->lastRead (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
bool makeAbsolute()
*/
HB_FUNC_STATIC( QFILEINFO_MAKEABSOLUTE )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->makeAbsolute (  ) );
  }
}


/*
QString owner() const
*/
HB_FUNC_STATIC( QFILEINFO_OWNER )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->owner (  ).toLatin1().data() );
  }
}


/*
uint ownerId() const
*/
HB_FUNC_STATIC( QFILEINFO_OWNERID )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->ownerId (  ) );
  }
}


/*
QString path() const
*/
HB_FUNC_STATIC( QFILEINFO_PATH )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->path (  ).toLatin1().data() );
  }
}


/*
bool permission(QFile::Permissions permissions) const
*/
HB_FUNC_STATIC( QFILEINFO_PERMISSION )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->permission (  (QFile::Permissions) par1 ) );
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
    hb_retni( obj->permissions (  ) );
  }
}


/*
void refresh()
*/
HB_FUNC_STATIC( QFILEINFO_REFRESH )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->refresh (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCaching(bool enable)
*/
HB_FUNC_STATIC( QFILEINFO_SETCACHING )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCaching ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFile(const QString & file)
*/
HB_FUNC_STATIC( QFILEINFO_SETFILE1 )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setFile ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFile(const QFile & file)
*/
HB_FUNC_STATIC( QFILEINFO_SETFILE2 )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFile * par1 = (QFile *) _qt5xhb_itemGetPtr(1);
    obj->setFile ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFile(const QDir & dir, const QString & file)
*/
HB_FUNC_STATIC( QFILEINFO_SETFILE3 )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDir * par1 = (QDir *) _qt5xhb_itemGetPtr(1);
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setFile ( *par1, par2 );
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
    HB_FUNC_EXEC( QFILEINFO_SETFILE1 );
  }
  else if( ISNUMPAR(1) && ISQFILE(1) )
  {
    HB_FUNC_EXEC( QFILEINFO_SETFILE2 );
  }
  else if( ISNUMPAR(2) && ISQDIR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QFILEINFO_SETFILE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qint64 size() const
*/
HB_FUNC_STATIC( QFILEINFO_SIZE )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->size (  ) );
  }
}


/*
QString suffix() const
*/
HB_FUNC_STATIC( QFILEINFO_SUFFIX )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->suffix (  ).toLatin1().data() );
  }
}


/*
void swap(QFileInfo & other)
*/
HB_FUNC_STATIC( QFILEINFO_SWAP )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFileInfo * par1 = (QFileInfo *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString symLinkTarget() const
*/
HB_FUNC_STATIC( QFILEINFO_SYMLINKTARGET )
{
  QFileInfo * obj = (QFileInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->symLinkTarget (  ).toLatin1().data() );
  }
}



HB_FUNC_STATIC( QFILEINFO_NEWFROM )
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

HB_FUNC_STATIC( QFILEINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QFILEINFO_NEWFROM );
}

HB_FUNC_STATIC( QFILEINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QFILEINFO_NEWFROM );
}

HB_FUNC_STATIC( QFILEINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QFILEINFO_SETSELFDESTRUCTION )
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
