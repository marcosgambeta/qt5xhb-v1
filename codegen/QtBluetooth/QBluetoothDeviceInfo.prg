$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHADDRESS
REQUEST QBLUETOOTHUUID
#endif

CLASS QBluetoothDeviceInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD isCached
   METHOD setCached
   METHOD address
   METHOD name
   METHOD serviceClasses
   METHOD majorDeviceClass
   METHOD minorDeviceClass
   METHOD rssi
   METHOD setRssi
   METHOD setServiceUuids
   METHOD serviceUuids
   METHOD serviceUuidsCompleteness

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

#include <QBluetoothAddress>
#include <QBluetoothUuid>

void _qt5xhb_convert_qlist_qbluetoothuuid_to_array ( const QList<QBluetoothUuid> list );

/*
QBluetoothDeviceInfo()
*/
$internalConstructor=5,2,0|new1|

/*
QBluetoothDeviceInfo(const QBluetoothAddress &address, const QString &name, quint32 classOfDevice)
*/
$internalConstructor=5,2,0|new2|const QBluetoothAddress &,const QString &,quint32

/*
QBluetoothDeviceInfo(const QBluetoothDeviceInfo &other)
*/
$internalConstructor=5,2,0|new3|const QBluetoothDeviceInfo &

//[1]QBluetoothDeviceInfo()
//[2]QBluetoothDeviceInfo(const QBluetoothAddress &address, const QString &name, quint32 classOfDevice)
//[3]QBluetoothDeviceInfo(const QBluetoothDeviceInfo &other)

HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBluetoothDeviceInfo_new1();
  }
  else if( ISNUMPAR(3) && ISQBLUETOOTHADDRESS(1) && ISCHAR(2) && ISNUM(3) )
  {
    QBluetoothDeviceInfo_new2();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHDEVICEINFO(1) )
  {
    QBluetoothDeviceInfo_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
bool isValid() const
*/
$method=5,2,0|bool|isValid|

/*
bool isCached() const
*/
$method=5,2,0|bool|isCached|

/*
void setCached(bool cached)
*/
$method=5,2,0|void|setCached|bool

/*
QBluetoothAddress address() const
*/
$method=5,2,0|QBluetoothAddress|address|

/*
QString name() const
*/
$method=5,2,0|QString|name|

/*
ServiceClasses serviceClasses() const
*/
$method=5,2,0|QBluetoothDeviceInfo::ServiceClasses|serviceClasses|

/*
MajorDeviceClass majorDeviceClass() const
*/
$method=5,2,0|QBluetoothDeviceInfo::MajorDeviceClass|majorDeviceClass|

/*
quint8 minorDeviceClass() const
*/
$method=5,2,0|quint8|minorDeviceClass|

/*
qint16 rssi() const
*/
$method=5,2,0|qint16|rssi|

/*
void setRssi(qint16 signal)
*/
$method=5,2,0|void|setRssi|qint16

/*
void setServiceUuids(const QList<QBluetoothUuid> &uuids, DataCompleteness completeness)
*/
$method=5,2,0|void|setServiceUuids|const QList<QBluetoothUuid> &,QBluetoothDeviceInfo::DataCompleteness

/*
QList<QBluetoothUuid> serviceUuids(DataCompleteness *completeness = 0) const
*/
$method=5,2,0|QList<QBluetoothUuid>|serviceUuids|QBluetoothDeviceInfo::DataCompleteness *=0

/*
DataCompleteness serviceUuidsCompleteness() const
*/
$method=5,2,0|QBluetoothDeviceInfo::DataCompleteness|serviceUuidsCompleteness|

$extraMethods

#pragma ENDDUMP
