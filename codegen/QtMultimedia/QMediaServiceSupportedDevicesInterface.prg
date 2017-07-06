$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QMediaServiceSupportedDevicesInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD deviceDescription
   METHOD devices

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
virtual QString deviceDescription(const QByteArray & service, const QByteArray & device) = 0
*/
HB_FUNC_STATIC( QMEDIASERVICESUPPORTEDDEVICESINTERFACE_DEVICEDESCRIPTION )
{
  QMediaServiceSupportedDevicesInterface * obj = (QMediaServiceSupportedDevicesInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->deviceDescription ( *PQBYTEARRAY(1), *PQBYTEARRAY(2) ) );
  }
}


/*
virtual QList<QByteArray> devices(const QByteArray & service) const = 0
*/
HB_FUNC_STATIC( QMEDIASERVICESUPPORTEDDEVICESINTERFACE_DEVICES )
{
  QMediaServiceSupportedDevicesInterface * obj = (QMediaServiceSupportedDevicesInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QByteArray> list = obj->devices ( *PQBYTEARRAY(1) );
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



$extraMethods

#pragma ENDDUMP
