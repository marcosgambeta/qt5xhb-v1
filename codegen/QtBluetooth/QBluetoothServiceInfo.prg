$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHDEVICEINFO
REQUEST QVARIANT
REQUEST QBLUETOOTHUUID
#endif

CLASS QBluetoothServiceInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD isComplete
   METHOD setDevice
   METHOD device
   METHOD setAttribute
   METHOD attribute
   METHOD attributes
   METHOD contains
   METHOD removeAttribute
   METHOD setServiceName
   METHOD serviceName
   METHOD setServiceDescription
   METHOD serviceDescription
   METHOD setServiceProvider
   METHOD serviceProvider
   METHOD socketProtocol
   METHOD protocolServiceMultiplexer
   METHOD serverChannel
   METHOD setServiceAvailability
   METHOD serviceAvailability
   METHOD setServiceUuid
   METHOD serviceUuid
   METHOD serviceClassUuids
   METHOD isRegistered
   METHOD registerService
   METHOD unregisterService

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

#include <QBluetoothDeviceInfo>

/*
QBluetoothServiceInfo()
*/
$internalConstructor=5,2,0|new1|

/*
QBluetoothServiceInfo(const QBluetoothServiceInfo &other)
*/
$internalConstructor=5,2,0|new2|const QBluetoothServiceInfo &

//[1]QBluetoothServiceInfo()
//[2]QBluetoothServiceInfo(const QBluetoothServiceInfo &other)

HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBluetoothServiceInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHSERVICEINFO(1) )
  {
    QBluetoothServiceInfo_new2();
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
bool isComplete() const
*/
$method=5,2,0|bool|isComplete|

/*
void setDevice(const QBluetoothDeviceInfo &info)
*/
$method=5,2,0|void|setDevice|const QBluetoothDeviceInfo &

/*
QBluetoothDeviceInfo device() const
*/
$method=5,2,0|QBluetoothDeviceInfo|device|

/*
void setAttribute(quint16 attributeId, const QVariant &value)
*/
$internalMethod=5,2,0|void|setAttribute,setAttribute1|quint16,const QVariant &

/*
void setAttribute(quint16 attributeId, const QBluetoothUuid &value)
*/
$internalMethod=5,2,0|void|setAttribute,setAttribute2|quint16,const QBluetoothUuid &

/*
void setAttribute(quint16 attributeId, const QBluetoothServiceInfo::Sequence &value)
*/

/*
void setAttribute(quint16 attributeId, const QBluetoothServiceInfo::Alternative &value)
*/

//[1]void setAttribute(quint16 attributeId, const QVariant &value)
//[2]void setAttribute(quint16 attributeId, const QBluetoothUuid &value)
//[3]void setAttribute(quint16 attributeId, const QBluetoothServiceInfo::Sequence &value)    // TODO: implementar
//[4]void setAttribute(quint16 attributeId, const QBluetoothServiceInfo::Alternative &value) // TODO: implementar

HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SETATTRIBUTE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
  {
    QBluetoothServiceInfo_setAttribute1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQBLUETOOTHUUID(2) )
  {
    QBluetoothServiceInfo_setAttribute2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QVariant attribute(quint16 attributeId) const
*/
$method=5,2,0|QVariant|attribute|quint16

/*
QList<quint16> attributes() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_ATTRIBUTES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<quint16> list = obj->attributes ();
    _qt5xhb_convert_qlist_quint16_to_array ( list );
  }
#endif
}

/*
bool contains(quint16 attributeId) const
*/
$method=5,2,0|bool|contains|quint16

/*
void removeAttribute(quint16 attributeId)
*/
$method=5,2,0|void|removeAttribute|quint16

/*
void setServiceName(const QString &name)
*/
$method=5,2,0|void|setServiceName|const QString &

/*
QString serviceName() const
*/
$method=5,2,0|QString|serviceName|

/*
void setServiceDescription(const QString &description)
*/
$method=5,2,0|void|setServiceDescription|const QString &

/*
QString serviceDescription() const
*/
$method=5,2,0|QString|serviceDescription|

/*
void setServiceProvider(const QString &provider)
*/
$method=5,2,0|void|setServiceProvider|const QString &

/*
QString serviceProvider() const
*/
$method=5,2,0|QString|serviceProvider|

/*
QBluetoothServiceInfo::Protocol socketProtocol() const
*/
$method=5,2,0|QBluetoothServiceInfo::Protocol|socketProtocol|

/*
int protocolServiceMultiplexer() const
*/
$method=5,2,0|int|protocolServiceMultiplexer|

/*
int serverChannel() const
*/
$method=5,2,0|int|serverChannel|

/*
void setServiceAvailability(quint8 availability)
*/
$method=5,2,0|void|setServiceAvailability|quint8

/*
quint8 serviceAvailability() const
*/
$method=5,2,0|quint8|serviceAvailability|

/*
void setServiceUuid(const QBluetoothUuid &uuid)
*/
$method=5,2,0|void|setServiceUuid|const QBluetoothUuid &

/*
QBluetoothUuid serviceUuid() const
*/
$method=5,2,0|QBluetoothUuid|serviceUuid|

/*
QList<QBluetoothUuid> serviceClassUuids() const
*/
$method=5,2,0|QList<QBluetoothUuid>|serviceClassUuids|

/*
bool isRegistered() const
*/
$method=5,2,0|bool|isRegistered|

/*
bool registerService(const QBluetoothAddress &localAdapter = QBluetoothAddress())
*/
$method=5,2,0|bool|registerService|const QBluetoothAddress &=QBluetoothAddress()

/*
bool unregisterService()
*/
$method=5,2,0|bool|unregisterService|

$extraMethods

#pragma ENDDUMP
