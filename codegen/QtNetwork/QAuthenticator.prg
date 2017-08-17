$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QVARIANTHASH
#endif

CLASS QAuthenticator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD option
   METHOD options
   METHOD password
   METHOD realm
   METHOD setOption
   METHOD setPassword
   METHOD setUser
   METHOD user

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
QAuthenticator ()
*/
$constructor=|new1|

/*
QAuthenticator ( const QAuthenticator & other )
*/
$constructor=|new2|const QAuthenticator &

//[1]QAuthenticator ()
//[2]QAuthenticator ( const QAuthenticator & other )

HB_FUNC_STATIC( QAUTHENTICATOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAUTHENTICATOR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQAUTHENTICATOR(1) )
  {
    HB_FUNC_EXEC( QAUTHENTICATOR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
QVariant option ( const QString & opt ) const
*/
$method=|QVariant|option|const QString &

/*
QVariantHash options () const
*/
$method=|QVariantHash|options|

/*
QString password () const
*/
$method=|QString|password|

/*
QString realm () const
*/
$method=|QString|realm|

/*
void setOption ( const QString & opt, const QVariant & value )
*/
$method=|void|setOption|const QString &,const QVariant &

/*
void setPassword ( const QString & password )
*/
$method=|void|setPassword|const QString &

/*
void setUser ( const QString & user )
*/
$method=|void|setUser|const QString &

/*
QString user () const
*/
$method=|QString|user|

$extraMethods

#pragma ENDDUMP
