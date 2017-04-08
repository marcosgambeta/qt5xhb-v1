/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST UCHAR
REQUEST QBYTEARRAY
#endif

CLASS QFile INHERIT QFileDevice

   DATA class_id INIT Class_Id_QFile
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD copy
   METHOD error
   METHOD exists
   METHOD fileName
   METHOD flush
   METHOD handle
   METHOD link
   METHOD map
   METHOD open
   METHOD permissions
   METHOD remove
   METHOD rename
   METHOD resize
   METHOD setFileName
   METHOD setPermissions
   METHOD symLinkTarget
   METHOD unmap
   METHOD unsetError
   METHOD atEnd
   METHOD close
   METHOD isSequential
   METHOD pos
   METHOD seek
   METHOD size
   METHOD decodeName
   METHOD encodeName
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
#include <QFile>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QFile>
#endif

/*
QFile()
*/
void QFile_new1 ()
{
  QFile * o = new QFile (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFile *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QFile(const QString &name)
*/
void QFile_new2 ()
{
  QString par1 = QLatin1String( hb_parc(1) );
  QFile * o = new QFile ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFile *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
explicit QFile(QObject *parent)
*/
void QFile_new3 ()
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  QFile * o = new QFile ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFile *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QFile(const QString &name, QObject *parent)
*/
void QFile_new4 ()
{
  QString par1 = QLatin1String( hb_parc(1) );
  QObject * par2 = (QObject *) _qt5xhb_itemGetPtr(2);
  QFile * o = new QFile ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFile *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

//[1]QFile()
//[2]QFile(const QString &name)
//[3]explicit QFile(QObject *parent)
//[4]QFile(const QString &name, QObject *parent)

HB_FUNC_STATIC( QFILE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QFile_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_new2();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QFile_new3();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QFile_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFILE_DELETE )
{
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
}

/*
bool copy ( const QString & newName )
*/
void QFile_copy1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->copy ( par1 ) );
  }
}

/*
static bool copy ( const QString & fileName, const QString & newName )
*/
void QFile_copy2 ()
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
    QFile_copy1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QFile_copy2();
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
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->error (  ) );
  }
}

/*
bool exists () const
*/
void QFile_exists1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->exists (  ) );
  }
}

/*
static bool exists ( const QString & fileName )
*/
void QFile_exists2 ()
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
    QFile_exists1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_exists2();
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
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->handle (  ) );
  }
}

/*
bool link ( const QString & linkName )
*/
void QFile_link1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->link ( par1 ) );
  }
}

/*
static bool link ( const QString & fileName, const QString & linkName )
*/
void QFile_link2 ()
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
    QFile_link1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QFile_link2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
uchar * map ( qint64 offset, qint64 size, MemoryMapFlags flags = NoOptions )
*/
HB_FUNC_STATIC( QFILE_MAP ) // TODO: corrigir retorno do metodo
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
    {
      int par3 = ISNIL(3)? (int) QFile::NoOptions : hb_parni(3);
      uchar * ptr = obj->map ( (qint64) hb_parni(1), (qint64) hb_parni(2),  (QFile::MemoryMapFlags) par3 );
      _qt5xhb_createReturnClass ( ptr, "UCHAR" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool open(OpenMode flags)
*/
void QFile_open1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->open (  (QFile::OpenMode) par1 ) );
  }
}

/*
bool open(FILE *f, OpenMode ioFlags, FileHandleFlags handleFlags=DontCloseHandle)
*/
void QFile_open2 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    FILE * par1 = (FILE *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    int par3 = ISNIL(3)? (int) QFile::DontCloseHandle : hb_parni(3);
    hb_retl( obj->open ( par1,  (QFile::OpenMode) par2,  (QFile::FileHandleFlags) par3 ) );
  }
}

/*
bool open(int fd, OpenMode ioFlags, FileHandleFlags handleFlags=DontCloseHandle)
*/
void QFile_open3 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

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
    QFile_open1();
  }
  else if( ISBETWEEN(2,3) && ISPOINTER(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QFile_open2();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QFile_open3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Permissions permissions () const
*/
void QFile_permissions1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->permissions (  ) );
  }
}

/*
static Permissions permissions ( const QString & fileName )
*/
void QFile_permissions2 ()
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
    QFile_permissions1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QFile_permissions2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool remove ()
*/
void QFile_remove1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->remove (  ) );
  }
}

/*
static bool remove ( const QString & fileName )
*/
void QFile_remove2 ()
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
    QFile_remove1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_remove2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool rename ( const QString & newName )
*/
void QFile_rename1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->rename ( par1 ) );
  }
}

/*
static bool rename ( const QString & oldName, const QString & newName )
*/
void QFile_rename2 ()
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
    QFile_rename1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QFile_rename2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool resize ( qint64 sz )
*/
void QFile_resize1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->resize ( (qint64) hb_parni(1) ) );
  }
}

/*
static bool resize ( const QString & fileName, qint64 sz )
*/
void QFile_resize2 ()
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
    QFile_resize1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QFile_resize2();
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
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      obj->setFileName ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool setPermissions ( Permissions permissions )
*/
void QFile_setPermissions1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->setPermissions (  (QFile::Permissions) par1 ) );
  }
}

/*
static bool setPermissions ( const QString & fileName, Permissions permissions )
*/
void QFile_setPermissions2 ()
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
    QFile_setPermissions1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QFile_setPermissions2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString symLinkTarget () const
*/
void QFile_symLinkTarget1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->symLinkTarget (  ).toLatin1().data() );
  }
}

/*
static QString symLinkTarget ( const QString & fileName )
*/
void QFile_symLinkTarget2 ()
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
    QFile_symLinkTarget1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_symLinkTarget2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool unmap ( uchar * address )
*/
HB_FUNC_STATIC( QFILE_UNMAP ) // TODO: corrigir implementacao do metodo
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    uchar * par1 = (uchar *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->unmap ( par1 ) );
  }
}

/*
void unsetError ()
*/
HB_FUNC_STATIC( QFILE_UNSETERROR )
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retl( obj->seek ( (qint64) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qint64 size () const
*/
HB_FUNC_STATIC( QFILE_SIZE )
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->size (  ) );
  }
}

/*
static QString decodeName ( const QByteArray & localFileName )
*/
void QFile_decodeName1 ()
{
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  hb_retc( (const char *) QFile::decodeName ( *par1 ).toLatin1().data() );
}

/*
static QString decodeName ( const char * localFileName )
*/
void QFile_decodeName2 ()
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
    QFile_decodeName1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_decodeName2();
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
  if( ISCHAR(1) )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QByteArray * ptr = new QByteArray( QFile::encodeName ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString readLink() const
*/
void QFile_readLink1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->readLink (  ).toLatin1().data() );
  }
}

/*
static QString readLink(const QString &fileName)
*/
void QFile_readLink2 ()
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
    QFile_readLink1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_readLink2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
