/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QGEOPOSITIONINFO
#endif

CLASS QNmeaPositionInfoSource INHERIT QGeoPositionInfoSource

   DATA class_id INIT Class_Id_QNmeaPositionInfoSource
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QNmeaPositionInfoSource
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QNmeaPositionInfoSource>
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
#include <QNmeaPositionInfoSource>
#endif
#endif

/*
QNmeaPositionInfoSource(UpdateMode updateMode, QObject *parent = 0)
*/
HB_FUNC_STATIC( QNMEAPOSITIONINFOSOURCE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  int par1 = hb_parni(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
  QNmeaPositionInfoSource * o = new QNmeaPositionInfoSource (  (QNmeaPositionInfoSource::UpdateMode) par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNmeaPositionInfoSource *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QNMEAPOSITIONINFOSOURCE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QNmeaPositionInfoSource * obj = (QNmeaPositionInfoSource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
UpdateMode updateMode() const
*/
HB_FUNC_STATIC( QNMEAPOSITIONINFOSOURCE_UPDATEMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QNmeaPositionInfoSource * obj = (QNmeaPositionInfoSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->updateMode (  ) );
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
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    obj->setDevice ( par1 );
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
    QIODevice * ptr = obj->device (  );
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
    obj->setUpdateInterval ( (int) hb_parni(1) );
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
    QGeoPositionInfo * ptr = new QGeoPositionInfo( obj->lastKnownPosition ( (bool) ISNIL(1)? false : hb_parl(1) ) );
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
    hb_retni( obj->supportedPositioningMethods (  ) );
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
    hb_retni( obj->minimumUpdateInterval (  ) );
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
    hb_retni( obj->error (  ) );
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
    obj->startUpdates (  );
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
    obj->stopUpdates (  );
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
    obj->requestUpdate ( (int) ISNIL(1)? 0 : hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
