/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSENSORBACKEND

CLASS QSensorManager

   DATA pointer
   DATA class_id INIT Class_Id_QSensorManager
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD registerBackend
   METHOD unregisterBackend
   METHOD isBackendRegistered
   METHOD createBackend
   METHOD setDefaultBackend
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSensorManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorManager>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorManager>
#endif
#endif


HB_FUNC_STATIC( QSENSORMANAGER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorManager * obj = (QSensorManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
static void registerBackend(const QByteArray &type, const QByteArray &identifier, QSensorBackendFactory *factory)
*/
HB_FUNC_STATIC( QSENSORMANAGER_REGISTERBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  QByteArray * par2 = (QByteArray *) _qtxhb_itemGetPtr(2);
  QSensorBackendFactory * par3 = (QSensorBackendFactory *) _qtxhb_itemGetPtr(3);
  QSensorManager::registerBackend ( *par1, *par2, par3 );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
static void unregisterBackend(const QByteArray &type, const QByteArray &identifier)
*/
HB_FUNC_STATIC( QSENSORMANAGER_UNREGISTERBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  QByteArray * par2 = (QByteArray *) _qtxhb_itemGetPtr(2);
  QSensorManager::unregisterBackend ( *par1, *par2 );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
static bool isBackendRegistered(const QByteArray &type, const QByteArray &identifier)
*/
HB_FUNC_STATIC( QSENSORMANAGER_ISBACKENDREGISTERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  QByteArray * par2 = (QByteArray *) _qtxhb_itemGetPtr(2);
  hb_retl( QSensorManager::isBackendRegistered ( *par1, *par2 ) );
#endif
}


/*
static QSensorBackend *createBackend(QSensor *sensor)
*/
HB_FUNC_STATIC( QSENSORMANAGER_CREATEBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * par1 = (QSensor *) _qtxhb_itemGetPtr(1);
  QSensorBackend * ptr = QSensorManager::createBackend ( par1 );
  _qt4xhb_createReturnClass ( ptr, "QSENSORBACKEND" );
#endif
}


/*
static void setDefaultBackend(const QByteArray &type, const QByteArray &identifier)
*/
HB_FUNC_STATIC( QSENSORMANAGER_SETDEFAULTBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  QByteArray * par2 = (QByteArray *) _qtxhb_itemGetPtr(2);
  QSensorManager::setDefaultBackend ( *par1, *par2 );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



HB_FUNC_STATIC( QSENSORMANAGER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSENSORMANAGER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSENSORMANAGER_NEWFROM );
}

HB_FUNC_STATIC( QSENSORMANAGER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSENSORMANAGER_NEWFROM );
}

HB_FUNC_STATIC( QSENSORMANAGER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSENSORMANAGER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
