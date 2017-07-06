$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QGEOPOSITIONINFO
#endif

CLASS QNmeaPositionInfoSource INHERIT QGeoPositionInfoSource

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD updateMode
   METHOD setDevice
   METHOD device
   METHOD setUpdateInterval
   METHOD lastKnownPosition
   METHOD supportedPositioningMethods
   METHOD minimumUpdateInterval
   METHOD error
   METHOD startUpdates
   METHOD stopUpdates
   METHOD requestUpdate

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
QNmeaPositionInfoSource(UpdateMode updateMode, QObject *parent = 0)
*/
HB_FUNC_STATIC( QNMEAPOSITIONINFOSOURCE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QNmeaPositionInfoSource * o = new QNmeaPositionInfoSource ( (QNmeaPositionInfoSource::UpdateMode) hb_parni(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


$deleteMethod=5,2,0

/*
UpdateMode updateMode() const
*/
HB_FUNC_STATIC( QNMEAPOSITIONINFOSOURCE_UPDATEMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QNmeaPositionInfoSource * obj = (QNmeaPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->updateMode () );
  }
#endif
}


/*
void setDevice(QIODevice *source)
*/
HB_FUNC_STATIC( QNMEAPOSITIONINFOSOURCE_SETDEVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QNmeaPositionInfoSource * obj = (QNmeaPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDevice ( PQIODEVICE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QIODevice *device() const
*/
HB_FUNC_STATIC( QNMEAPOSITIONINFOSOURCE_DEVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QNmeaPositionInfoSource * obj = (QNmeaPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * ptr = obj->device ();
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
#endif
}


/*
void setUpdateInterval(int msec)
*/
HB_FUNC_STATIC( QNMEAPOSITIONINFOSOURCE_SETUPDATEINTERVAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QNmeaPositionInfoSource * obj = (QNmeaPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUpdateInterval ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QGeoPositionInfo lastKnownPosition(bool fromSatellitePositioningMethodsOnly = false) const
*/
HB_FUNC_STATIC( QNMEAPOSITIONINFOSOURCE_LASTKNOWNPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QNmeaPositionInfoSource * obj = (QNmeaPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoPositionInfo * ptr = new QGeoPositionInfo( obj->lastKnownPosition ( OPBOOL(1,false) ) );
    _qt5xhb_createReturnClass ( ptr, "QGEOPOSITIONINFO", true );
  }
#endif
}


/*
PositioningMethods supportedPositioningMethods() const
*/
HB_FUNC_STATIC( QNMEAPOSITIONINFOSOURCE_SUPPORTEDPOSITIONINGMETHODS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QNmeaPositionInfoSource * obj = (QNmeaPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedPositioningMethods () );
  }
#endif
}


/*
int minimumUpdateInterval() const
*/
HB_FUNC_STATIC( QNMEAPOSITIONINFOSOURCE_MINIMUMUPDATEINTERVAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QNmeaPositionInfoSource * obj = (QNmeaPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->minimumUpdateInterval () );
  }
#endif
}


/*
Error error() const
*/
HB_FUNC_STATIC( QNMEAPOSITIONINFOSOURCE_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QNmeaPositionInfoSource * obj = (QNmeaPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
#endif
}


/*
void startUpdates()
*/
HB_FUNC_STATIC( QNMEAPOSITIONINFOSOURCE_STARTUPDATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QNmeaPositionInfoSource * obj = (QNmeaPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->startUpdates ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void stopUpdates()
*/
HB_FUNC_STATIC( QNMEAPOSITIONINFOSOURCE_STOPUPDATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QNmeaPositionInfoSource * obj = (QNmeaPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stopUpdates ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void requestUpdate(int timeout = 0)
*/
HB_FUNC_STATIC( QNMEAPOSITIONINFOSOURCE_REQUESTUPDATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QNmeaPositionInfoSource * obj = (QNmeaPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->requestUpdate ( OPINT(1,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
