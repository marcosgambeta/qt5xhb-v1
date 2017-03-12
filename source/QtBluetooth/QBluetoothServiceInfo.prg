/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHDEVICEINFO
REQUEST QVARIANT
REQUEST QBLUETOOTHUUID
#endif

CLASS QBluetoothServiceInfo

   DATA pointer
   DATA class_id INIT Class_Id_QBluetoothServiceInfo
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isValid
   METHOD isComplete
   METHOD setDevice
   METHOD device
   METHOD setAttribute1
   METHOD setAttribute2
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

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothServiceInfo>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothServiceInfo>
#endif
#endif

#include <QBluetoothDeviceInfo>

/*
QBluetoothServiceInfo()
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * o = new QBluetoothServiceInfo (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QBluetoothServiceInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QBluetoothServiceInfo(const QBluetoothServiceInfo &other)
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * par1 = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtr(1);
  QBluetoothServiceInfo * o = new QBluetoothServiceInfo ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QBluetoothServiceInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QBluetoothServiceInfo()
//[2]QBluetoothServiceInfo(const QBluetoothServiceInfo &other)

HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QBLUETOOTHSERVICEINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHSERVICEINFO(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHSERVICEINFO_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
#endif
}


/*
bool isComplete() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_ISCOMPLETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isComplete (  ) );
  }
#endif
}


/*
void setDevice(const QBluetoothDeviceInfo &info)
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SETDEVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothDeviceInfo * par1 = (QBluetoothDeviceInfo *) _qt5xhb_itemGetPtr(1);
    obj->setDevice ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QBluetoothDeviceInfo device() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_DEVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothDeviceInfo * ptr = new QBluetoothDeviceInfo( obj->device (  ) );
    _qt5xhb_createReturnClass ( ptr, "QBLUETOOTHDEVICEINFO" );
  }
#endif
}


/*
void setAttribute(quint16 attributeId, const QVariant &value)
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SETATTRIBUTE1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    obj->setAttribute ( (quint16) hb_parni(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setAttribute(quint16 attributeId, const QBluetoothUuid &value)
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SETATTRIBUTE2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothUuid * par2 = (QBluetoothUuid *) _qt5xhb_itemGetPtr(2);
    obj->setAttribute ( (quint16) hb_parni(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


//[1]void setAttribute(quint16 attributeId, const QVariant &value)
//[2]void setAttribute(quint16 attributeId, const QBluetoothUuid &value)
//[3]void setAttribute(quint16 attributeId, const QBluetoothServiceInfo::Sequence &value)
//[4]void setAttribute(quint16 attributeId, const QBluetoothServiceInfo::Alternative &value)

HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SETATTRIBUTE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
  {
    HB_FUNC_EXEC( QBLUETOOTHSERVICEINFO_SETATTRIBUTE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQBLUETOOTHUUID(2) )
  {
    HB_FUNC_EXEC( QBLUETOOTHSERVICEINFO_SETATTRIBUTE2 );
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
    QVariant * ptr = new QVariant( obj->attribute ( (quint16) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
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
    QList<quint16> list = obj->attributes (  );
    _qt5xhb_convert_qlist_quint16_to_array ( list );
  }
#endif
}


/*
bool contains(quint16 attributeId) const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_CONTAINS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->contains ( (quint16) hb_parni(1) ) );
  }
#endif
}


/*
void removeAttribute(quint16 attributeId)
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_REMOVEATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeAttribute ( (quint16) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void setServiceName(const QString &name)
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SETSERVICENAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setServiceName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString serviceName() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SERVICENAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->serviceName (  ).toLatin1().data() );
  }
#endif
}


/*
void setServiceDescription(const QString &description)
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SETSERVICEDESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setServiceDescription ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString serviceDescription() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SERVICEDESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->serviceDescription (  ).toLatin1().data() );
  }
#endif
}


/*
void setServiceProvider(const QString &provider)
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SETSERVICEPROVIDER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setServiceProvider ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString serviceProvider() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SERVICEPROVIDER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->serviceProvider (  ).toLatin1().data() );
  }
#endif
}


/*
QBluetoothServiceInfo::Protocol socketProtocol() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SOCKETPROTOCOL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->socketProtocol (  ) );
  }
#endif
}


/*
int protocolServiceMultiplexer() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_PROTOCOLSERVICEMULTIPLEXER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->protocolServiceMultiplexer (  ) );
  }
#endif
}


/*
int serverChannel() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SERVERCHANNEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->serverChannel (  ) );
  }
#endif
}



/*
void setServiceAvailability(quint8 availability)
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SETSERVICEAVAILABILITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setServiceAvailability ( (quint8) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
quint8 serviceAvailability() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SERVICEAVAILABILITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->serviceAvailability (  ) );
  }
#endif
}


/*
void setServiceUuid(const QBluetoothUuid &uuid)
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SETSERVICEUUID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothUuid * par1 = (QBluetoothUuid *) _qt5xhb_itemGetPtr(1);
    obj->setServiceUuid ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QBluetoothUuid serviceUuid() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SERVICEUUID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothUuid * ptr = new QBluetoothUuid( obj->serviceUuid (  ) );
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
    QList<QBluetoothUuid> list = obj->serviceClassUuids (  );
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
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_ISREGISTERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isRegistered (  ) );
  }
#endif
}


/*
bool registerService(const QBluetoothAddress &localAdapter = QBluetoothAddress())
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_REGISTERSERVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothAddress par1 = ISNIL(1)? QBluetoothAddress() : *(QBluetoothAddress *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->registerService ( par1 ) );
  }
#endif
}


/*
bool unregisterService()
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_UNREGISTERSERVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceInfo * obj = (QBluetoothServiceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->unregisterService (  ) );
  }
#endif
}



HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QBLUETOOTHSERVICEINFO_NEWFROM );
}

HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QBLUETOOTHSERVICEINFO_NEWFROM );
}

HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
