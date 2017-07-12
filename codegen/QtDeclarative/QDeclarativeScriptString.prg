$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDECLARATIVECONTEXT
REQUEST QOBJECT
#endif

CLASS QDeclarativeScriptString

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD context
   METHOD scopeObject
   METHOD script
   METHOD setContext
   METHOD setScopeObject
   METHOD setScript

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
QDeclarativeScriptString ()
*/
$internalConstructor=|new1|

/*
QDeclarativeScriptString ( const QDeclarativeScriptString & other )
*/
$internalConstructor=|new2|const QDeclarativeScriptString &

//[1]QDeclarativeScriptString ()
//[2]QDeclarativeScriptString ( const QDeclarativeScriptString & other )

HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDeclarativeScriptString_new1();
  }
  else if( ISNUMPAR(1) && ISQDECLARATIVESCRIPTSTRING(1) )
  {
    QDeclarativeScriptString_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QDeclarativeContext * context () const
*/
$method=|QDeclarativeContext *|context|

/*
QObject * scopeObject () const
*/
$method=|QObject *|scopeObject|

/*
QString script () const
*/
$method=|QString|script|

/*
void setContext ( QDeclarativeContext * context )
*/
$method=|void|setContext|QDeclarativeContext *

/*
void setScopeObject ( QObject * object )
*/
$method=|void|setScopeObject|QObject *

/*
void setScript ( const QString & script )
*/
$method=|void|setScript|const QString &

$extraMethods

#pragma ENDDUMP
