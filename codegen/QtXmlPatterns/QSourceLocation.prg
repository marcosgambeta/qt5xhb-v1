$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QSourceLocation

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD column
   METHOD isNull
   METHOD line
   METHOD setColumn
   METHOD setLine
   METHOD setUri
   METHOD uri

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

$prototype=QSourceLocation ()
$constructor=|new1|

$prototype=QSourceLocation ( const QSourceLocation & other )
$constructor=|new2|const QSourceLocation &

$prototype=QSourceLocation ( const QUrl & u, int l = -1, int c = -1 )
$constructor=|new3|const QUrl &,int=-1,int=-1

//[1]QSourceLocation ()
//[2]QSourceLocation ( const QSourceLocation & other )
//[3]QSourceLocation ( const QUrl & u, int l = -1, int c = -1 )

HB_FUNC_STATIC( QSOURCELOCATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSOURCELOCATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSOURCELOCATION(1) )
  {
    HB_FUNC_EXEC( QSOURCELOCATION_NEW2 );
  }
  else if( ISBETWEEN(1,3) && ISQURL(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QSOURCELOCATION_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=qint64 column () const
$method=|qint64|column|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=qint64 line () const
$method=|qint64|line|

$prototype=void setColumn ( qint64 newColumn )
$method=|void|setColumn|qint64

$prototype=void setLine ( qint64 newLine )
$method=|void|setLine|qint64

$prototype=void setUri ( const QUrl & newUri )
$method=|void|setUri|const QUrl &

$prototype=QUrl uri () const
$method=|QUrl|uri|

$extraMethods

#pragma ENDDUMP
