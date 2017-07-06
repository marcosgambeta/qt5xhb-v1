$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKREQUEST
REQUEST QMEDIARESOURCE
REQUEST QURL
REQUEST QMEDIAPLAYLIST
#endif

CLASS QMediaContent

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new
   METHOD delete
   METHOD canonicalRequest
   METHOD canonicalResource
   METHOD canonicalUrl
   METHOD isNull
   METHOD playlist
   METHOD resources

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
QMediaContent()
*/
HB_FUNC_STATIC( QMEDIACONTENT_NEW1 )
{
  QMediaContent * o = new QMediaContent ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaContent(const QUrl & url)
*/
HB_FUNC_STATIC( QMEDIACONTENT_NEW2 )
{
  QMediaContent * o = new QMediaContent ( *PQURL(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaContent(const QNetworkRequest & request)
*/
HB_FUNC_STATIC( QMEDIACONTENT_NEW3 )
{
  QMediaContent * o = new QMediaContent ( *PQNETWORKREQUEST(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaContent(const QMediaResource & resource)
*/
HB_FUNC_STATIC( QMEDIACONTENT_NEW4 )
{
  QMediaContent * o = new QMediaContent ( *PQMEDIARESOURCE(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaContent(const QMediaResourceList & resources)
*/
HB_FUNC_STATIC( QMEDIACONTENT_NEW5 )
{
QMediaResourceList par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QMediaResource *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
  QMediaContent * o = new QMediaContent ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaContent(const QMediaContent & other)
*/
HB_FUNC_STATIC( QMEDIACONTENT_NEW6 )
{
  QMediaContent * o = new QMediaContent ( *PQMEDIACONTENT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaContent(QMediaPlaylist * playlist, const QUrl & contentUrl = QUrl(), bool takeOwnership = false)
*/
HB_FUNC_STATIC( QMEDIACONTENT_NEW7 )
{
  QMediaPlaylist * par1 = (QMediaPlaylist *) _qt5xhb_itemGetPtr(1);
  QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(2);
  bool par3 = ISNIL(3)? false : hb_parl(3);
  QMediaContent * o = new QMediaContent ( par1, par2, par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QMediaContent()
//[2]QMediaContent(const QUrl & url)
//[3]QMediaContent(const QNetworkRequest & request)
//[4]QMediaContent(const QMediaResource & resource)
//[5]QMediaContent(const QMediaResourceList & resources)
//[6]QMediaContent(const QMediaContent & other)
//[7]QMediaContent(QMediaPlaylist * playlist, const QUrl & contentUrl = QUrl(), bool takeOwnership = false)

HB_FUNC_STATIC( QMEDIACONTENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMEDIACONTENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QMEDIACONTENT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKREQUEST(1) )
  {
    HB_FUNC_EXEC( QMEDIACONTENT_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQMEDIARESOURCE(1) )
  {
    HB_FUNC_EXEC( QMEDIACONTENT_NEW4 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QMEDIACONTENT_NEW5 );
  }
  else if( ISNUMPAR(1) && ISQMEDIACONTENT(1) )
  {
    HB_FUNC_EXEC( QMEDIACONTENT_NEW6 );
  }
  else if( ISBETWEEN(1,3) && ISQMEDIAPLAYLIST(1) && (ISQURL(2)||ISNIL(2)) && ISOPTLOG(3) )
  {
    HB_FUNC_EXEC( QMEDIACONTENT_NEW7 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QNetworkRequest canonicalRequest() const
*/
HB_FUNC_STATIC( QMEDIACONTENT_CANONICALREQUEST )
{
  QMediaContent * obj = (QMediaContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkRequest * ptr = new QNetworkRequest( obj->canonicalRequest () );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKREQUEST", true );
  }
}


/*
QMediaResource canonicalResource() const
*/
HB_FUNC_STATIC( QMEDIACONTENT_CANONICALRESOURCE )
{
  QMediaContent * obj = (QMediaContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaResource * ptr = new QMediaResource( obj->canonicalResource () );
    _qt5xhb_createReturnClass ( ptr, "QMEDIARESOURCE" );
  }
}


/*
QUrl canonicalUrl() const
*/
HB_FUNC_STATIC( QMEDIACONTENT_CANONICALURL )
{
  QMediaContent * obj = (QMediaContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->canonicalUrl () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QMEDIACONTENT_ISNULL )
{
  QMediaContent * obj = (QMediaContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
QMediaPlaylist * playlist() const
*/
HB_FUNC_STATIC( QMEDIACONTENT_PLAYLIST )
{
  QMediaContent * obj = (QMediaContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaPlaylist * ptr = obj->playlist ();
    _qt5xhb_createReturnClass ( ptr, "QMEDIAPLAYLIST" );
  }
}


/*
QMediaResourceList resources() const
*/
HB_FUNC_STATIC( QMEDIACONTENT_RESOURCES )
{
  QMediaContent * obj = (QMediaContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaResourceList list = obj->resources ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QMEDIARESOURCE" );
    #else
    pDynSym = hb_dynsymFindName( "QMEDIARESOURCE" );
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
        hb_itemPutPtr( pItem, (QMediaResource *) new QMediaResource( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}



$extraMethods

#pragma ENDDUMP
