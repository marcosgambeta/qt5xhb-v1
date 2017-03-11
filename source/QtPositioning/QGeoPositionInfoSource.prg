/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOPOSITIONINFO
#endif

CLASS QGeoPositionInfoSource INHERIT QObject

   DATA class_id INIT Class_Id_QGeoPositionInfoSource
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD setUpdateInterval
   METHOD updateInterval
   METHOD setPreferredPositioningMethods
   METHOD preferredPositioningMethods
   METHOD lastKnownPosition
   METHOD supportedPositioningMethods
   METHOD minimumUpdateInterval
   METHOD sourceName
   METHOD error
   METHOD startUpdates
   METHOD stopUpdates
   METHOD requestUpdate
   METHOD createDefaultSource
   METHOD createSource
   METHOD availableSources
   METHOD onPositionUpdated
   METHOD onUpdateTimeout
   METHOD onError
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGeoPositionInfoSource
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoPositionInfoSource>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoPositionInfoSource>
#endif
#endif

#include <QStringList>


HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void setUpdateInterval(int msec)
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_SETUPDATEINTERVAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUpdateInterval ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int updateInterval() const
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_UPDATEINTERVAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->updateInterval (  ) );
  }
#endif
}


/*
virtual void setPreferredPositioningMethods(PositioningMethods methods)
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_SETPREFERREDPOSITIONINGMETHODS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPreferredPositioningMethods (  (QGeoPositionInfoSource::PositioningMethods) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
PositioningMethods preferredPositioningMethods() const
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_PREFERREDPOSITIONINGMETHODS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->preferredPositioningMethods (  ) );
  }
#endif
}


/*
virtual QGeoPositionInfo lastKnownPosition(bool fromSatellitePositioningMethodsOnly = false) const = 0
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_LASTKNOWNPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoPositionInfo * ptr = new QGeoPositionInfo( obj->lastKnownPosition ( (bool) ISNIL(1)? false : hb_parl(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QGEOPOSITIONINFO", true );
  }
#endif
}


/*
virtual PositioningMethods supportedPositioningMethods() const = 0
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_SUPPORTEDPOSITIONINGMETHODS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedPositioningMethods (  ) );
  }
#endif
}


/*
virtual int minimumUpdateInterval() const = 0
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_MINIMUMUPDATEINTERVAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->minimumUpdateInterval (  ) );
  }
#endif
}


/*
QString sourceName() const
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_SOURCENAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->sourceName (  ).toLatin1().data() );
  }
#endif
}


/*
virtual Error error() const = 0
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error (  ) );
  }
#endif
}


/*
virtual void startUpdates() = 0
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_STARTUPDATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->startUpdates (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
virtual void stopUpdates() = 0
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_STOPUPDATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stopUpdates (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
virtual void requestUpdate(int timeout = 0) = 0
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_REQUESTUPDATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->requestUpdate ( (int) ISNIL(1)? 0 : hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
static QGeoPositionInfoSource *createDefaultSource(QObject *parent)
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_CREATEDEFAULTSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  QGeoPositionInfoSource * ptr = QGeoPositionInfoSource::createDefaultSource ( par1 );
  _qt5xhb_createReturnClass ( ptr, "QGEOPOSITIONINFOSOURCE" );
#endif
}


/*
static QGeoPositionInfoSource *createSource(const QString &sourceName, QObject *parent)
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_CREATESOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QObject * par2 = (QObject *) _qt5xhb_itemGetPtr(2);
  QGeoPositionInfoSource * ptr = QGeoPositionInfoSource::createSource ( par1, par2 );
  _qt5xhb_createReturnClass ( ptr, "QGEOPOSITIONINFOSOURCE" );
#endif
}


/*
static QStringList availableSources()
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCE_AVAILABLESOURCES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QStringList strl = QGeoPositionInfoSource::availableSources (  );
  _qt5xhb_convert_qstringlist_to_array ( strl );
#endif
}




#pragma ENDDUMP
