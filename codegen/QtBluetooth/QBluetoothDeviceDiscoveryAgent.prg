$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHDEVICEINFO
#endif

CLASS QBluetoothDeviceDiscoveryAgent INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD inquiryType
   METHOD setInquiryType
   METHOD isActive
   METHOD error
   METHOD errorString
   METHOD discoveredDevices
   METHOD start
   METHOD stop

   METHOD onDeviceDiscovered
   METHOD onFinished
   METHOD onError
   METHOD onCanceled

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBluetoothDeviceDiscoveryAgent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

$includes=5,2,0

/*
QBluetoothDeviceDiscoveryAgent(QObject *parent = 0)
*/
void QBluetoothDeviceDiscoveryAgent_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * o = new QBluetoothDeviceDiscoveryAgent ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothDeviceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = 0)
*/
void QBluetoothDeviceDiscoveryAgent_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * o = new QBluetoothDeviceDiscoveryAgent ( *PQBLUETOOTHADDRESS(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

//[1]QBluetoothDeviceDiscoveryAgent(QObject *parent = 0)
//[2]QBluetoothDeviceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = 0)

HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QBluetoothDeviceDiscoveryAgent_new1();
  }
  else if( ISBETWEEN(1,2) && ISQBLUETOOTHADDRESS(1) && ISOPTQOBJECT(2) )
  {
    QBluetoothDeviceDiscoveryAgent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
QBluetoothDeviceDiscoveryAgent::InquiryType inquiryType() const
*/
$method=5,2,0|QBluetoothDeviceDiscoveryAgent::InquiryType|inquiryType|

/*
void setInquiryType(QBluetoothDeviceDiscoveryAgent::InquiryType type)
*/
$method=5,2,0|void|setInquiryType|QBluetoothDeviceDiscoveryAgent::InquiryType

/*
bool isActive() const
*/
$method=5,2,0|bool|isActive|

/*
Error error() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * obj = (QBluetoothDeviceDiscoveryAgent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->error () );
  }
#endif
}

/*
QString errorString() const
*/
$method=5,2,0|QString|errorString|

/*
QList<QBluetoothDeviceInfo> discoveredDevices() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_DISCOVEREDDEVICES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * obj = (QBluetoothDeviceDiscoveryAgent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QBluetoothDeviceInfo> list = obj->discoveredDevices ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBLUETOOTHDEVICEINFO" );
    #else
    pDynSym = hb_dynsymFindName( "QBLUETOOTHDEVICEINFO" );
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
        hb_itemPutPtr( pItem, (QBluetoothDeviceInfo *) new QBluetoothDeviceInfo ( list[i] ) );
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
void start()
*/
$method=5,2,0|void|start|

/*
void stop()
*/
$method=5,2,0|void|stop|

#pragma ENDDUMP
