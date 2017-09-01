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

/*
QNetworkSession ( const QNetworkConfiguration & connectionConfig, QObject * parent = 0 )
*/
$constructor=|new|const QNetworkConfiguration &,QObject *=0

$deleteMethod

/*
quint64 activeTime () const
*/
$method=|quint64|activeTime|

/*
quint64 bytesReceived () const
*/
$method=|quint64|bytesReceived|

/*
quint64 bytesWritten () const
*/
$method=|quint64|bytesWritten|

/*
QNetworkConfiguration configuration () const
*/
$method=|QNetworkConfiguration|configuration|

/*
SessionError error () const
*/
$method=|QNetworkSession::SessionError|error|

/*
QString errorString () const
*/
$method=|QString|errorString|

/*
QNetworkInterface interface () const
*/
$method=|QNetworkInterface|interface|

/*
bool isOpen () const
*/
$method=|bool|isOpen|

/*
QVariant sessionProperty ( const QString & key ) const
*/
$method=|QVariant|sessionProperty|const QString &

/*
void setSessionProperty ( const QString & key, const QVariant & value )
*/
$method=|void|setSessionProperty|const QString &,const QVariant &

/*
State state () const
*/
$method=|QNetworkSession::State|state|

/*
bool waitForOpened ( int msecs = 30000 )
*/
$method=|bool|waitForOpened|int=30000

/*
void accept ()
*/
$method=|void|accept|

/*
void close ()
*/
$method=|void|close|

/*
void ignore ()
*/
$method=|void|ignore|

/*
void migrate ()
*/
$method=|void|migrate|

/*
void open ()
*/
$method=|void|open|

/*
void reject ()
*/
$method=|void|reject|

/*
void stop ()
*/
$method=|void|stop|

#pragma ENDDUMP
