$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHSERVICEINFO
REQUEST QBLUETOOTHSOCKET
REQUEST QBLUETOOTHADDRESS
#endif

CLASS QBluetoothServer INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD close
   METHOD listen
   METHOD isListening
   METHOD setMaxPendingConnections
   METHOD maxPendingConnections
   METHOD hasPendingConnections
   METHOD nextPendingConnection
   METHOD serverAddress
   METHOD serverPort
   METHOD setSecurityFlags
   METHOD securityFlags
   METHOD serverType
   METHOD error

   METHOD onNewConnection
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <Qt>

$includes=5,2,0

/*
QBluetoothServer(QBluetoothServiceInfo::Protocol serverType, QObject *parent = 0)
*/
$constructor=5,2,0|new|QBluetoothServiceInfo::Protocol,QObject *=0

$deleteMethod=5,2,0

/*
void close()
*/
$method=5,2,0|void|close|

/*
bool listen(const QBluetoothAddress &address = QBluetoothAddress(), quint16 port = 0)
*/
void QBluetoothServer_listen1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServer * obj = (QBluetoothServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBluetoothAddress par1 = ISNIL(1)? QBluetoothAddress() : *(QBluetoothAddress *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->listen ( par1, OPQUINT16(2,0) ) );
  }
#endif
}

/*
QBluetoothServiceInfo listen(const QBluetoothUuid &uuid, const QString &serviceName = QString())
*/
void QBluetoothServer_listen2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServer * obj = (QBluetoothServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBluetoothServiceInfo * ptr = new QBluetoothServiceInfo( obj->listen ( *PQBLUETOOTHUUID(1), OPQSTRING(2,QString()) ) );
    _qt5xhb_createReturnClass ( ptr, "QBLUETOOTHSERVICEINFO" );
  }
#endif
}

//[1]bool listen(const QBluetoothAddress &address = QBluetoothAddress(), quint16 port = 0)
//[2]QBluetoothServiceInfo listen(const QBluetoothUuid &uuid, const QString &serviceName = QString())

HB_FUNC_STATIC( QBLUETOOTHSERVER_LISTEN )
{
  if( ISBETWEEN(0,2) && (ISQBLUETOOTHADDRESS(1)||ISNIL(1)) && ISOPTNUM(2) )
  {
    QBluetoothServer_listen1();
  }
  else if( ISBETWEEN(1,2) && ISQBLUETOOTHUUID(1) && ISOPTCHAR(2) )
  {
    QBluetoothServer_listen2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isListening() const
*/
$method=5,2,0|bool|isListening|

/*
void setMaxPendingConnections(int numConnections)
*/
$method=5,2,0|void|setMaxPendingConnections|int

/*
int maxPendingConnections() const
*/
$method=5,2,0|int|maxPendingConnections|

/*
bool hasPendingConnections() const
*/
$method=5,2,0|bool|hasPendingConnections|

/*
QBluetoothSocket *nextPendingConnection()
*/
HB_FUNC_STATIC( QBLUETOOTHSERVER_NEXTPENDINGCONNECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServer * obj = (QBluetoothServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBluetoothSocket * ptr = obj->nextPendingConnection ();
    _qt5xhb_createReturnClass ( ptr, "QBLUETOOTHSOCKET" );
  }
#endif
}

/*
QBluetoothAddress serverAddress() const
*/
$method=5,2,0|QBluetoothAddress|serverAddress|

/*
quint16 serverPort() const
*/
$method=5,2,0|quint16|serverPort|

/*
void setSecurityFlags(QBluetooth::SecurityFlags security)
*/
$method=5,2,0|void|setSecurityFlags|QBluetooth::SecurityFlags

/*
QBluetooth::SecurityFlags securityFlags() const
*/
$method=5,2,0|QBluetooth::SecurityFlags|securityFlags|

/*
QBluetoothServiceInfo::Protocol serverType() const
*/
$method=5,2,0|QBluetoothServiceInfo::Protocol|serverType|

/*
Error error() const
*/
$method=5,2,0|QBluetoothServer::Error|error|

#pragma ENDDUMP
