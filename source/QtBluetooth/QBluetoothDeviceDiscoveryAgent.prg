/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHDEVICEINFO
#endif

CLASS QBluetoothDeviceDiscoveryAgent INHERIT QObject

   DATA class_id INIT Class_Id_QBluetoothDeviceDiscoveryAgent
   DATA class_flags INIT 1
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

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothDeviceDiscoveryAgent>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothDeviceDiscoveryAgent>
#endif
#endif

/*
QBluetoothDeviceDiscoveryAgent(QObject *parent = 0)
*/
void QBluetoothDeviceDiscoveryAgent_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QBluetoothDeviceDiscoveryAgent * o = new QBluetoothDeviceDiscoveryAgent ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothDeviceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = 0)
*/
void QBluetoothDeviceDiscoveryAgent_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothAddress * par1 = (QBluetoothAddress *) _qt5xhb_itemGetPtr(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
  QBluetoothDeviceDiscoveryAgent * o = new QBluetoothDeviceDiscoveryAgent ( *par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

//[1]QBluetoothDeviceDiscoveryAgent(QObject *parent = 0)
//[2]QBluetoothDeviceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = 0)

HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QBluetoothDeviceDiscoveryAgent_new1();
  }
  else if( ISBETWEEN(1,2) && ISQBLUETOOTHADDRESS(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QBluetoothDeviceDiscoveryAgent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * obj = (QBluetoothDeviceDiscoveryAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QBluetoothDeviceDiscoveryAgent::InquiryType inquiryType() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_INQUIRYTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * obj = (QBluetoothDeviceDiscoveryAgent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->inquiryType (  ) );
  }
#endif
}

/*
void setInquiryType(QBluetoothDeviceDiscoveryAgent::InquiryType type)
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_SETINQUIRYTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * obj = (QBluetoothDeviceDiscoveryAgent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setInquiryType (  (QBluetoothDeviceDiscoveryAgent::InquiryType) par1 );
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
bool isActive() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_ISACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * obj = (QBluetoothDeviceDiscoveryAgent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isActive (  ) );
  }
#endif
}

/*
Error error() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * obj = (QBluetoothDeviceDiscoveryAgent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->error (  ) );
  }
#endif
}

/*
QString errorString() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * obj = (QBluetoothDeviceDiscoveryAgent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
#endif
}

/*
QList<QBluetoothDeviceInfo> discoveredDevices() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_DISCOVEREDDEVICES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * obj = (QBluetoothDeviceDiscoveryAgent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QBluetoothDeviceInfo> list = obj->discoveredDevices (  );
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
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_START )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * obj = (QBluetoothDeviceDiscoveryAgent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->start (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void stop()
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_STOP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * obj = (QBluetoothDeviceDiscoveryAgent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->stop (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

#pragma ENDDUMP
