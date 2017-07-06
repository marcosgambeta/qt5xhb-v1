$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOROUTEREQUEST
REQUEST QGEORECTANGLE
REQUEST QGEOROUTESEGMENT
REQUEST QGEOCOORDINATE
#endif

CLASS QGeoRoute

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setRouteId
   METHOD routeId
   METHOD setRequest
   METHOD request
   METHOD setBounds
   METHOD bounds
   METHOD setFirstRouteSegment
   METHOD firstRouteSegment
   METHOD setTravelTime
   METHOD travelTime
   METHOD setDistance
   METHOD distance
   METHOD setTravelMode
   METHOD travelMode
   METHOD setPath
   METHOD path

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QGeoRectangle>
#include <QGeoRouteSegment>

/*
QGeoRoute()
*/
void QGeoRoute_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * o = new QGeoRoute ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoRoute(const QGeoRoute &other)
*/
void QGeoRoute_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * o = new QGeoRoute ( *PQGEOROUTE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QGeoRoute()
//[2]QGeoRoute(const QGeoRoute &other)

HB_FUNC_STATIC( QGEOROUTE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoRoute_new1();
  }
  else if( ISNUMPAR(1) && ISQGEOMANEUVER(1) )
  {
    QGeoRoute_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

/*
void setRouteId(const QString &id)
*/
HB_FUNC_STATIC( QGEOROUTE_SETROUTEID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRouteId ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString routeId() const
*/
HB_FUNC_STATIC( QGEOROUTE_ROUTEID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->routeId () );
  }
#endif
}


/*
void setRequest(const QGeoRouteRequest &request)
*/
HB_FUNC_STATIC( QGEOROUTE_SETREQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRequest ( *PQGEOROUTEREQUEST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QGeoRouteRequest request() const
*/
HB_FUNC_STATIC( QGEOROUTE_REQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoRouteRequest * ptr = new QGeoRouteRequest( obj->request () );
    _qt5xhb_createReturnClass ( ptr, "QGEOROUTEREQUEST", true );
  }
#endif
}


/*
void setBounds(const QGeoRectangle &bounds)
*/
HB_FUNC_STATIC( QGEOROUTE_SETBOUNDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBounds ( *PQGEORECTANGLE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QGeoRectangle bounds() const
*/
HB_FUNC_STATIC( QGEOROUTE_BOUNDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoRectangle * ptr = new QGeoRectangle( obj->bounds () );
    _qt5xhb_createReturnClass ( ptr, "QGEORECTANGLE", true );
  }
#endif
}


/*
void setFirstRouteSegment(const QGeoRouteSegment &routeSegment)
*/
HB_FUNC_STATIC( QGEOROUTE_SETFIRSTROUTESEGMENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFirstRouteSegment ( *PQGEOROUTESEGMENT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QGeoRouteSegment firstRouteSegment() const
*/
HB_FUNC_STATIC( QGEOROUTE_FIRSTROUTESEGMENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoRouteSegment * ptr = new QGeoRouteSegment( obj->firstRouteSegment () );
    _qt5xhb_createReturnClass ( ptr, "QGEOROUTESEGMENT", true );
  }
#endif
}


/*
void setTravelTime(int secs)
*/
HB_FUNC_STATIC( QGEOROUTE_SETTRAVELTIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTravelTime ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int travelTime() const
*/
HB_FUNC_STATIC( QGEOROUTE_TRAVELTIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->travelTime () );
  }
#endif
}


/*
void setDistance(qreal distance)
*/
HB_FUNC_STATIC( QGEOROUTE_SETDISTANCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDistance ( (qreal) hb_parnd(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
qreal distance() const
*/
HB_FUNC_STATIC( QGEOROUTE_DISTANCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->distance () );
  }
#endif
}


/*
void setTravelMode(QGeoRouteRequest::TravelMode mode)
*/
HB_FUNC_STATIC( QGEOROUTE_SETTRAVELMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTravelMode ( (QGeoRouteRequest::TravelMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QGeoRouteRequest::TravelMode travelMode() const
*/
HB_FUNC_STATIC( QGEOROUTE_TRAVELMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->travelMode () );
  }
#endif
}


/*
void setPath(const QList<QGeoCoordinate> &path)
*/
HB_FUNC_STATIC( QGEOROUTE_SETPATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QGeoCoordinate> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QGeoCoordinate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setPath ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QList<QGeoCoordinate> path() const
*/
HB_FUNC_STATIC( QGEOROUTE_PATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoute * obj = (QGeoRoute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QGeoCoordinate> list = obj->path ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGEOCOORDINATE" );
    #else
    pDynSym = hb_dynsymFindName( "QGEOCOORDINATE" );
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
        hb_itemPutPtr( pItem, (QGeoCoordinate *) new QGeoCoordinate ( list[i] ) );
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
#endif
}



$extraMethods

#pragma ENDDUMP
