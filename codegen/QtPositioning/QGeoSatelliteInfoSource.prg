$header

#include "hbclass.ch"

CLASS QGeoSatelliteInfoSource INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD sourceName
   METHOD setUpdateInterval
   METHOD updateInterval
   METHOD minimumUpdateInterval
   METHOD error
   METHOD startUpdates
   METHOD stopUpdates
   METHOD requestUpdate
   METHOD createDefaultSource
   METHOD createSource
   METHOD availableSources

   METHOD onSatellitesInViewUpdated
   METHOD onSatellitesInUseUpdated
   METHOD onRequestTimeout
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

#include <QStringList>

$deleteMethod=5,2,0

/*
QString sourceName() const
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_SOURCENAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfoSource * obj = (QGeoSatelliteInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->sourceName () );
  }
#endif
}


/*
virtual void setUpdateInterval(int msec)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_SETUPDATEINTERVAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfoSource * obj = (QGeoSatelliteInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUpdateInterval ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int updateInterval() const
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_UPDATEINTERVAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfoSource * obj = (QGeoSatelliteInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->updateInterval () );
  }
#endif
}


/*
virtual int minimumUpdateInterval() const = 0
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_MINIMUMUPDATEINTERVAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfoSource * obj = (QGeoSatelliteInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->minimumUpdateInterval () );
  }
#endif
}


/*
virtual Error error() const = 0
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfoSource * obj = (QGeoSatelliteInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
#endif
}


/*
virtual void startUpdates() = 0
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_STARTUPDATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfoSource * obj = (QGeoSatelliteInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->startUpdates ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
virtual void stopUpdates() = 0
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_STOPUPDATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfoSource * obj = (QGeoSatelliteInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stopUpdates ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
virtual void requestUpdate(int timeout = 0) = 0
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_REQUESTUPDATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfoSource * obj = (QGeoSatelliteInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->requestUpdate ( OPINT(1,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
static QGeoSatelliteInfoSource *createDefaultSource(QObject *parent)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_CREATEDEFAULTSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfoSource * ptr = QGeoSatelliteInfoSource::createDefaultSource ( PQOBJECT(1) );
  _qt5xhb_createReturnClass ( ptr, "QGEOSATELLITEINFOSOURCE" );
#endif
}


/*
static QGeoSatelliteInfoSource *createSource(const QString &sourceName, QObject *parent)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_CREATESOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfoSource * ptr = QGeoSatelliteInfoSource::createSource ( PQSTRING(1), PQOBJECT(2) );
  _qt5xhb_createReturnClass ( ptr, "QGEOSATELLITEINFOSOURCE" );
#endif
}


/*
static QStringList availableSources()
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_AVAILABLESOURCES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  RQSTRINGLIST( QGeoSatelliteInfoSource::availableSources () );
#endif
}




#pragma ENDDUMP
