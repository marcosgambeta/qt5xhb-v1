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
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SETSERVICEUUIDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) && ISNUM(2) )
    {
      QList<QBluetoothUuid> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int i1;
      int nLen1 = hb_arrayLen(aList1);
      for (i1=0;i1<nLen1;i1++)
      {
        par1 << *(QBluetoothUuid *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      obj->setServiceUuids ( par1, (QBluetoothDeviceInfo::DataCompleteness) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QList<QBluetoothUuid> serviceUuids(DataCompleteness *completeness = 0) const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SERVICEUUIDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISOBJECT(1)||ISNIL(1)) ) // TODO: corigir codigo
    {
      QBluetoothDeviceInfo::DataCompleteness * par1 = ISNIL(1)? 0 : (QBluetoothDeviceInfo::DataCompleteness *) _qt5xhb_itemGetPtr(1);
      _qt5xhb_convert_qlist_qbluetoothuuid_to_array( obj->serviceUuids ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
DataCompleteness serviceUuidsCompleteness() const
*/
$method=5,2,0|QBluetoothDeviceInfo::DataCompleteness|serviceUuidsCompleteness|

$extraMethods

#pragma ENDDUMP
