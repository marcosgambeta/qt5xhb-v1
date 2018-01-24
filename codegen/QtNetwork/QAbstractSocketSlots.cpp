%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQAbstractSocket::connected ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "connected()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAbstractSocket::disconnected ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "disconnected()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAbstractSocket::error ( QAbstractSocket::SocketError socketError )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QAbstractSocket::SocketError)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psocketError = hb_itemPutNI( NULL, (int) socketError );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psocketError );
    hb_itemRelease( psender );
    hb_itemRelease( psocketError );
  }
}

void SlotsQAbstractSocket::hostFound ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "hostFound()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAbstractSocket::proxyAuthenticationRequired ( const QNetworkProxy & proxy, QAuthenticator * authenticator )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pproxy = hb_itemPutPtr( NULL, (QNetworkProxy *) &proxy );
    PHB_ITEM pauthenticator = hb_itemPutPtr( NULL, (QAuthenticator *) authenticator );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pproxy, pauthenticator );
    hb_itemRelease( psender );
    hb_itemRelease( pproxy );
    hb_itemRelease( pauthenticator );
  }
}

void SlotsQAbstractSocket::stateChanged ( QAbstractSocket::SocketState socketState )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QAbstractSocket::SocketState)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psocketState = hb_itemPutNI( NULL, (int) socketState );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psocketState );
    hb_itemRelease( psender );
    hb_itemRelease( psocketState );
  }
}

HB_FUNC( QABSTRACTSOCKET_ONCONNECTED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "connected()", "connected()" ) );
}

HB_FUNC( QABSTRACTSOCKET_ONDISCONNECTED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "disconnected()", "disconnected()" ) );
}

HB_FUNC( QABSTRACTSOCKET_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QAbstractSocket::SocketError)", "error(QAbstractSocket::SocketError)" ) );
}

HB_FUNC( QABSTRACTSOCKET_ONHOSTFOUND )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "hostFound()", "hostFound()" ) );
}

HB_FUNC( QABSTRACTSOCKET_ONPROXYAUTHENTICATIONREQUIRED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)", "proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)" ) );
}

HB_FUNC( QABSTRACTSOCKET_ONSTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stateChanged(QAbstractSocket::SocketState)", "stateChanged(QAbstractSocket::SocketState)" ) );
}

$endSlotsClass
