$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QHttpMultiPart INHERIT QObject

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD append
   METHOD boundary
   METHOD setBoundary
   METHOD setContentType

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QHttpMultiPart ( QObject * parent = 0 )
*/
$constructor=|new1|QObject *=0

/*
QHttpMultiPart ( ContentType contentType, QObject * parent = 0 )
*/
$constructor=|new2|QHttpMultiPart::ContentType,QObject *=0

//[1]QHttpMultiPart ( QObject * parent = 0 )
//[2]QHttpMultiPart ( ContentType contentType, QObject * parent = 0 )

HB_FUNC_STATIC( QHTTPMULTIPART_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    HB_FUNC_EXEC( QHTTPMULTIPART_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QHTTPMULTIPART_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void append ( const QHttpPart & httpPart )
*/
$method=|void|append|const QHttpPart &

/*
QByteArray boundary () const
*/
$method=|QByteArray|boundary|

/*
void setBoundary ( const QByteArray & boundary )
*/
$method=|void|setBoundary|const QByteArray &

/*
void setContentType ( ContentType contentType )
*/
$method=|void|setContentType|QHttpMultiPart::ContentType

#pragma ENDDUMP
