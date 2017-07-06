$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBELEMENT
#endif

CLASS QWebElementCollection

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD append
   METHOD at
   METHOD count
   METHOD first
   METHOD last
   METHOD toList

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
QWebElementCollection ()
*/
HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_NEW1 )
{
  QWebElementCollection * o = new QWebElementCollection ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QWebElementCollection ( const QWebElement & contextElement, const QString & query )
*/
HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_NEW2 )
{
  QWebElementCollection * o = new QWebElementCollection ( *PQWEBELEMENT(1), PQSTRING(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QWebElementCollection ( const QWebElementCollection & other )
*/
HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_NEW3 )
{
  QWebElementCollection * o = new QWebElementCollection ( *PQWEBELEMENTCOLLECTION(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QWebElementCollection ()
//[2]QWebElementCollection ( const QWebElement & contextElement, const QString & query )
//[3]QWebElementCollection ( const QWebElementCollection & other )

HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QWEBELEMENTCOLLECTION_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQWEBELEMENT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QWEBELEMENTCOLLECTION_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENTCOLLECTION(1) )
  {
    HB_FUNC_EXEC( QWEBELEMENTCOLLECTION_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void append ( const QWebElementCollection & other )
*/
HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_APPEND )
{
  QWebElementCollection * obj = (QWebElementCollection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->append ( *PQWEBELEMENTCOLLECTION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWebElement at ( int i ) const
*/
HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_AT )
{
  QWebElementCollection * obj = (QWebElementCollection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->at ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}






/*
int count () const
*/
HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_COUNT )
{
  QWebElementCollection * obj = (QWebElementCollection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->count () );
  }
}




/*
QWebElement first () const
*/
HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_FIRST )
{
  QWebElementCollection * obj = (QWebElementCollection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->first () );
    _qt5xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QWebElement last () const
*/
HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_LAST )
{
  QWebElementCollection * obj = (QWebElementCollection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->last () );
    _qt5xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QList<QWebElement> toList () const
*/
HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_TOLIST )
{
  QWebElementCollection * obj = (QWebElementCollection *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWebElement> list = obj->toList ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWEBELEMENT" );
    #else
    pDynSym = hb_dynsymFindName( "QWEBELEMENT" );
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
        hb_itemPutPtr( pItem, (QWebElement *) new QWebElement ( list[i] ) );
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



$extraMethods

#pragma ENDDUMP
