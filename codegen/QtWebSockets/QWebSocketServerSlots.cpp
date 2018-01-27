%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=5,3,0|acceptError( QAbstractSocket::SocketError socketError )
$slot=5,3,0|serverError( QWebSocketProtocol::CloseCode closeCode )
$slot=5,3,0|originAuthenticationRequired( QWebSocketCorsAuthenticator * pAuthenticator )
$slot=5,3,0|newConnection()
$slot=5,3,0|peerVerifyError( const QSslError & error )

void SlotsQWebSocketServer::sslErrors(const QList<QSslError> &errors)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sslErrors(QList<QSslError>)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLERROR" );
    PHB_ITEM perrors = hb_itemArrayNew(0);
    int i;
    for(i=0;i<errors.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QSslError *) new QSslError ( errors [i] ) );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( perrors, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSSLERROR", HB_ERR_ARGS_BASEPARAMS );
      }
    }
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perrors );
    hb_itemRelease( psender );
    hb_itemRelease( perrors );
  }
#endif
}

$slot=5,3,0|closed()

$signalMethod=5,3,0|acceptError(QAbstractSocket::SocketError)
$signalMethod=5,3,0|serverError(QWebSocketProtocol::CloseCode)
$signalMethod=5,3,0|originAuthenticationRequired(QWebSocketCorsAuthenticator*)
$signalMethod=5,3,0|newConnection()
$signalMethod=5,3,0|peerVerifyError(QSslError)
$signalMethod=5,3,0|sslErrors(QList<QSslError>)
$signalMethod=5,3,0|closed()

$endSlotsClass
