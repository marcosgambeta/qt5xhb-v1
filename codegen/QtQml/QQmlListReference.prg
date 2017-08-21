$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QMETAOBJECT
#endif

CLASS QQmlListReference

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD append
   METHOD at
   METHOD canAppend
   METHOD canAt
   METHOD canClear
   METHOD canCount
   METHOD clear
   METHOD count
   METHOD isValid
   METHOD listElementType
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
QQmlListReference()
*/
$constructor=|new1|

/*
QQmlListReference(QObject * object, const char * property, QQmlEngine * engine = 0)
*/
$constructor=|new2|QObject *,const char *,QQmlEngine *=0

//[1]QQmlListReference()
//[2]QQmlListReference(QObject * object, const char * property, QQmlEngine * engine = 0)

HB_FUNC_STATIC( QQMLLISTREFERENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QQMLLISTREFERENCE_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISCHAR(2) && (ISQQMLENGINE(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QQMLLISTREFERENCE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool append(QObject * object) const
*/
$method=|bool|append|QObject *

/*
QObject * at(int index) const
*/
$method=|QObject *|at|int

/*
bool canAppend() const
*/
$method=|bool|canAppend|

/*
bool canAt() const
*/
$method=|bool|canAt|

/*
bool canClear() const
*/
$method=|bool|canClear|

/*
bool canCount() const
*/
$method=|bool|canCount|

/*
bool clear() const
*/
$method=|bool|clear|

/*
int count() const
*/
$method=|int|count|

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
const QMetaObject * listElementType() const
*/
$method=|const QMetaObject *|listElementType|

/*
QObject * object() const
*/
$method=|QObject *|object|

$extraMethods

#pragma ENDDUMP
