/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST UCHAR
REQUEST QBYTEARRAY
#endif

CLASS QFile INHERIT QFileDevice

   DATA class_id INIT Class_Id_QFile
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD copy1
   METHOD copy2
   METHOD copy
   METHOD error
   METHOD exists1
   METHOD exists2
   METHOD exists
   METHOD fileName
   METHOD flush
   METHOD handle
   METHOD link1
   METHOD link2
   METHOD link
   METHOD map
   METHOD open1
   METHOD open2
   METHOD open3
   METHOD open
   METHOD permissions1
   METHOD permissions2
   METHOD permissions
   METHOD remove1
   METHOD remove2
   METHOD remove
   METHOD rename1
   METHOD rename2
   METHOD rename
   METHOD resize1
   METHOD resize2
   METHOD resize
   METHOD setFileName
   METHOD setPermissions1
   METHOD setPermissions2
   METHOD setPermissions
   METHOD symLinkTarget1
   METHOD symLinkTarget2
   METHOD symLinkTarget
   METHOD unmap
   METHOD unsetError
   METHOD atEnd
   METHOD close
   METHOD isSequential
   METHOD pos
   METHOD seek
   METHOD size
   METHOD decodeName1
   METHOD decodeName2
   METHOD decodeName
   METHOD encodeName
   METHOD readLink1
   METHOD readLink2
   METHOD readLink
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFile
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QFile>
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
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QFile>
#endif
#endif

/*
QFile()
*/
HB_FUNC_STATIC( QFILE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QFile * o = new QFile (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFile *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QFile(const QString &name)
*/
HB_FUNC_STATIC( QFILE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QFile * o = new QFile ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFile *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
explicit QFile(QObject *parent)
*/
HB_FUNC_STATIC( QFILE_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QFile * o = new QFile ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFile *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QFile(const QString &name, QObject *parent)
*/
HB_FUNC_STATIC( QFILE_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QObject * par2 = (QObject *) _qtxhb_itemGetPtr(2);
  QFile * o = new QFile ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFile *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QFile()
//[2]QFile(const QString &name)
//[3]explicit QFile(QObject *parent)
//[4]QFile(const QString &name, QObject *parent)

HB_FUNC_STATIC( QFILE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QFILE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QFILE_NEW3 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    HB_FUNC_EXEC( QFILE_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFILE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool copy ( const QString & newName )
*/
HB_FUNC_STATIC( QFILE_COPY1 )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->copy ( par1 ) );
  }
}

/*
static bool copy ( const QString & fileName, const QString & newName )
*/
HB_FUNC_STATIC( QFILE_COPY2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = QLatin1String( hb_parc(2) );
  hb_retl( QFile::copy ( par1, par2 ) );
}


//[1]bool copy ( const QString & newName )
//[2]bool copy ( const QString & fileName, const QString & newName )

HB_FUNC_STATIC( QFILE_COPY )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_COPY1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QFILE_COPY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
FileError error () const
*/
HB_FUNC_STATIC( QFILE_ERROR )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error (  ) );
  }
}


/*
bool exists () const
*/
HB_FUNC_STATIC( QFILE_EXISTS1 )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->exists (  ) );
  }
}

/*
static bool exists ( const QString & fileName )
*/
HB_FUNC_STATIC( QFILE_EXISTS2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  hb_retl( QFile::exists ( par1 ) );
}


//[1]bool exists () const
//[2]bool exists ( const QString & fileName )

HB_FUNC_STATIC( QFILE_EXISTS )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QFILE_EXISTS1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_EXISTS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString fileName () const
*/
HB_FUNC_STATIC( QFILE_FILENAME )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->fileName (  ).toLatin1().data() );
  }
}


/*
bool flush ()
*/
HB_FUNC_STATIC( QFILE_FLUSH )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->flush (  ) );
  }
}


/*
int handle () const
*/
HB_FUNC_STATIC( QFILE_HANDLE )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->handle (  ) );
  }
}


/*
bool link ( const QString & linkName )
*/
HB_FUNC_STATIC( QFILE_LINK1 )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->link ( par1 ) );
  }
}

/*
static bool link ( const QString & fileName, const QString & linkName )
*/
HB_FUNC_STATIC( QFILE_LINK2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = QLatin1String( hb_parc(2) );
  hb_retl( QFile::link ( par1, par2 ) );
}


//[1]bool link ( const QString & linkName )
//[2]bool link ( const QString & fileName, const QString & linkName )

