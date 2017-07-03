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

PROCEDURE destroyObject () CLASS QBluetoothServiceInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

$includes=5,2,0

#include <QBluetoothDeviceInfo>

/*
QBluetoothServiceInfo()
*/
void QBluetoothServiceInfo_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * o = new QBluetoothServiceInfo ();
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothServiceInfo(const QBluetoothServiceInfo &other)
*/
void QBluetoothServiceInfo_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * o = new QBluetoothServiceInfo ( *PQBLUETOOTHSERVICEINFO(1) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

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
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_DEVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBluetoothDeviceInfo * ptr = new QBluetoothDeviceInfo( obj->device () );
    _qt5xhb_createReturnClass ( ptr, "QBLUETOOTHDEVICEINFO" );
  }
#endif
}

/*
void setAttribute(quint16 attributeId, const QVariant &value)
*/
void QBluetoothServiceInfo_setAttribute1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setAttribute ( PQUINT16(1), *PQVARIANT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setAttribute(quint16 attributeId, const QBluetoothUuid &value)
*/
void QBluetoothServiceInfo_setAttribute2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setAttribute ( PQUINT16(1), *PQBLUETOOTHUUID(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

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
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_ATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QVariant * ptr = new QVariant( obj->attribute ( PQUINT16(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

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
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SERVICEUUID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBluetoothUuid * ptr = new QBluetoothUuid( obj->serviceUuid () );
    _qt5xhb_createReturnClass ( ptr, "QBLUETOOTHUUID" );
  }
#endif
}

/*
QList<QBluetoothUuid> serviceClassUuids() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SERVICECLASSUUIDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QBluetoothUuid> list = obj->serviceClassUuids ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBLUETOOTHUUID" );
    #else
    pDynSym = hb_dynsymFindName( "QBLUETOOTHUUID" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QBluetoothUuid *) new QBluetoothUuid ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}

/*
bool isRegistered() const
*/
$method=5,2,0|bool|isRegistered|

/*
bool registerService(const QBluetoothAddress &localAdapter = QBluetoothAddress())
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_REGISTERSERVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQBLUETOOTHADDRESS(1)||ISNIL(1)) )
    {
      QBluetoothAddress par1 = ISNIL(1)? QBluetoothAddress() : *(QBluetoothAddress *) _qt5xhb_itemGetPtr(1);
      RBOOL( obj->registerService ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool unregisterService()
*/
$method=5,2,0|bool|unregisterService|

$extraMethods

#pragma ENDDUMP
