/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCODINGMANAGER
REQUEST QGEOMAPPINGMANAGER
REQUEST QGEOROUTINGMANAGER
REQUEST QPLACEMANAGER
#endif

CLASS QGeoServiceProvider INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD availableServiceProviders
   METHOD routingFeatures
   METHOD geocodingFeatures
   METHOD mappingFeatures
   METHOD placesFeatures
   METHOD geocodingManager
   METHOD mappingManager
   METHOD routingManager
   METHOD placeManager
   METHOD error
   METHOD errorString
   METHOD setLocale
   METHOD setAllowExperimental

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGeoServiceProvider
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoServiceProvider>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoServiceProvider>
#endif
#endif


HB_FUNC_STATIC( QGEOSERVICEPROVIDER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
static QStringList availableServiceProviders()
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_AVAILABLESERVICEPROVIDERS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QStringList strl = QGeoServiceProvider::availableServiceProviders ();
  _qt5xhb_convert_qstringlist_to_array ( strl );
#endif
}


/*
RoutingFeatures routingFeatures() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_ROUTINGFEATURES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->routingFeatures () );
  }
#endif
}


/*
GeocodingFeatures geocodingFeatures() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_GEOCODINGFEATURES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->geocodingFeatures () );
  }
#endif
}


/*
MappingFeatures mappingFeatures() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_MAPPINGFEATURES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->mappingFeatures () );
  }
#endif
}


/*
PlacesFeatures placesFeatures() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_PLACESFEATURES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->placesFeatures () );
  }
#endif
}


/*
QGeoCodingManager *geocodingManager() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_GEOCODINGMANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoCodingManager * ptr = obj->geocodingManager ();
    _qt5xhb_createReturnClass ( ptr, "QGEOCODINGMANAGER" );
  }
#endif
}


/*
QGeoMappingManager *mappingManager() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_MAPPINGMANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoMappingManager * ptr = obj->mappingManager ();
    _qt5xhb_createReturnClass ( ptr, "QGEOMAPPINGMANAGER" );
  }
#endif
}


/*
QGeoRoutingManager *routingManager() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_ROUTINGMANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoRoutingManager * ptr = obj->routingManager ();
    _qt5xhb_createReturnClass ( ptr, "QGEOROUTINGMANAGER" );
  }
#endif
}


/*
QPlaceManager *placeManager() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_PLACEMANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceManager * ptr = obj->placeManager ();
    _qt5xhb_createReturnClass ( ptr, "QPLACEMANAGER" );
  }
#endif
}


/*
Error error() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
#endif
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->errorString () ) );
  }
#endif
}



/*
void setLocale(const QLocale &locale)
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_SETLOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLocale * par1 = (QLocale *) _qt5xhb_itemGetPtr(1);
    obj->setLocale ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void setAllowExperimental(bool allow)
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_SETALLOWEXPERIMENTAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAllowExperimental ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