HB_FUNC_STATIC( QFILE_LINK )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_LINK1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QFILE_LINK2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
uchar * map ( qint64 offset, qint64 size, MemoryMapFlags flags = NoOptions )
*/
HB_FUNC_STATIC( QFILE_MAP )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par3 = ISNIL(3)? (int) QFile::NoOptions : hb_parni(3);
    uchar * ptr = obj->map ( (qint64) hb_parni(1), (qint64) hb_parni(2),  (QFile::MemoryMapFlags) par3 );
    _qt4xhb_createReturnClass ( ptr, "UCHAR" );
  }
}


/*
bool open(OpenMode flags)
*/
HB_FUNC_STATIC( QFILE_OPEN1 )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->open (  (QFile::OpenMode) par1 ) );
  }
}

/*
bool open(FILE *f, OpenMode ioFlags, FileHandleFlags handleFlags=DontCloseHandle)
*/
HB_FUNC_STATIC( QFILE_OPEN2 )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    FILE * par1 = (FILE *) _qtxhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    int par3 = ISNIL(3)? (int) QFile::DontCloseHandle : hb_parni(3);
    hb_retl( obj->open ( par1,  (QFile::OpenMode) par2,  (QFile::FileHandleFlags) par3 ) );
  }
}

/*
bool open(int fd, OpenMode ioFlags, FileHandleFlags handleFlags=DontCloseHandle)
*/
HB_FUNC_STATIC( QFILE_OPEN3 )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    int par3 = ISNIL(3)? (int) QFile::DontCloseHandle : hb_parni(3);
    hb_retl( obj->open ( (int) hb_parni(1),  (QFile::OpenMode) par2,  (QFile::FileHandleFlags) par3 ) );
  }
}


//[1]bool open(OpenMode flags)
//[2]bool open(FILE *f, OpenMode ioFlags, FileHandleFlags handleFlags=DontCloseHandle)
//[3]bool open(int fd, OpenMode ioFlags, FileHandleFlags handleFlags=DontCloseHandle)

HB_FUNC_STATIC( QFILE_OPEN )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QFILE_OPEN1 );
  }
  else if( ISBETWEEN(2,3) && ISPOINTER(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QFILE_OPEN2 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QFILE_OPEN3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Permissions permissions () const
*/
HB_FUNC_STATIC( QFILE_PERMISSIONS1 )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->permissions (  ) );
  }
}

/*
static Permissions permissions ( const QString & fileName )
*/
HB_FUNC_STATIC( QFILE_PERMISSIONS2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  hb_retni( QFile::permissions ( par1 ) );
}


//[1]Permissions permissions () const
//[2]Permissions permissions ( const QString & fileName )

HB_FUNC_STATIC( QFILE_PERMISSIONS )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QFILE_PERMISSIONS1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QFILE_PERMISSIONS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool remove ()
*/
HB_FUNC_STATIC( QFILE_REMOVE1 )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->remove (  ) );
  }
}

/*
static bool remove ( const QString & fileName )
*/
HB_FUNC_STATIC( QFILE_REMOVE2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  hb_retl( QFile::remove ( par1 ) );
}


//[1]bool remove ()
//[2]bool remove ( const QString & fileName )

HB_FUNC_STATIC( QFILE_REMOVE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QFILE_REMOVE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_REMOVE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool rename ( const QString & newName )
*/
HB_FUNC_STATIC( QFILE_RENAME1 )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->rename ( par1 ) );
  }
}

/*
static bool rename ( const QString & oldName, const QString & newName )
*/
HB_FUNC_STATIC( QFILE_RENAME2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = QLatin1String( hb_parc(2) );
  hb_retl( QFile::rename ( par1, par2 ) );
}


//[1]bool rename ( const QString & newName )
//[2]bool rename ( const QString & oldName, const QString & newName )

HB_FUNC_STATIC( QFILE_RENAME )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_RENAME1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QFILE_RENAME2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool resize ( qint64 sz )
*/
HB_FUNC_STATIC( QFILE_RESIZE1 )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->resize ( (qint64) hb_parni(1) ) );
  }
}

/*
static bool resize ( const QString & fileName, qint64 sz )
*/
HB_FUNC_STATIC( QFILE_RESIZE2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  hb_retl( QFile::resize ( par1, (qint64) hb_parni(2) ) );
}


//[1]bool resize ( qint64 sz )
//[2]bool resize ( const QString & fileName, qint64 sz )

