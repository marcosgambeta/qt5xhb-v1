/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBLUETOOTHADDRESS
REQUEST QBLUETOOTHHOSTINFO

CLASS QBluetoothLocalDevice INHERIT QObject

   DATA class_id INIT Class_Id_QBluetoothLocalDevice
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isValid
   METHOD requestPairing
   METHOD pairingStatus
   METHOD setHostMode
   METHOD hostMode
   METHOD powerOn
   METHOD name
   METHOD address
   METHOD pairingConfirmation
   METHOD allDevices
   METHOD onHostModeStateChanged
   METHOD onPairingFinished
   METHOD onPairingDisplayPinCode
   METHOD onPairingDisplayConfirmation
   METHOD onError
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBluetoothLocalDevice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothLocalDevice>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothLocalDevice>
#endif
#endif

/*
QBluetoothLocalDevice(QObject *parent = 0)
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QBluetoothLocalDevice * o = new QBluetoothLocalDevice ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QBluetoothLocalDevice *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QBluetoothLocalDevice(const QBluetoothAddress &address, QObject *parent = 0)
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothAddress * par1 = (QBluetoothAddress *) _qtxhb_itemGetPtr(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qtxhb_itemGetPtr(2);
  QBluetoothLocalDevice * o = new QBluetoothLocalDevice ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QBluetoothLocalDevice *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QBluetoothLocalDevice(QObject *parent = 0)
//[2]QBluetoothLocalDevice(const QBluetoothAddress &address, QObject *parent = 0)

HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QBLUETOOTHLOCALDEVICE_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQBLUETOOTHADDRESS(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBLUETOOTHLOCALDEVICE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
#endif
}


/*
void requestPairing(const QBluetoothAddress &address, Pairing pairing)
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_REQUESTPAIRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothAddress * par1 = (QBluetoothAddress *) _qtxhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->requestPairing ( *par1,  (QBluetoothLocalDevice::Pairing) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
Pairing pairingStatus(const QBluetoothAddress &address) const
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_PAIRINGSTATUS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothAddress * par1 = (QBluetoothAddress *) _qtxhb_itemGetPtr(1);
    int i = obj->pairingStatus ( *par1 );
    hb_retni( i );
  }
#endif
}


/*
void setHostMode(QBluetoothLocalDevice::HostMode mode)
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_SETHOSTMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setHostMode (  (QBluetoothLocalDevice::HostMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
HostMode hostMode() const
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_HOSTMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->hostMode (  );
    hb_retni( i );
  }
#endif
}


/*
void powerOn()
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_POWERON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->powerOn (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString name() const
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
#endif
}


/*
QBluetoothAddress address() const
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_ADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothAddress * ptr = new QBluetoothAddress( obj->address (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBLUETOOTHADDRESS" );
  }
#endif
}


/*
void pairingConfirmation(bool confirmation)
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_PAIRINGCONFIRMATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->pairingConfirmation ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
static QList<QBluetoothHostInfo> allDevices()
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_ALLDEVICES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QList<QBluetoothHostInfo> list = QBluetoothLocalDevice::allDevices (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QBLUETOOTHHOSTINFO" );
  #else
  pDynSym = hb_dynsymFindName( "QBLUETOOTHHOSTINFO" );
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
      hb_itemPutPtr( pItem, (QBluetoothHostInfo *) new QBluetoothHostInfo ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
#endif
}




#pragma ENDDUMP
