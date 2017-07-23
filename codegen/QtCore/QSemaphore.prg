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
$constructor=|new|int=0

$deleteMethod

/*
void acquire(int n = 1)
*/
$method=|void|acquire|int=1

/*
bool tryAcquire(int n = 1)
*/
$internalMethod=|bool|tryAcquire,tryAcquire1|int=1

/*
bool tryAcquire(int n, int timeout)
*/
$internalMethod=|bool|tryAcquire,tryAcquire2|int,int

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
