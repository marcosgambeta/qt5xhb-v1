/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QUUID
REQUEST QOBJECT
REQUEST QMETAOBJECT

CLASS QAxFactory INHERIT QObject

   DATA class_id INIT Class_Id_QAxFactory
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD appID
   METHOD classID
   METHOD createObject
   METHOD eventsID
   METHOD exposeToSuperClass
   METHOD featureList
   METHOD hasStockEvents
   METHOD interfaceID
   METHOD isService
   METHOD metaObject
   METHOD registerClass
   METHOD stayTopLevel
   METHOD typeLibID
   METHOD unregisterClass
   METHOD validateLicenseKey
   METHOD isServer
   METHOD registerActiveObject
   METHOD serverDirPath
   METHOD serverFilePath
   METHOD startServer
   METHOD stopServer
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAxFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAxFactory>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAxFactory>
#endif
#endif


HB_FUNC_STATIC( QAXFACTORY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QUuid appID () const
*/
HB_FUNC_STATIC( QAXFACTORY_APPID )
{
  QAxFactory * obj = (QAxFactory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUuid * ptr = new QUuid( obj->appID (  ) );
    _qt4xhb_createReturnClass ( ptr, "QUUID", true );
  }
}


/*
virtual QUuid classID ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_CLASSID )
{
  QAxFactory * obj = (QAxFactory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QUuid * ptr = new QUuid( obj->classID ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QUUID", true );
  }
}


/*
virtual QObject * createObject ( const QString & key ) = 0
*/
HB_FUNC_STATIC( QAXFACTORY_CREATEOBJECT )
{
  QAxFactory * obj = (QAxFactory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QObject * ptr = obj->createObject ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}



/*
virtual QUuid eventsID ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_EVENTSID )
{
  QAxFactory * obj = (QAxFactory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QUuid * ptr = new QUuid( obj->eventsID ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QUUID", true );
  }
}


/*
virtual QString exposeToSuperClass ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_EXPOSETOSUPERCLASS )
{
  QAxFactory * obj = (QAxFactory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->exposeToSuperClass ( par1 ).toLatin1().data() );
  }
}


/*
virtual QStringList featureList () const = 0
*/
HB_FUNC_STATIC( QAXFACTORY_FEATURELIST )
{
  QAxFactory * obj = (QAxFactory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->featureList (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
virtual bool hasStockEvents ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_HASSTOCKEVENTS )
{
  QAxFactory * obj = (QAxFactory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->hasStockEvents ( par1 ) );
  }
}


/*
virtual QUuid interfaceID ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_INTERFACEID )
{
  QAxFactory * obj = (QAxFactory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QUuid * ptr = new QUuid( obj->interfaceID ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QUUID", true );
  }
}


/*
virtual bool isService () const
*/
HB_FUNC_STATIC( QAXFACTORY_ISSERVICE )
{
  QAxFactory * obj = (QAxFactory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isService (  ) );
  }
}


/*
virtual const QMetaObject * metaObject ( const QString & key ) const = 0
*/
HB_FUNC_STATIC( QAXFACTORY_METAOBJECT )
{
  QAxFactory * obj = (QAxFactory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    const QMetaObject * ptr = obj->metaObject ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}


/*
virtual void registerClass ( const QString & key, QSettings * settings ) const
*/
HB_FUNC_STATIC( QAXFACTORY_REGISTERCLASS )
{
  QAxFactory * obj = (QAxFactory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QSettings * par2 = (QSettings *) _qtxhb_itemGetPtr(2);
    obj->registerClass ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool stayTopLevel ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_STAYTOPLEVEL )
{
  QAxFactory * obj = (QAxFactory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->stayTopLevel ( par1 ) );
  }
}


/*
virtual QUuid typeLibID () const
*/
HB_FUNC_STATIC( QAXFACTORY_TYPELIBID )
{
  QAxFactory * obj = (QAxFactory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUuid * ptr = new QUuid( obj->typeLibID (  ) );
    _qt4xhb_createReturnClass ( ptr, "QUUID", true );
  }
}


/*
virtual void unregisterClass ( const QString & key, QSettings * settings ) const
*/
HB_FUNC_STATIC( QAXFACTORY_UNREGISTERCLASS )
{
  QAxFactory * obj = (QAxFactory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QSettings * par2 = (QSettings *) _qtxhb_itemGetPtr(2);
    obj->unregisterClass ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool validateLicenseKey ( const QString & key, const QString & licenseKey ) const
*/
HB_FUNC_STATIC( QAXFACTORY_VALIDATELICENSEKEY )
{
  QAxFactory * obj = (QAxFactory *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retl( obj->validateLicenseKey ( par1, par2 ) );
  }
}


/*
static bool isServer ()
*/
HB_FUNC_STATIC( QAXFACTORY_ISSERVER )
{
  hb_retl( QAxFactory::isServer (  ) );
}


/*
static bool registerActiveObject ( QObject * object )
*/
HB_FUNC_STATIC( QAXFACTORY_REGISTERACTIVEOBJECT )
{
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  hb_retl( QAxFactory::registerActiveObject ( par1 ) );
}


/*
static QString serverDirPath ()
*/
HB_FUNC_STATIC( QAXFACTORY_SERVERDIRPATH )
{
  hb_retc( (const char *) QAxFactory::serverDirPath (  ).toLatin1().data() );
}


/*
static QString serverFilePath ()
*/
HB_FUNC_STATIC( QAXFACTORY_SERVERFILEPATH )
{
  hb_retc( (const char *) QAxFactory::serverFilePath (  ).toLatin1().data() );
}


/*
static bool startServer ( ServerType type = MultipleInstances )
*/
HB_FUNC_STATIC( QAXFACTORY_STARTSERVER )
{
  int par1 = ISNIL(1)? (int) QAxFactory::MultipleInstances : hb_parni(1);
  hb_retl( QAxFactory::startServer (  (QAxFactory::ServerType) par1 ) );
}


/*
static bool stopServer ()
*/
HB_FUNC_STATIC( QAXFACTORY_STOPSERVER )
{
  hb_retl( QAxFactory::stopServer (  ) );
}



#pragma ENDDUMP
