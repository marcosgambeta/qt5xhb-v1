$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSENSORGESTURERECOGNIZER
#endif

CLASS QSensorGesturePluginInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD createRecognizers
   METHOD supportedIds
   METHOD name

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
virtual QList <QSensorGestureRecognizer *> createRecognizers() = 0
*/
HB_FUNC_STATIC( QSENSORGESTUREPLUGININTERFACE_CREATERECOGNIZERS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesturePluginInterface * obj = (QSensorGesturePluginInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QSensorGestureRecognizer *> list = obj->createRecognizers ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSENSORGESTURERECOGNIZER" );
    #else
    pDynSym = hb_dynsymFindName( "QSENSORGESTURERECOGNIZER" );
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
        hb_itemPutPtr( pItem, (QSensorGestureRecognizer *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}


/*
virtual QStringList supportedIds() const = 0
*/
HB_FUNC_STATIC( QSENSORGESTUREPLUGININTERFACE_SUPPORTEDIDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesturePluginInterface * obj = (QSensorGesturePluginInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->supportedIds () );
  }
#endif
}


/*
virtual QString name() const = 0
*/
HB_FUNC_STATIC( QSENSORGESTUREPLUGININTERFACE_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGesturePluginInterface * obj = (QSensorGesturePluginInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->name () );
  }
#endif
}



$extraMethods

#pragma ENDDUMP
