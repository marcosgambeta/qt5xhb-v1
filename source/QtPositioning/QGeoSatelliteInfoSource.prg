/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"



CLASS QGeoSatelliteInfoSource INHERIT QObject

   DATA class_id INIT Class_Id_QGeoSatelliteInfoSource
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QGeoSatelliteInfoSource
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoSatelliteInfoSource>
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoSatelliteInfoSource>
#endif
#endif

#include <QStringList>


HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfoSource * obj = (QGeoSatelliteInfoSource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString sourceName() const
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_SOURCENAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfoSource * obj = (QGeoSatelliteInfoSource *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->sourceName (  ).toLatin1().data() );
  }
#endif
}


/*
virtual void setUpdateInterval(int msec)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_SETUPDATEINTERVAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfoSource * obj = (QGeoSatelliteInfoSource *) _qtxhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_UPDATEINTERVAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfoSource * obj = (QGeoSatelliteInfoSource *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->updateInterval (  ) );
  }
#endif
}


/*
virtual int minimumUpdateInterval() const = 0
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_MINIMUMUPDATEINTERVAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfoSource * obj = (QGeoSatelliteInfoSource *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->minimumUpdateInterval (  ) );
  }
#endif
}


/*
virtual Error error() const = 0
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfoSource * obj = (QGeoSatelliteInfoSource *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error (  ) );
  }
#endif
}


/*
virtual void startUpdates() = 0
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_STARTUPDATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfoSource * obj = (QGeoSatelliteInfoSource *) _qtxhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_STOPUPDATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfoSource * obj = (QGeoSatelliteInfoSource *) _qtxhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_REQUESTUPDATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoSatelliteInfoSource * obj = (QGeoSatelliteInfoSource *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->requestUpdate ( (int) ISNIL(1)? 0 : hb_parni(1) );
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
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QGeoSatelliteInfoSource * ptr = QGeoSatelliteInfoSource::createDefaultSource ( par1 );
  _qt4xhb_createReturnClass ( ptr, "QGEOSATELLITEINFOSOURCE" );
#endif
}


/*
static QGeoSatelliteInfoSource *createSource(const QString &sourceName, QObject *parent)
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_CREATESOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QObject * par2 = (QObject *) _qtxhb_itemGetPtr(2);
  QGeoSatelliteInfoSource * ptr = QGeoSatelliteInfoSource::createSource ( par1, par2 );
  _qt4xhb_createReturnClass ( ptr, "QGEOSATELLITEINFOSOURCE" );
#endif
}


/*
static QStringList availableSources()
*/
HB_FUNC_STATIC( QGEOSATELLITEINFOSOURCE_AVAILABLESOURCES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QStringList strl = QGeoSatelliteInfoSource::availableSources (  );
  _qtxhb_convert_qstringlist_to_array ( strl );
#endif
}




#pragma ENDDUMP
