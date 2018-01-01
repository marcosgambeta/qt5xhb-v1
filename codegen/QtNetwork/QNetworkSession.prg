%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
REQUEST QNETWORKINTERFACE
REQUEST QVARIANT
#endif

CLASS QNetworkSession INHERIT QObject

   METHOD new
   METHOD delete
   METHOD activeTime
   METHOD bytesReceived
   METHOD bytesWritten
   METHOD configuration
   METHOD error
   METHOD errorString
   METHOD interface
   METHOD isOpen
   METHOD sessionProperty
   METHOD setSessionProperty
   METHOD state
   METHOD waitForOpened
   METHOD accept
   METHOD close
   METHOD ignore
   METHOD migrate
   METHOD open
   METHOD reject
   METHOD stop

   METHOD onClosed
   METHOD onError
   METHOD onNewConfigurationActivated
   METHOD onOpened
   METHOD onPreferredConfigurationChanged
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QNetworkSession ( const QNetworkConfiguration & connectionConfig, QObject * parent = 0 )
$constructor=|new|const QNetworkConfiguration &,QObject *=0

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

$prototype=QNetworkInterface interface () const
$method=|QNetworkInterface|interface|

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

$prototype=void accept ()
$method=|void|accept|

$prototype=void close ()
$method=|void|close|

$prototype=void ignore ()
$method=|void|ignore|

$prototype=void migrate ()
$method=|void|migrate|

$prototype=void open ()
$method=|void|open|

$prototype=void reject ()
$method=|void|reject|

$prototype=void stop ()
$method=|void|stop|

#pragma ENDDUMP
