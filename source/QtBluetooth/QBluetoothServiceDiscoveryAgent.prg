/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QBLUETOOTHSERVICEINFO
REQUEST QBLUETOOTHUUID
REQUEST QBLUETOOTHADDRESS
#endif

CLASS QBluetoothServiceDiscoveryAgent INHERIT QObject

   DATA class_id INIT Class_Id_QBluetoothServiceDiscoveryAgent
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isActive
   METHOD error
   METHOD errorString
   METHOD discoveredServices
   METHOD setUuidFilter1
   METHOD setUuidFilter2
   METHOD setUuidFilter
   METHOD uuidFilter
   METHOD setRemoteAddress
   METHOD remoteAddress
   METHOD start
   METHOD stop
   METHOD clear
   METHOD onServiceDiscovered
   METHOD onFinished
   METHOD onCanceled
   METHOD onError
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBluetoothServiceDiscoveryAgent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothServiceDiscoveryAgent>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothServiceDiscoveryAgent>
#endif
#endif

/*
QBluetoothServiceDiscoveryAgent(QObject *parent = 0)
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QBluetoothServiceDiscoveryAgent * o = new QBluetoothServiceDiscoveryAgent ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QBluetoothServiceDiscoveryAgent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QBluetoothServiceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = 0)
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothAddress * par1 = (QBluetoothAddress *) _qtxhb_itemGetPtr(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qtxhb_itemGetPtr(2);
  QBluetoothServiceDiscoveryAgent * o = new QBluetoothServiceDiscoveryAgent ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QBluetoothServiceDiscoveryAgent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QBluetoothServiceDiscoveryAgent(QObject *parent = 0)
//[2]QBluetoothServiceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = 0)

HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QBLUETOOTHSERVICEDISCOVERYAGENT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQBLUETOOTHADDRESS(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBLUETOOTHSERVICEDISCOVERYAGENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isActive() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_ISACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isActive (  ) );
  }
#endif
}


/*
Error error() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error (  ) );
  }
#endif
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
#endif
}


/*
QList<QBluetoothServiceInfo> discoveredServices() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_DISCOVEREDSERVICES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QBluetoothServiceInfo> list = obj->discoveredServices (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBLUETOOTHSERVICEINFO" );
    #else
    pDynSym = hb_dynsymFindName( "QBLUETOOTHSERVICEINFO" );
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
        hb_itemPutPtr( pItem, (QBluetoothServiceInfo *) new QBluetoothServiceInfo ( list[i] ) );
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
void setUuidFilter(const QList<QBluetoothUuid> &uuids)
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_SETUUIDFILTER1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) _qtxhb_itemGetPtrStackSelfItem();
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
    obj->setUuidFilter ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setUuidFilter(const QBluetoothUuid &uuid)
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_SETUUIDFILTER2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothUuid * par1 = (QBluetoothUuid *) _qtxhb_itemGetPtr(1);
    obj->setUuidFilter ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


//[1]void setUuidFilter(const QList<QBluetoothUuid> &uuids)
//[2]void setUuidFilter(const QBluetoothUuid &uuid)

HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_SETUUIDFILTER )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHSERVICEDISCOVERYAGENT_SETUUIDFILTER1 );
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHUUID(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHSERVICEDISCOVERYAGENT_SETUUIDFILTER2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QList<QBluetoothUuid> uuidFilter() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_UUIDFILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QBluetoothUuid> list = obj->uuidFilter (  );
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
bool setRemoteAddress(const QBluetoothAddress &address)
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_SETREMOTEADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothAddress * par1 = (QBluetoothAddress *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->setRemoteAddress ( *par1 ) );
  }
#endif
}


/*
QBluetoothAddress remoteAddress() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_REMOTEADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothAddress * ptr = new QBluetoothAddress( obj->remoteAddress (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBLUETOOTHADDRESS" );
  }
#endif
}


/*
void start(DiscoveryMode mode = MinimalDiscovery)
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_START )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QBluetoothServiceDiscoveryAgent::MinimalDiscovery : hb_parni(1);
    obj->start (  (QBluetoothServiceDiscoveryAgent::DiscoveryMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void stop()
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_STOP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void clear()
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
