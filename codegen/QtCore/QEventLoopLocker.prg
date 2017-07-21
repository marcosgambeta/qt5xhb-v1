$header

#include "hbclass.ch"

CLASS QEventLoopLocker

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

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
QEventLoopLocker()
*/
$internalConstructor=|new1|

/*
QEventLoopLocker(QEventLoop * loop)
*/
$internalConstructor=|new2|QEventLoop *

/*
QEventLoopLocker(QThread * thread)
*/
$internalConstructor=|new3|QThread *

//[1]QEventLoopLocker()
//[2]QEventLoopLocker(QEventLoop * loop)
//[3]QEventLoopLocker(QThread * thread)

HB_FUNC_STATIC( QEVENTLOOPLOCKER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QEventLoopLocker_new1();
  }
  else if( ISNUMPAR(1) && ISQEVENTLOOP(1) )
  {
    QEventLoopLocker_new2();
  }
  else if( ISNUMPAR(1) && ISQTHREAD(1) )
  {
    QEventLoopLocker_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$extraMethods

#pragma ENDDUMP
