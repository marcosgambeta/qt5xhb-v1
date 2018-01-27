%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=5,3,0|aboutToClose()
$slot=5,3,0|connected()
$slot=5,3,0|disconnected()
$slot=5,3,0|stateChanged( QAbstractSocket::SocketState state )
$slot=5,3,0|proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * pAuthenticator )
$slot=5,3,0|readChannelFinished()
$slot=5,3,0|textFrameReceived( const QString & frame, bool isLastFrame )
$slot=5,3,0|binaryFrameReceived( const QByteArray & frame, bool isLastFrame )
$slot=5,3,0|textMessageReceived( const QString & message )
$slot=5,3,0|binaryMessageReceived( const QByteArray & message )
$slot=5,3,0|error( QAbstractSocket::SocketError error )
$slot=5,3,0|pong( quint64 elapsedTime, const QByteArray & payload )
$slot=5,3,0|bytesWritten( qint64 bytes )

void SlotsQWebSocket::sslErrors(const QList<QSslError> &errors)
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

$signalMethod=5,3,0|aboutToClose()
$signalMethod=5,3,0|connected()
$signalMethod=5,3,0|disconnected()
$signalMethod=5,3,0|stateChanged(QAbstractSocket::SocketState)
$signalMethod=5,3,0|proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)
$signalMethod=5,3,0|readChannelFinished()
$signalMethod=5,3,0|textFrameReceived(QString,bool)
$signalMethod=5,3,0|binaryFrameReceived(QByteArray,bool)
$signalMethod=5,3,0|textMessageReceived(QString)
$signalMethod=5,3,0|binaryMessageReceived(QByteArray)
$signalMethod=5,3,0|error(QAbstractSocket::SocketError)
$signalMethod=5,3,0|pong(quint64,QByteArray)
$signalMethod=5,3,0|bytesWritten(qint64)
$signalMethod=5,3,0|sslErrors(QList<QSslError>)

$endSlotsClass
