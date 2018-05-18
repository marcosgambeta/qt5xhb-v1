%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

   METHOD new
   METHOD delete
   METHOD swap
   METHOD origin
   METHOD allowed
   METHOD setAllowed

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,3,0

#include <QString>
#include <QLatin1String>

$prototype=explicit QWebSocketCorsAuthenticator(const QString &origin)
$internalConstructor=5,3,0|new1|const QString &

$prototype=explicit QWebSocketCorsAuthenticator(const QWebSocketCorsAuthenticator &other)
$internalConstructor=5,3,0|new2|const QWebSocketCorsAuthenticator &

//[1]explicit QWebSocketCorsAuthenticator(const QString &origin)
//[2]explicit QWebSocketCorsAuthenticator(const QWebSocketCorsAuthenticator &other)

HB_FUNC_STATIC( QWEBSOCKETCORSAUTHENTICATOR_NEW )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QWebSocketCorsAuthenticator_new1();
  }
  else if( ISNUMPAR(1) && ISQWEBSOCKETCORSAUTHENTICATOR(1) )
  {
    QWebSocketCorsAuthenticator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,3,0

$prototype=void swap(QWebSocketCorsAuthenticator &other)
$method=5,3,0|void|swap|QWebSocketCorsAuthenticator &

$prototype=QString origin() const
$method=5,3,0|QString|origin|

$prototype=bool allowed() const
$method=5,3,0|bool|allowed|

$prototype=void setAllowed(bool allowed)
$method=5,3,0|void|setAllowed|bool

$extraMethods

#pragma ENDDUMP
