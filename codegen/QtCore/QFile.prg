$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST UCHAR
REQUEST QBYTEARRAY
#endif

CLASS QFile INHERIT QFileDevice

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

$destructor

#pragma BEGINDUMP

$includes

/*
QFile()
*/
$internalConstructor=|new1|

/*
QFile(const QString &name)
*/
$internalConstructor=|new2|const QString &

/*
explicit QFile(QObject *parent)
*/
$internalConstructor=|new3|QObject *

/*
QFile(const QString &name, QObject *parent)
*/
$internalConstructor=|new4|const QString &,QObject *

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

$deleteMethod

/*
bool copy ( const QString & newName )
*/
$internalMethod=|bool|copy,copy1|const QString &

/*
static bool copy ( const QString & fileName, const QString & newName )
*/
$staticInternalMethod=|bool|copy,copy2|const QString &,const QString &

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
$method=|QFileDevice::FileError|error|

/*
bool exists () const
*/
$internalMethod=|bool|exists,exists1|

/*
static bool exists ( const QString & fileName )
*/
$staticInternalMethod=|bool|exists,exists2|const QString &

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
$method=|QString|fileName|

/*
bool flush ()
*/
$method=|bool|flush|

/*
int handle () const
*/
$method=|int|handle|

/*
bool link ( const QString & linkName )
*/
$internalMethod=|bool|link,link1|const QString &

/*
static bool link ( const QString & fileName, const QString & linkName )
*/
$staticInternalMethod=|bool|link,link2|const QString &,const QString &

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
    if( ISNUM(1) && ISNUM(2) && ISOPTNUM(3) )
    {
      int par3 = ISNIL(3)? (int) QFile::NoOptions : hb_parni(3);
      uchar * ptr = obj->map ( PQINT64(1), PQINT64(2), (QFile::MemoryMapFlags) par3 );
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
$internalMethod=|bool|open,open1|QFile::OpenMode

/*
bool open(FILE *f, OpenMode ioFlags, FileHandleFlags handleFlags=DontCloseHandle)
*/
$internalMethod=|bool|open,open2|FILE *,QFile::OpenMode,QFile::FileHandleFlags=QFile::DontCloseHandle

/*
bool open(int fd, OpenMode ioFlags, FileHandleFlags handleFlags=DontCloseHandle)
*/
$internalMethod=|bool|open,open3|int,QFile::OpenMode,QFile::FileHandleFlags=QFile::DontCloseHandle

//[1]bool open(OpenMode flags)
//[2]bool open(FILE *f, OpenMode ioFlags, FileHandleFlags handleFlags=DontCloseHandle)
//[3]bool open(int fd, OpenMode ioFlags, FileHandleFlags handleFlags=DontCloseHandle)

HB_FUNC_STATIC( QFILE_OPEN )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QFile_open1();
  }
  else if( ISBETWEEN(2,3) && ISPOINTER(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QFile_open2();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) )
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
$internalMethod=|QFile::Permissions|permissions,permissions1|

/*
static Permissions permissions ( const QString & fileName )
*/
$staticInternalMethod=|QFile::Permissions|permissions,permissions2|const QString &

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
$internalMethod=|bool|remove,remove1|

/*
static bool remove ( const QString & fileName )
*/
$staticInternalMethod=|bool|remove,remove2|const QString &

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
$internalMethod=|bool|rename,rename1|const QString &

/*
static bool rename ( const QString & oldName, const QString & newName )
*/
$staticInternalMethod=|bool|rename,rename2|const QString &,const QString &

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
$internalMethod=|bool|resize,resize1|qint64

/*
static bool resize ( const QString & fileName, qint64 sz )
*/
$staticInternalMethod=|bool|resize,resize2|const QString &,qint64

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
$method=|void|setFileName|const QString &

/*
bool setPermissions ( Permissions permissions )
*/
$internalMethod=|bool|setPermissions,setPermissions1|QFile::Permissions

/*
static bool setPermissions ( const QString & fileName, Permissions permissions )
*/
$staticInternalMethod=|bool|setPermissions,setPermissions2|const QString &,QFile::Permissions

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
$internalMethod=|QString|symLinkTarget,symLinkTarget1|

/*
static QString symLinkTarget ( const QString & fileName )
*/
$staticInternalMethod=|QString|symLinkTarget,symLinkTarget2|const QString &

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
    RBOOL( obj->unmap ( par1 ) );
  }
}

/*
void unsetError ()
*/
$method=|void|unsetError|

/*
virtual bool atEnd () const
*/
$method=|bool|atEnd|

/*
virtual void close ()
*/
$method=|void|close|

/*
virtual bool isSequential () const
*/
$method=|bool|isSequential|

/*
virtual qint64 pos () const
*/
$method=|qint64|pos|

/*
virtual bool seek ( qint64 pos )
*/
$method=|bool|seek|qint64

/*
qint64 size () const
*/
$method=|qint64|size|

/*
static QString decodeName ( const QByteArray & localFileName )
*/
$staticInternalMethod=|QString|decodeName,decodeName1|const QByteArray &

/*
static QString decodeName ( const char * localFileName )
*/
$staticInternalMethod=|QString|decodeName,decodeName2|const char *

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
$staticMethod=|QByteArray|encodeName|const QString &

/*
QString readLink() const
*/
$internalMethod=|QString|readLink,readLink1|

/*
static QString readLink(const QString &fileName)
*/
$staticInternalMethod=|QString|readLink,readLink2|const QString &

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
