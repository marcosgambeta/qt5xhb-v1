/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBLUETOOTHADDRESS
REQUEST QBLUETOOTHUUID

CLASS QBluetoothDeviceInfo

   DATA pointer
   DATA class_id INIT Class_Id_QBluetoothDeviceInfo
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
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

PROCEDURE destroyObject () CLASS QBluetoothDeviceInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothDeviceInfo>
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
#include <QBluetoothDeviceInfo>
#endif
#endif

#include <QBluetoothAddress>
#include <QBluetoothUuid>

/*
QBluetoothDeviceInfo()
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * o = new QBluetoothDeviceInfo (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QBluetoothDeviceInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QBluetoothDeviceInfo(const QBluetoothAddress &address, const QString &name, quint32 classOfDevice)
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothAddress * par1 = (QBluetoothAddress *) _qtxhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  quint32 par3 = hb_parni(3);
  QBluetoothDeviceInfo * o = new QBluetoothDeviceInfo ( *par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QBluetoothDeviceInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QBluetoothDeviceInfo(const QBluetoothDeviceInfo &other)
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * par1 = (QBluetoothDeviceInfo *) _qtxhb_itemGetPtr(1);
  QBluetoothDeviceInfo * o = new QBluetoothDeviceInfo ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QBluetoothDeviceInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QBluetoothDeviceInfo()
//[2]QBluetoothDeviceInfo(const QBluetoothAddress &address, const QString &name, quint32 classOfDevice)
//[3]QBluetoothDeviceInfo(const QBluetoothDeviceInfo &other)

HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QBLUETOOTHDEVICEINFO_NEW1 );
  }
  else if( ISNUMPAR(3) && ISQBLUETOOTHADDRESS(1) && ISCHAR(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QBLUETOOTHDEVICEINFO_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHDEVICEINFO(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHDEVICEINFO_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
#endif
}


/*
bool isCached() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_ISCACHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isCached (  ) );
  }
#endif
}


/*
void setCached(bool cached)
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SETCACHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCached ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QBluetoothAddress address() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_ADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothAddress * ptr = new QBluetoothAddress( obj->address (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBLUETOOTHADDRESS" );
  }
#endif
}


/*
QString name() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
#endif
}


/*
ServiceClasses serviceClasses() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SERVICECLASSES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->serviceClasses (  ) );
  }
#endif
}


/*
MajorDeviceClass majorDeviceClass() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_MAJORDEVICECLASS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->majorDeviceClass (  ) );
  }
#endif
}


/*
quint8 minorDeviceClass() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_MINORDEVICECLASS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->minorDeviceClass (  ) );
  }
#endif
}


/*
qint16 rssi() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_RSSI )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->rssi (  ) );
  }
#endif
}


/*
void setRssi(qint16 signal)
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SETRSSI )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRssi ( (qint16) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void setServiceUuids(const QList<QBluetoothUuid> &uuids, DataCompleteness completeness)
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SETSERVICEUUIDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QBluetoothUuid> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QBluetoothUuid *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    int par2 = hb_parni(2);
    obj->setServiceUuids ( par1,  (QBluetoothDeviceInfo::DataCompleteness) par2 );
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
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothDeviceInfo::DataCompleteness * par1 = ISNIL(1)? 0 : (QBluetoothDeviceInfo::DataCompleteness *) _qtxhb_itemGetPtr(1);
    QList<QBluetoothUuid> list = obj->serviceUuids ( par1 );
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
DataCompleteness serviceUuidsCompleteness() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SERVICEUUIDSCOMPLETENESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->serviceUuidsCompleteness (  ) );
  }
#endif
}



HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_NEWFROM )
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

HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QBLUETOOTHDEVICEINFO_NEWFROM );
}

HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QBLUETOOTHDEVICEINFO_NEWFROM );
}

HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SETSELFDESTRUCTION )
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