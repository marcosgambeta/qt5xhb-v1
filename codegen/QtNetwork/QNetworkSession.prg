%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% TODO:
%% #ifndef QT_NO_BEARERMANAGEMENT
%% #endif // QT_NO_BEARERMANAGEMENT

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
REQUEST QNETWORKINTERFACE
REQUEST QVARIANT
#endif

CLASS QNetworkSession INHERIT QObject

   METHOD new
   METHOD delete

   METHOD accept
   METHOD activeTime
   METHOD bytesReceived
   METHOD bytesWritten
   METHOD close
   METHOD configuration
   METHOD error
   METHOD errorString
   METHOD ignore
%% #ifndef QT_NO_NETWORKINTERFACE
   METHOD interface
%% #endif
   METHOD isOpen
   METHOD migrate
   METHOD open
   METHOD reject
   METHOD sessionProperty
   METHOD setSessionProperty
   METHOD state
   METHOD stop
   METHOD usagePolicies
   METHOD waitForOpened

   METHOD onClosed
   METHOD onError
   METHOD onNewConfigurationActivated
   METHOD onOpened
   METHOD onPreferredConfigurationChanged
   METHOD onStateChanged
   METHOD onUsagePoliciesChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QNetworkSession(const QNetworkConfiguration &connConfig, QObject *parent = Q_NULLPTR)
$constructor=|new|const QNetworkConfiguration &,QObject *=0

$prototype=virtual ~QNetworkSession()
$deleteMethod

$prototype=quint64 activeTime () const
$method=|quint64|activeTime|

$prototype=quint64 bytesReceived () const
$method=|quint64|bytesReceived|

$prototype=quint64 bytesWritten () const
$method=|quint64|bytesWritten|

$prototype=QNetworkConfiguration configuration () const
$method=|QNetworkConfiguration|configuration|

$prototype=SessionError error () const
$method=|QNetworkSession::SessionError|error|

$prototype=QString errorString () const
$method=|QString|errorString|

%% #ifndef QT_NO_NETWORKINTERFACE
$prototype=QNetworkInterface interface () const
$method=|QNetworkInterface|interface|
%% #endif

$prototype=bool isOpen () const
$method=|bool|isOpen|

$prototype=QVariant sessionProperty ( const QString & key ) const
$method=|QVariant|sessionProperty|const QString &

$prototype=void setSessionProperty ( const QString & key, const QVariant & value )
$method=|void|setSessionProperty|const QString &,const QVariant &

$prototype=State state () const
$method=|QNetworkSession::State|state|

$prototype=bool waitForOpened ( int msecs = 30000 )
$method=|bool|waitForOpened|int=30000

$prototype=void accept () (slot)
$method=|void|accept|

$prototype=void close () (slot)
$method=|void|close|

$prototype=void ignore () (slot)
$method=|void|ignore|

$prototype=void migrate () (slot)
$method=|void|migrate|

$prototype=void open () (slot)
$method=|void|open|

$prototype=void reject () (slot)
$method=|void|reject|

$prototype=void stop () (slot)
$method=|void|stop|

$prototype=QNetworkSession::UsagePolicies usagePolicies() const
$method=|QNetworkSession::UsagePolicies|usagePolicies|

$prototype=virtual void connectNotify(const QMetaMethod &signal) Q_DECL_OVERRIDE (protected)

$prototype=virtual void disconnectNotify(const QMetaMethod &signal) Q_DECL_OVERRIDE (protected)

$beginSignals
$signal=|closed()
$signal=|error(QNetworkSession::SessionError)
$signal=|newConfigurationActivated()
$signal=|opened()
$signal=|preferredConfigurationChanged(QNetworkConfiguration,bool)
$signal=|stateChanged(QNetworkSession::State)
$signal=|usagePoliciesChanged(QNetworkSession::UsagePolicies)
$endSignals

#pragma ENDDUMP
