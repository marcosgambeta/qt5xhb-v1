$header

#include "hbclass.ch"

CLASS QSharedMemory INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setKey
   METHOD key
   METHOD setNativeKey
   METHOD nativeKey
   METHOD create
   METHOD size
   METHOD attach
   METHOD isAttached
   METHOD detach
   METHOD data
   METHOD lock
   METHOD unlock
   METHOD error
   METHOD errorString

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSharedMemory(QObject *parent = 0)
*/
$internalConstructor=|new1|QObject *=0

/*
QSharedMemory(const QString &key, QObject *parent = 0)
*/
$internalConstructor=|new2|const QString &,QObject *=0

//[1]QSharedMemory(QObject *parent = 0)
//[2]QSharedMemory(const QString &key, QObject *parent = 0)

HB_FUNC_STATIC( QSHAREDMEMORY_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QSharedMemory_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    QSharedMemory_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void setKey(const QString &key)
*/
$method=|void|setKey|const QString &

/*
QString key() const
*/
$method=|QString|key|

/*
void setNativeKey(const QString &key)
*/
$method=|void|setNativeKey|const QString &

/*
QString nativeKey() const
*/
$method=|QString|nativeKey|

/*
bool create(int size, AccessMode mode = ReadWrite)
*/
$method=|bool|create|int,QSharedMemory::AccessMode=QSharedMemory::ReadWrite

/*
int size() const
*/
$method=|int|size|

/*
bool attach(AccessMode mode = ReadWrite)
*/
$method=|bool|attach|QSharedMemory::AccessMode=QSharedMemory::ReadWrite

/*
bool isAttached() const
*/
$method=|bool|isAttached|

/*
bool detach()
*/
$method=|bool|detach|

/*
void *data()
*/
$method=|void *|data|

/*
bool lock()
*/
$method=|bool|lock|

/*
bool unlock()
*/
$method=|bool|unlock|

/*
SharedMemoryError error() const
*/
$method=|QSharedMemory::SharedMemoryError|error|

/*
QString errorString() const
*/
$method=|QString|errorString|

#pragma ENDDUMP
