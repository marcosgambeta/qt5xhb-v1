$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QQmlError

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
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
QQmlError()
*/
$internalConstructor=|new1|

/*
QQmlError(const QQmlError & other)
*/
$internalConstructor=|new2|const QQmlError &

//[1]QQmlError()
//[2]QQmlError(const QQmlError & other)

HB_FUNC_STATIC( QQMLERROR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QQmlError_new1();
  }
  else if( ISNUMPAR(1) && ISQQMLERROR(1) )
  {
    QQmlError_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int column() const
*/
$method=|int|column|

/*
QString description() const
*/
$method=|QString|description|

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
int line() const
*/
$method=|int|line|

/*
void setColumn(int column)
*/
$method=|void|setColumn|int

/*
void setDescription(const QString & description)
*/
$method=|void|setDescription|const QString &

/*
void setLine(int line)
*/
$method=|void|setLine|int

/*
void setUrl(const QUrl & url)
*/
$method=|void|setUrl|const QUrl &

/*
QString toString() const
*/
$method=|QString|toString|

/*
QUrl url() const
*/
$method=|QUrl|url|

$extraMethods

#pragma ENDDUMP
