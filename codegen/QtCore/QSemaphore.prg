$header

#include "hbclass.ch"

CLASS QSemaphore

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD acquire
   METHOD tryAcquire
   METHOD release
   METHOD available

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
QSemaphore(int n = 0)
*/
HB_FUNC_STATIC( QSEMAPHORE_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    int par1 = ISNIL(1)? 0 : hb_parni(1);
    QSemaphore * o = new QSemaphore ( par1 );
    _qt5xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void acquire(int n = 1)
*/
$method=|void|acquire|int=1

/*
bool tryAcquire(int n = 1)
*/
void QSemaphore_tryAcquire1 ()
{
  QSemaphore * obj = (QSemaphore *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->tryAcquire ( OPINT(1,1) ) );
  }
}

/*
bool tryAcquire(int n, int timeout)
*/
void QSemaphore_tryAcquire2 ()
{
  QSemaphore * obj = (QSemaphore *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->tryAcquire ( PINT(1), PINT(2) ) );
  }
}

//[1]bool tryAcquire(int n = 1)
//[2]bool tryAcquire(int n, int timeout)

HB_FUNC_STATIC( QSEMAPHORE_TRYACQUIRE )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QSemaphore_tryAcquire1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QSemaphore_tryAcquire2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void release(int n = 1)
*/
$method=|void|release|int=1

/*
int available() const
*/
$method=|int|available|

$extraMethods

#pragma ENDDUMP
