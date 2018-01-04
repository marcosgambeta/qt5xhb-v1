/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothDeviceInfo>
#endif
#endif

#include <QBluetoothAddress>
#include <QBluetoothUuid>

void _qt5xhb_convert_qlist_qbluetoothuuid_to_array ( const QList<QBluetoothUuid> list );

/*
QBluetoothDeviceInfo()
*/
void QBluetoothDeviceInfo_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * o = new QBluetoothDeviceInfo ();
  _qt5xhb_returnNewObject( o, false );
#endif
}

/*
QBluetoothDeviceInfo(const QBluetoothAddress &address, const QString &name, quint32 classOfDevice)
*/
void QBluetoothDeviceInfo_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * o = new QBluetoothDeviceInfo ( *PQBLUETOOTHADDRESS(1), PQSTRING(2), PQUINT32(3) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

/*
QBluetoothDeviceInfo(const QBluetoothDeviceInfo &other)
*/
void QBluetoothDeviceInfo_new3 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * o = new QBluetoothDeviceInfo ( *PQBLUETOOTHDEVICEINFO(1) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

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

HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

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
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isValid () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool isCached() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_ISCACHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isCached () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setCached(bool cached)
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SETCACHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setCached ( PBOOL(1) );
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
QBluetoothAddress address() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_ADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBluetoothAddress * ptr = new QBluetoothAddress( obj->address () );
    _qt5xhb_createReturnClass ( ptr, "QBLUETOOTHADDRESS" );
  }
#endif
}

/*
QString name() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->name () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
ServiceClasses serviceClasses() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SERVICECLASSES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->serviceClasses () );
  }
#endif
}

/*
MajorDeviceClass majorDeviceClass() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_MAJORDEVICECLASS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->majorDeviceClass () );
  }
#endif
}

/*
quint8 minorDeviceClass() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_MINORDEVICECLASS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQUINT8( obj->minorDeviceClass () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
qint16 rssi() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_RSSI )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQINT16( obj->rssi () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setRssi(qint16 signal)
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SETRSSI )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setRssi ( PQINT16(1) );
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
    if( (ISOBJECT(1)||ISNIL(1)) ) // TODO: implementar classe
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
HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SERVICEUUIDSCOMPLETENESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceInfo * obj = (QBluetoothDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->serviceUuidsCompleteness () );
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
