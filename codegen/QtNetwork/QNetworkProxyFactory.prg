$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKPROXY
#endif

CLASS QNetworkProxyFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD queryProxy
   METHOD proxyForQuery
   METHOD setApplicationProxyFactory
   METHOD setUseSystemConfiguration
   METHOD systemProxyForQuery

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
virtual QList<QNetworkProxy> queryProxy ( const QNetworkProxyQuery & query = QNetworkProxyQuery() ) = 0
*/
HB_FUNC_STATIC( QNETWORKPROXYFACTORY_QUERYPROXY )
{
  QNetworkProxyFactory * obj = (QNetworkProxyFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkProxyQuery par1 = ISNIL(1)? QNetworkProxyQuery() : *(QNetworkProxyQuery *) _qt5xhb_itemGetPtr(1);
    QList<QNetworkProxy> list = obj->queryProxy ( par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QNETWORKPROXY" );
    #else
    pDynSym = hb_dynsymFindName( "QNETWORKPROXY" );
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
        hb_itemPutPtr( pItem, (QNetworkProxy *) new QNetworkProxy ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
static QList<QNetworkProxy> proxyForQuery ( const QNetworkProxyQuery & query )
*/
HB_FUNC_STATIC( QNETWORKPROXYFACTORY_PROXYFORQUERY )
{
  QList<QNetworkProxy> list = QNetworkProxyFactory::proxyForQuery ( *PQNETWORKPROXYQUERY(1) );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QNETWORKPROXY" );
  #else
  pDynSym = hb_dynsymFindName( "QNETWORKPROXY" );
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
      hb_itemPutPtr( pItem, (QNetworkProxy *) new QNetworkProxy ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}


/*
static void setApplicationProxyFactory ( QNetworkProxyFactory * factory )
*/
HB_FUNC_STATIC( QNETWORKPROXYFACTORY_SETAPPLICATIONPROXYFACTORY )
{
  QNetworkProxyFactory * par1 = (QNetworkProxyFactory *) _qt5xhb_itemGetPtr(1);
  QNetworkProxyFactory::setApplicationProxyFactory ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setUseSystemConfiguration ( bool enable )
*/
HB_FUNC_STATIC( QNETWORKPROXYFACTORY_SETUSESYSTEMCONFIGURATION )
{
  QNetworkProxyFactory::setUseSystemConfiguration ( PBOOL(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QList<QNetworkProxy> systemProxyForQuery ( const QNetworkProxyQuery & query = QNetworkProxyQuery() )
*/
HB_FUNC_STATIC( QNETWORKPROXYFACTORY_SYSTEMPROXYFORQUERY )
{
  QNetworkProxyQuery par1 = ISNIL(1)? QNetworkProxyQuery() : *(QNetworkProxyQuery *) _qt5xhb_itemGetPtr(1);
  QList<QNetworkProxy> list = QNetworkProxyFactory::systemProxyForQuery ( par1 );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QNETWORKPROXY" );
  #else
  pDynSym = hb_dynsymFindName( "QNETWORKPROXY" );
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
      hb_itemPutPtr( pItem, (QNetworkProxy *) new QNetworkProxy ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}



$extraMethods

#pragma ENDDUMP
