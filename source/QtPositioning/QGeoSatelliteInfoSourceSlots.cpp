/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QGeoSatelliteInfoSourceSlots.h"


static SlotsQGeoSatelliteInfoSource * s = NULL;

SlotsQGeoSatelliteInfoSource::SlotsQGeoSatelliteInfoSource(QObject *parent) : QObject(parent)
{
}

SlotsQGeoSatelliteInfoSource::~SlotsQGeoSatelliteInfoSource()
{
}

void SlotsQGeoSatelliteInfoSource::satellitesInViewUpdated(const QList<QGeoSatelliteInfo> &satellites)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "satellitesInViewUpdated(QList<QGeoSatelliteInfo>)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QGEOSATELLITEINFO" );
    PHB_ITEM psatellites = hb_itemArrayNew(0);
    int i;
    for(i=0;i<satellites.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QGeoSatelliteInfo *) new QGeoSatelliteInfo ( satellites [i] ) );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( psatellites, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
    }
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psatellites );
    hb_itemRelease( psender );
    hb_itemRelease( psatellites );
  }
#endif
}

void SlotsQGeoSatelliteInfoSource::satellitesInUseUpdated(const QList<QGeoSatelliteInfo> &satellites)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "satellitesInUseUpdated(QList<QGeoSatelliteInfo>)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QGEOSATELLITEINFO" );
    PHB_ITEM psatellites = hb_itemArrayNew(0);
    int i;
    for(i=0;i<satellites.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QGeoSatelliteInfo *) new QGeoSatelliteInfo ( satellites [i] ) );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( psatellites, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
    }
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psatellites );
    hb_itemRelease( psender );
    hb_itemRelease( psatellites );
  }
#endif
}

void SlotsQGeoSatelliteInfoSource::requestTimeout()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "requestTimeout()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQGeoSatelliteInfoSource::error(QGeoSatelliteInfoSource::Error error)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QGeoSatelliteInfoSource::Error)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
#endif
}

HB_FUNC( QGEOSATELLITEINFOSOURCE_ONSATELLITESINVIEWUPDATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQGeoSatelliteInfoSource(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "satellitesInViewUpdated(QList<QGeoSatelliteInfo>)", "satellitesInViewUpdated(QList<QGeoSatelliteInfo>)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QGEOSATELLITEINFOSOURCE_ONSATELLITESINUSEUPDATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQGeoSatelliteInfoSource(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "satellitesInUseUpdated(QList<QGeoSatelliteInfo>)", "satellitesInUseUpdated(QList<QGeoSatelliteInfo>)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QGEOSATELLITEINFOSOURCE_ONREQUESTTIMEOUT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQGeoSatelliteInfoSource(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "requestTimeout()", "requestTimeout()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QGEOSATELLITEINFOSOURCE_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQGeoSatelliteInfoSource(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QGeoSatelliteInfoSource::Error)", "error(QGeoSatelliteInfoSource::Error)" ) );
#else
  hb_retl(false);
#endif
}
