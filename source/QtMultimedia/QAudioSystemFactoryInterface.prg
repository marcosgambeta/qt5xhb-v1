/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QABSTRACTAUDIOINPUT
REQUEST QABSTRACTAUDIOOUTPUT
REQUEST QABSTRACTAUDIODEVICEINFO
#endif

CLASS QAudioSystemFactoryInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD availableDevices
   METHOD createInput
   METHOD createOutput
   METHOD createDeviceInfo

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAudioSystemFactoryInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAudioSystemFactoryInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAudioSystemFactoryInterface>
#endif


HB_FUNC_STATIC( QAUDIOSYSTEMFACTORYINTERFACE_DELETE )
{
  QAudioSystemFactoryInterface * obj = (QAudioSystemFactoryInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
}

/*
virtual QList<QByteArray> availableDevices(QAudio::Mode) const = 0
*/
HB_FUNC_STATIC( QAUDIOSYSTEMFACTORYINTERFACE_AVAILABLEDEVICES )
{
  QAudioSystemFactoryInterface * obj = (QAudioSystemFactoryInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QByteArray> list = obj->availableDevices ( (QAudio::Mode) hb_parni(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
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
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
virtual QAbstractAudioInput* createInput(const QByteArray& device) = 0
*/
HB_FUNC_STATIC( QAUDIOSYSTEMFACTORYINTERFACE_CREATEINPUT )
{
  QAudioSystemFactoryInterface * obj = (QAudioSystemFactoryInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractAudioInput * ptr = obj->createInput ( *PQBYTEARRAY(1) );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTAUDIOINPUT" );
  }
}


/*
virtual QAbstractAudioOutput* createOutput(const QByteArray& device) = 0
*/
HB_FUNC_STATIC( QAUDIOSYSTEMFACTORYINTERFACE_CREATEOUTPUT )
{
  QAudioSystemFactoryInterface * obj = (QAudioSystemFactoryInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractAudioOutput * ptr = obj->createOutput ( *PQBYTEARRAY(1) );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTAUDIOOUTPUT" );
  }
}


/*
virtual QAbstractAudioDeviceInfo* createDeviceInfo(const QByteArray& device, QAudio::Mode mode) = 0
*/
HB_FUNC_STATIC( QAUDIOSYSTEMFACTORYINTERFACE_CREATEDEVICEINFO )
{
  QAudioSystemFactoryInterface * obj = (QAudioSystemFactoryInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractAudioDeviceInfo * ptr = obj->createDeviceInfo ( *PQBYTEARRAY(1), (QAudio::Mode) hb_parni(2) );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTAUDIODEVICEINFO" );
  }
}



HB_FUNC_STATIC( QAUDIOSYSTEMFACTORYINTERFACE_NEWFROM )
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

HB_FUNC_STATIC( QAUDIOSYSTEMFACTORYINTERFACE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QAUDIOSYSTEMFACTORYINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QAUDIOSYSTEMFACTORYINTERFACE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QAUDIOSYSTEMFACTORYINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QAUDIOSYSTEMFACTORYINTERFACE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QAUDIOSYSTEMFACTORYINTERFACE_SETSELFDESTRUCTION )
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