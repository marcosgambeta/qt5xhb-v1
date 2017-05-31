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

CLASS QAudioSystemPlugin INHERIT QObject,QAudioSystemFactoryInterface

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD availableDevices
   METHOD createInput
   METHOD createOutput
   METHOD createDeviceInfo

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAudioSystemPlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAudioSystemPlugin>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAudioSystemPlugin>
#endif


HB_FUNC_STATIC( QAUDIOSYSTEMPLUGIN_DELETE )
{
  QAudioSystemPlugin * obj = (QAudioSystemPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QAUDIOSYSTEMPLUGIN_AVAILABLEDEVICES )
{
  QAudioSystemPlugin * obj = (QAudioSystemPlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QList<QByteArray> list = obj->availableDevices ( (QAudio::Mode) par1 );
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
HB_FUNC_STATIC( QAUDIOSYSTEMPLUGIN_CREATEINPUT )
{
  QAudioSystemPlugin * obj = (QAudioSystemPlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
    QAbstractAudioInput * ptr = obj->createInput ( *par1 );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTAUDIOINPUT" );
  }
}


/*
virtual QAbstractAudioOutput* createOutput(const QByteArray& device) = 0
*/
HB_FUNC_STATIC( QAUDIOSYSTEMPLUGIN_CREATEOUTPUT )
{
  QAudioSystemPlugin * obj = (QAudioSystemPlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
    QAbstractAudioOutput * ptr = obj->createOutput ( *par1 );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTAUDIOOUTPUT" );
  }
}


/*
virtual QAbstractAudioDeviceInfo* createDeviceInfo(const QByteArray& device, QAudio::Mode mode) = 0
*/
HB_FUNC_STATIC( QAUDIOSYSTEMPLUGIN_CREATEDEVICEINFO )
{
  QAudioSystemPlugin * obj = (QAudioSystemPlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    QAbstractAudioDeviceInfo * ptr = obj->createDeviceInfo ( *par1, (QAudio::Mode) par2 );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTAUDIODEVICEINFO" );
  }
}



#pragma ENDDUMP
