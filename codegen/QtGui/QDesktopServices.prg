$header

#include "hbclass.ch"

CLASS QDesktopServices

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD openUrl
   METHOD setUrlHandler
   METHOD unsetUrlHandler

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

$deleteMethod

/*
static bool openUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QDESKTOPSERVICES_OPENURL )
{
  if( ISQURL(1) )
  {
    RBOOL( QDesktopServices::openUrl ( *PQURL(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setUrlHandler ( const QString & scheme, QObject * receiver, const char * method )
*/
HB_FUNC_STATIC( QDESKTOPSERVICES_SETURLHANDLER )
{
  if( ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) )
  {
    QDesktopServices::setUrlHandler ( PQSTRING(1), PQOBJECT(2), PCONSTCHAR(3) );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void unsetUrlHandler ( const QString & scheme )
*/
HB_FUNC_STATIC( QDESKTOPSERVICES_UNSETURLHANDLER )
{
  if( ISCHAR(1) )
  {
    QDesktopServices::unsetUrlHandler ( PQSTRING(1) );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
