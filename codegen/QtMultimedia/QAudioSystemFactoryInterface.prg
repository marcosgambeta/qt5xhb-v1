$header

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

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

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



$extraMethods

#pragma ENDDUMP