HB_FUNC_STATIC( QFILE_RESIZE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QFILE_RESIZE1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QFILE_RESIZE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setFileName ( const QString & name )
*/
HB_FUNC_STATIC( QFILE_SETFILENAME )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setFileName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool setPermissions ( Permissions permissions )
*/
HB_FUNC_STATIC( QFILE_SETPERMISSIONS1 )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->setPermissions (  (QFile::Permissions) par1 ) );
  }
}

/*
static bool setPermissions ( const QString & fileName, Permissions permissions )
*/
HB_FUNC_STATIC( QFILE_SETPERMISSIONS2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  int par2 = hb_parni(2);
  hb_retl( QFile::setPermissions ( par1,  (QFile::Permissions) par2 ) );
}


//[1]bool setPermissions ( Permissions permissions )
//[2]bool setPermissions ( const QString & fileName, Permissions permissions )

HB_FUNC_STATIC( QFILE_SETPERMISSIONS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QFILE_SETPERMISSIONS1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QFILE_SETPERMISSIONS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString symLinkTarget () const
*/
HB_FUNC_STATIC( QFILE_SYMLINKTARGET1 )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->symLinkTarget (  ).toLatin1().data() );
  }
}

/*
static QString symLinkTarget ( const QString & fileName )
*/
HB_FUNC_STATIC( QFILE_SYMLINKTARGET2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  hb_retc( (const char *) QFile::symLinkTarget ( par1 ).toLatin1().data() );
}


//[1]QString symLinkTarget () const
//[2]QString symLinkTarget ( const QString & fileName )

HB_FUNC_STATIC( QFILE_SYMLINKTARGET )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QFILE_SYMLINKTARGET1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_SYMLINKTARGET2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool unmap ( uchar * address )
*/
HB_FUNC_STATIC( QFILE_UNMAP )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    uchar * par1 = (uchar *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->unmap ( par1 ) );
  }
}


/*
void unsetError ()
*/
HB_FUNC_STATIC( QFILE_UNSETERROR )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->unsetError (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool atEnd () const
*/
HB_FUNC_STATIC( QFILE_ATEND )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->atEnd (  ) );
  }
}


/*
virtual void close ()
*/
HB_FUNC_STATIC( QFILE_CLOSE )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->close (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isSequential () const
*/
HB_FUNC_STATIC( QFILE_ISSEQUENTIAL )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSequential (  ) );
  }
}


/*
virtual qint64 pos () const
*/
HB_FUNC_STATIC( QFILE_POS )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->pos (  ) );
  }
}


/*
virtual bool seek ( qint64 pos )
*/
HB_FUNC_STATIC( QFILE_SEEK )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->seek ( (qint64) hb_parni(1) ) );
  }
}


/*
qint64 size () const
*/
HB_FUNC_STATIC( QFILE_SIZE )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->size (  ) );
  }
}



/*
static QString decodeName ( const QByteArray & localFileName )
*/
HB_FUNC_STATIC( QFILE_DECODENAME1 )
{
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  hb_retc( (const char *) QFile::decodeName ( *par1 ).toLatin1().data() );
}

/*
static QString decodeName ( const char * localFileName )
*/
HB_FUNC_STATIC( QFILE_DECODENAME2 )
{
  const char * par1 = hb_parc(1);
  hb_retc( (const char *) QFile::decodeName (  (const char *) par1 ).toLatin1().data() );
}


//[1]QString decodeName ( const QByteArray & localFileName )
//[2]QString decodeName ( const char * localFileName )

HB_FUNC_STATIC( QFILE_DECODENAME )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QFILE_DECODENAME1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_DECODENAME2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QByteArray encodeName ( const QString & fileName )
*/
HB_FUNC_STATIC( QFILE_ENCODENAME )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QByteArray * ptr = new QByteArray( QFile::encodeName ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}




/*
QString readLink() const
*/
HB_FUNC_STATIC( QFILE_READLINK1 )
{
  QFile * obj = (QFile *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->readLink (  ).toLatin1().data() );
  }
}

/*
static QString readLink(const QString &fileName)
*/
HB_FUNC_STATIC( QFILE_READLINK2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  hb_retc( (const char *) QFile::readLink ( par1 ).toLatin1().data() );
}


//[1]QString readLink() const
//[2]static QString readLink(const QString &fileName)

HB_FUNC_STATIC( QFILE_READLINK )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QFILE_READLINK1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_READLINK2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


#pragma ENDDUMP
