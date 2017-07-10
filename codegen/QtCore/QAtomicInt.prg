$header

#include "hbclass.ch"

CLASS QAtomicInt

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD deref
   METHOD fetchAndAddAcquire
   METHOD fetchAndAddOrdered
   METHOD fetchAndAddRelaxed
   METHOD fetchAndAddRelease
   METHOD fetchAndStoreAcquire
   METHOD fetchAndStoreOrdered
   METHOD fetchAndStoreRelaxed
   METHOD fetchAndStoreRelease
   METHOD ref
   METHOD testAndSetAcquire
   METHOD testAndSetOrdered
   METHOD testAndSetRelaxed
   METHOD testAndSetRelease
   METHOD isFetchAndAddNative
   METHOD isFetchAndAddWaitFree
   METHOD isFetchAndStoreNative
   METHOD isFetchAndStoreWaitFree
   METHOD isReferenceCountingNative
   METHOD isReferenceCountingWaitFree
   METHOD isTestAndSetNative
   METHOD isTestAndSetWaitFree

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
QAtomicInt ( int value = 0 )
*/
$internalConstructor=|new1|int=0

/*
QAtomicInt ( const QAtomicInt & other )
*/
$internalConstructor=|new2|const QAtomicInt &

//[1]QAtomicInt(int value = 0)
//[2]QAtomicInt(const QAtomicInt & other)

HB_FUNC_STATIC( QATOMICINT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QAtomicInt_new1();
  }
  else if( ISNUMPAR(1) && ISQATOMICINT(1) )
  {
    QAtomicInt_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool deref ()
*/
$method=|bool|deref|

/*
int fetchAndAddAcquire ( int valueToAdd )
*/
$method=|int|fetchAndAddAcquire|int

/*
int fetchAndAddOrdered ( int valueToAdd )
*/
$method=|int|fetchAndAddOrdered|int

/*
int fetchAndAddRelaxed ( int valueToAdd )
*/
$method=|int|fetchAndAddRelaxed|int

/*
int fetchAndAddRelease ( int valueToAdd )
*/
$method=|int|fetchAndAddRelease|int

/*
int fetchAndStoreAcquire ( int newValue )
*/
$method=|int|fetchAndStoreAcquire|int

/*
int fetchAndStoreOrdered ( int newValue )
*/
$method=|int|fetchAndStoreOrdered|int

/*
int fetchAndStoreRelaxed ( int newValue )
*/
$method=|int|fetchAndStoreRelaxed|int

/*
int fetchAndStoreRelease ( int newValue )
*/
$method=|int|fetchAndStoreRelease|int

/*
bool ref ()
*/
$method=|bool|ref|

/*
bool testAndSetAcquire ( int expectedValue, int newValue )
*/
$method=|bool|testAndSetAcquire|int,int

/*
bool testAndSetOrdered ( int expectedValue, int newValue )
*/
$method=|bool|testAndSetOrdered|int,int

/*
bool testAndSetRelaxed ( int expectedValue, int newValue )
*/
$method=|bool|testAndSetRelaxed|int,int

/*
bool testAndSetRelease ( int expectedValue, int newValue )
*/
$method=|bool|testAndSetRelease|int,int

/*
static bool isFetchAndAddNative ()
*/
$staticMethod=|bool|isFetchAndAddNative|

/*
static bool isFetchAndAddWaitFree ()
*/
$staticMethod=|bool|isFetchAndAddWaitFree|

/*
static bool isFetchAndStoreNative ()
*/
$staticMethod=|bool|isFetchAndStoreNative|

/*
static bool isFetchAndStoreWaitFree ()
*/
$staticMethod=|bool|isFetchAndStoreWaitFree|

/*
static bool isReferenceCountingNative ()
*/
$staticMethod=|bool|isReferenceCountingNative|

/*
static bool isReferenceCountingWaitFree ()
*/
$staticMethod=|bool|isReferenceCountingWaitFree|

/*
static bool isTestAndSetNative ()
*/
$staticMethod=|bool|isTestAndSetNative|

/*
static bool isTestAndSetWaitFree ()
*/
$staticMethod=|bool|isTestAndSetWaitFree|

$extraMethods

#pragma ENDDUMP
