$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QDeclarativeError

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD column
   METHOD description
   METHOD isValid
   METHOD line
   METHOD setColumn
   METHOD setDescription
   METHOD setLine
   METHOD setUrl
   METHOD toString
   METHOD url

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
QDeclarativeError ()
*/
$internalConstructor=|new1|

/*
QDeclarativeError ( const QDeclarativeError & other )
*/
$internalConstructor=|new2|const QDeclarativeError &

//[1]QDeclarativeError ()
//[2]QDeclarativeError ( const QDeclarativeError & other )

HB_FUNC_STATIC( QDECLARATIVEERROR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDeclarativeError_new1();
  }
  else if( ISNUMPAR(1) && ISQDECLARATIVEERROR(1) )
  {
    QDeclarativeError_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int column () const
*/
$method=|int|column|

/*
QString description () const
*/
$method=|QString|description|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
int line () const
*/
$method=|int|line|

/*
void setColumn ( int column )
*/
$method=|void|setColumn|int

/*
void setDescription ( const QString & description )
*/
$method=|void|setDescription|const QString &

/*
void setLine ( int line )
*/
$method=|void|setLine|int

/*
void setUrl ( const QUrl & url )
*/
$method=|void|setUrl|const QUrl &

/*
QString toString () const
*/
$method=|QString|toString|

/*
QUrl url () const
*/
$method=|QUrl|url|

$extraMethods

#pragma ENDDUMP
