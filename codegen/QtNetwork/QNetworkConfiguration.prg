$header

#include "hbclass.ch"

CLASS QNetworkConfiguration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bearerType
   METHOD bearerTypeName
   METHOD children
   METHOD identifier
   METHOD isRoamingAvailable
   METHOD isValid
   METHOD name
   METHOD purpose
   METHOD state
   METHOD type

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
QNetworkConfiguration ()
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_NEW1 )
{
  QNetworkConfiguration * o = new QNetworkConfiguration ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QNetworkConfiguration ( const QNetworkConfiguration & other )
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_NEW2 )
{
  QNetworkConfiguration * o = new QNetworkConfiguration ( *PQNETWORKCONFIGURATION(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QNetworkConfiguration ()
//[2]QNetworkConfiguration ( const QNetworkConfiguration & other )

HB_FUNC_STATIC( QNETWORKCONFIGURATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QNETWORKCONFIGURATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKCONFIGURATION(1) )
  {
    HB_FUNC_EXEC( QNETWORKCONFIGURATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
BearerType bearerType () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_BEARERTYPE )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bearerType () );
  }
}


/*
QString bearerTypeName () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_BEARERTYPENAME )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->bearerTypeName () );
  }
}


/*
QList<QNetworkConfiguration> children () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_CHILDREN )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QNetworkConfiguration> list = obj->children ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QNETWORKCONFIGURATION" );
    #else
    pDynSym = hb_dynsymFindName( "QNETWORKCONFIGURATION" );
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
        hb_itemPutPtr( pItem, (QNetworkConfiguration *) new QNetworkConfiguration ( list[i] ) );
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
QString identifier () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_IDENTIFIER )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->identifier () );
  }
}


/*
bool isRoamingAvailable () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_ISROAMINGAVAILABLE )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isRoamingAvailable () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_ISVALID )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
QString name () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_NAME )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}


/*
Purpose purpose () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_PURPOSE )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->purpose () );
  }
}


/*
StateFlags state () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_STATE )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state () );
  }
}


/*
Type type () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_TYPE )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
}



$extraMethods

#pragma ENDDUMP
