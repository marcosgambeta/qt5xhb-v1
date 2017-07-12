$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QDeclarativeListReference

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD append
   METHOD at
   METHOD canAppend
   METHOD canAt
   METHOD canClear
   METHOD canCount
   METHOD clear
   METHOD count
   METHOD isValid
   METHOD object

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
QDeclarativeListReference ()
*/
$internalConstructor=|new1|

/*
QDeclarativeListReference ( QObject * object, const char * property, QDeclarativeEngine * engine = 0 )
*/
$internalConstructor=|new2|QObject *,const char *,QDeclarativeEngine *=0

//[1]QDeclarativeListReference ()
//[2]QDeclarativeListReference ( QObject * object, const char * property, QDeclarativeEngine * engine = 0 )

HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDeclarativeListReference_new1();
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISCHAR(2) && (ISQDECLARATIVEENGINE(3)||ISNIL(3)) )
  {
    QDeclarativeListReference_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool append ( QObject * object ) const
*/
$method=|bool|append|QObject *

/*
QObject * at ( int index ) const
*/
$method=|QObject *|at|int

/*
bool canAppend () const
*/
$method=|bool|canAppend|

/*
bool canAt () const
*/
$method=|bool|canAt|

/*
bool canClear () const
*/
$method=|bool|canClear|

/*
bool canCount () const
*/
$method=|bool|canCount|

/*
bool clear () const
*/
$method=|bool|clear|

/*
int count () const
*/
$method=|int|count|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QObject * object () const
*/
$method=|QObject *|object|

$extraMethods

#pragma ENDDUMP
