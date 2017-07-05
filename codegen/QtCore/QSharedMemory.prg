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
void QSharedMemory_new1 ()
{
  QSharedMemory * o = new QSharedMemory ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QSharedMemory(const QString &key, QObject *parent = 0)
*/
void QSharedMemory_new2 ()
{
  QSharedMemory * o = new QSharedMemory ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

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
HB_FUNC_STATIC( QSHAREDMEMORY_SETKEY )
{
  QSharedMemory * obj = (QSharedMemory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setKey ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QSHAREDMEMORY_CREATE )
{
  QSharedMemory * obj = (QSharedMemory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) QSharedMemory::ReadWrite : hb_parni(2);
      RBOOL( obj->create ( PINT(1), (QSharedMemory::AccessMode) par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int size() const
*/
HB_FUNC_STATIC( QSHAREDMEMORY_SIZE )
{
  QSharedMemory * obj = (QSharedMemory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->size () );
  }
}

/*
bool attach(AccessMode mode = ReadWrite)
*/
HB_FUNC_STATIC( QSHAREDMEMORY_ATTACH )
{
  QSharedMemory * obj = (QSharedMemory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QSharedMemory::ReadWrite : hb_parni(1);
      RBOOL( obj->attach ( (QSharedMemory::AccessMode) par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

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
HB_FUNC_STATIC( QSHAREDMEMORY_DATA )
{
  QSharedMemory * obj = (QSharedMemory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retptr( (void *) obj->data () );
  }
}

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
HB_FUNC_STATIC( QSHAREDMEMORY_ERROR )
{
  QSharedMemory * obj = (QSharedMemory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->error () );
  }
}

/*
QString errorString() const
*/
$method=|QString|errorString|

#pragma ENDDUMP
