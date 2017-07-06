$header

#include "hbclass.ch"

CLASS QWebSocketCorsAuthenticator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD swap
   METHOD origin
   METHOD allowed
   METHOD setAllowed

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,3,0

#include <QString>
#include <QLatin1String>

/*
explicit QWebSocketCorsAuthenticator(const QString &origin)
*/
HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketCorsAuthenticator * o = new QWebSocketCorsAuthenticator ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
explicit QWebSocketCorsAuthenticator(const QWebSocketCorsAuthenticator &other)
*/
HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketCorsAuthenticator * o = new QWebSocketCorsAuthenticator ( *PQWEBSOCKETCORSAUTHENTICATOR(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]explicit QWebSocketCorsAuthenticator(const QString &origin)
//[2]explicit QWebSocketCorsAuthenticator(const QWebSocketCorsAuthenticator &other)

HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_NEW )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QWEBSOCKETCORSAUTHENTICATOR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQWEBSOCKETCORSAUTHENTICATOR(1) )
  {
    HB_FUNC_EXEC( QWEBSOCKETCORSAUTHENTICATOR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,3,0

/*
void swap(QWebSocketCorsAuthenticator &other)
*/
HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketCorsAuthenticator * obj = (QWebSocketCorsAuthenticator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebSocketCorsAuthenticator * par1 = (QWebSocketCorsAuthenticator *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString origin() const
*/
HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_ORIGIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketCorsAuthenticator * obj = (QWebSocketCorsAuthenticator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->origin () );
  }
#endif
}


/*
bool allowed() const
*/
HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_ALLOWED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketCorsAuthenticator * obj = (QWebSocketCorsAuthenticator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->allowed () );
  }
#endif
}

/*
void setAllowed(bool allowed)
*/
HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_SETALLOWED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketCorsAuthenticator * obj = (QWebSocketCorsAuthenticator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAllowed ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



$extraMethods

#pragma ENDDUMP
