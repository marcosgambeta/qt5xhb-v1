$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKADDRESSENTRY
REQUEST QHOSTADDRESS
#endif

CLASS QNetworkInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addressEntries
   METHOD flags
   METHOD hardwareAddress
   METHOD humanReadableName
   METHOD index
   METHOD isValid
   METHOD name
   METHOD allAddresses
   METHOD allInterfaces
   METHOD interfaceFromIndex
   METHOD interfaceFromName

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

/*
QNetworkInterface ()
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_NEW1 )
{
  QNetworkInterface * o = new QNetworkInterface ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QNetworkInterface ( const QNetworkInterface & other )
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_NEW2 )
{
  QNetworkInterface * o = new QNetworkInterface ( *PQNETWORKINTERFACE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QNetworkInterface ()
//[2]QNetworkInterface ( const QNetworkInterface & other )

HB_FUNC_STATIC( QNETWORKINTERFACE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QNETWORKINTERFACE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKINTERFACE(1) )
  {
    HB_FUNC_EXEC( QNETWORKINTERFACE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QList<QNetworkAddressEntry> addressEntries () const
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_ADDRESSENTRIES )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QNetworkAddressEntry> list = obj->addressEntries ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QNETWORKADDRESSENTRY" );
    #else
    pDynSym = hb_dynsymFindName( "QNETWORKADDRESSENTRY" );
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
        hb_itemPutPtr( pItem, (QNetworkAddressEntry *) new QNetworkAddressEntry ( list[i] ) );
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
InterfaceFlags flags () const
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_FLAGS )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->flags () );
  }
}


/*
QString hardwareAddress () const
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_HARDWAREADDRESS )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->hardwareAddress () );
  }
}


/*
QString humanReadableName () const
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_HUMANREADABLENAME )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->humanReadableName () );
  }
}


/*
int index () const
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_INDEX )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->index () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_ISVALID )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
QString name () const
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_NAME )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}


/*
static QList<QHostAddress> allAddresses ()
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_ALLADDRESSES )
{
  QList<QHostAddress> list = QNetworkInterface::allAddresses ();
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QHOSTADDRESS" );
  #else
  pDynSym = hb_dynsymFindName( "QHOSTADDRESS" );
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
      hb_itemPutPtr( pItem, (QHostAddress *) new QHostAddress ( list[i] ) );
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
static QList<QNetworkInterface> allInterfaces ()
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_ALLINTERFACES )
{
  QList<QNetworkInterface> list = QNetworkInterface::allInterfaces ();
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QNETWORKINTERFACE" );
  #else
  pDynSym = hb_dynsymFindName( "QNETWORKINTERFACE" );
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
      hb_itemPutPtr( pItem, (QNetworkInterface *) new QNetworkInterface ( list[i] ) );
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
static QNetworkInterface interfaceFromIndex ( int index )
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_INTERFACEFROMINDEX )
{
  QNetworkInterface * ptr = new QNetworkInterface( QNetworkInterface::interfaceFromIndex ( PINT(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QNETWORKINTERFACE", true );
}


/*
static QNetworkInterface interfaceFromName ( const QString & name )
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_INTERFACEFROMNAME )
{
  QNetworkInterface * ptr = new QNetworkInterface( QNetworkInterface::interfaceFromName ( PQSTRING(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QNETWORKINTERFACE", true );
}



$extraMethods

#pragma ENDDUMP
