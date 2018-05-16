%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAtomicInt ( int value = 0 )
$internalConstructor=|new1|int=0

$prototype=QAtomicInt ( const QAtomicInt & other )
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

$prototype=bool deref ()
$method=|bool|deref|

$prototype=int fetchAndAddAcquire ( int valueToAdd )
$method=|int|fetchAndAddAcquire|int

$prototype=int fetchAndAddOrdered ( int valueToAdd )
$method=|int|fetchAndAddOrdered|int

$prototype=int fetchAndAddRelaxed ( int valueToAdd )
$method=|int|fetchAndAddRelaxed|int

$prototype=int fetchAndAddRelease ( int valueToAdd )
$method=|int|fetchAndAddRelease|int

$prototype=int fetchAndStoreAcquire ( int newValue )
$method=|int|fetchAndStoreAcquire|int

$prototype=int fetchAndStoreOrdered ( int newValue )
$method=|int|fetchAndStoreOrdered|int

$prototype=int fetchAndStoreRelaxed ( int newValue )
$method=|int|fetchAndStoreRelaxed|int

$prototype=int fetchAndStoreRelease ( int newValue )
$method=|int|fetchAndStoreRelease|int

$prototype=bool ref ()
$method=|bool|ref|

$prototype=bool testAndSetAcquire ( int expectedValue, int newValue )
$method=|bool|testAndSetAcquire|int,int

$prototype=bool testAndSetOrdered ( int expectedValue, int newValue )
$method=|bool|testAndSetOrdered|int,int

$prototype=bool testAndSetRelaxed ( int expectedValue, int newValue )
$method=|bool|testAndSetRelaxed|int,int

$prototype=bool testAndSetRelease ( int expectedValue, int newValue )
$method=|bool|testAndSetRelease|int,int

$prototype=static bool isFetchAndAddNative ()
$staticMethod=|bool|isFetchAndAddNative|

$prototype=static bool isFetchAndAddWaitFree ()
$staticMethod=|bool|isFetchAndAddWaitFree|

$prototype=static bool isFetchAndStoreNative ()
$staticMethod=|bool|isFetchAndStoreNative|

$prototype=static bool isFetchAndStoreWaitFree ()
$staticMethod=|bool|isFetchAndStoreWaitFree|

$prototype=static bool isReferenceCountingNative ()
$staticMethod=|bool|isReferenceCountingNative|

$prototype=static bool isReferenceCountingWaitFree ()
$staticMethod=|bool|isReferenceCountingWaitFree|

$prototype=static bool isTestAndSetNative ()
$staticMethod=|bool|isTestAndSetNative|

$prototype=static bool isTestAndSetWaitFree ()
$staticMethod=|bool|isTestAndSetWaitFree|

$extraMethods

#pragma ENDDUMP
