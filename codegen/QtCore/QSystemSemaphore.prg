$header

#include "hbclass.ch"

CLASS QSystemSemaphore

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setKey
   METHOD key
   METHOD acquire
   METHOD release
   METHOD error
   METHOD errorString

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

/*
QSystemSemaphore(const QString &key, int initialValue = 0, AccessMode mode = Open)
*/
HB_FUNC_STATIC( QSYSTEMSEMAPHORE_NEW )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    int par2 = ISNIL(2)? 0 : hb_parni(2);
    int par3 = ISNIL(3)? (int) QSystemSemaphore::Open : hb_parni(3);
    QSystemSemaphore * o = new QSystemSemaphore ( PQSTRING(1), par2, (QSystemSemaphore::AccessMode) par3 );
    _qt5xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void setKey(const QString &key, int initialValue = 0, AccessMode mode = Open)
*/
HB_FUNC_STATIC( QSYSTEMSEMAPHORE_SETKEY )
{
  QSystemSemaphore * obj = (QSystemSemaphore *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) )
    {
      int par3 = ISNIL(3)? (int) QSystemSemaphore::Open : hb_parni(3);
      obj->setKey ( PQSTRING(1), OPINT(2,0), (QSystemSemaphore::AccessMode) par3 );
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
bool acquire()
*/
$method=|bool|acquire|

/*
bool release(int n = 1)
*/
$method=|bool|release|int=1

/*
SystemSemaphoreError error() const
*/
HB_FUNC_STATIC( QSYSTEMSEMAPHORE_ERROR )
{
  QSystemSemaphore * obj = (QSystemSemaphore *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->error () );
  }
}

/*
QString errorString() const
*/
$method=|QString|errorString|

$extraMethods

#pragma ENDDUMP
