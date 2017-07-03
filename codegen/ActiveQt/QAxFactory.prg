$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QUUID
REQUEST QOBJECT
REQUEST QMETAOBJECT
#endif

CLASS QAxFactory INHERIT QObject

   DATA self_destruction INIT .F.

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

$includes

$deleteMethod

/*
virtual QUuid appID () const
*/
HB_FUNC_STATIC( QAXFACTORY_APPID )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QUuid * ptr = new QUuid( obj->appID () );
    _qt5xhb_createReturnClass ( ptr, "QUUID", true );
  }
}

/*
virtual QUuid classID ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_CLASSID )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QUuid * ptr = new QUuid( obj->classID ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QUUID", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QObject * createObject ( const QString & key ) = 0
*/
HB_FUNC_STATIC( QAXFACTORY_CREATEOBJECT )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QObject * ptr = obj->createObject ( PQSTRING(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QUuid eventsID ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_EVENTSID )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QUuid * ptr = new QUuid( obj->eventsID ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QUUID", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QString exposeToSuperClass ( const QString & key ) const
*/
$method=|QString|exposeToSuperClass|const QString &

/*
virtual QStringList featureList () const = 0
*/
$method=|QStringList|featureList|

/*
virtual bool hasStockEvents ( const QString & key ) const
*/
$method=|bool|hasStockEvents|const QString &

/*
virtual QUuid interfaceID ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_INTERFACEID )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QUuid * ptr = new QUuid( obj->interfaceID ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QUUID", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool isService () const
*/
$method=|bool|isService|

/*
virtual const QMetaObject * metaObject ( const QString & key ) const = 0
*/
HB_FUNC_STATIC( QAXFACTORY_METAOBJECT )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      const QMetaObject * ptr = obj->metaObject ( PQSTRING(1) );
      _qt5xhb_createReturnClass ( ptr, "QMETAOBJECT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void registerClass ( const QString & key, QSettings * settings ) const
*/
$method=|void|registerClass|const QString &,QSettings *

/*
virtual bool stayTopLevel ( const QString & key ) const
*/
$method=|bool|stayTopLevel|const QString &

/*
virtual QUuid typeLibID () const
*/
HB_FUNC_STATIC( QAXFACTORY_TYPELIBID )
{
  QAxFactory * obj = (QAxFactory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QUuid * ptr = new QUuid( obj->typeLibID () );
    _qt5xhb_createReturnClass ( ptr, "QUUID", true );
  }
}

/*
virtual void unregisterClass ( const QString & key, QSettings * settings ) const
*/
$method=|void|unregisterClass|const QString &,QSettings *

/*
virtual bool validateLicenseKey ( const QString & key, const QString & licenseKey ) const
*/
$method=|bool|validateLicenseKey|const QString &,const QString &

/*
static bool isServer ()
*/
$staticMethod=|bool|isServer|

/*
static bool registerActiveObject ( QObject * object )
*/
$staticMethod=|bool|registerActiveObject|QObject *

/*
static QString serverDirPath ()
*/
$staticMethod=|QString|serverDirPath|

/*
static QString serverFilePath ()
*/
$staticMethod=|QString|serverFilePath|

/*
static bool startServer ( ServerType type = MultipleInstances )
*/
HB_FUNC_STATIC( QAXFACTORY_STARTSERVER )
{
  if( ISOPTNUM(1) )
  {
    int par1 = ISNIL(1)? (int) QAxFactory::MultipleInstances : hb_parni(1);
    RBOOL( QAxFactory::startServer ( (QAxFactory::ServerType) par1 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool stopServer ()
*/
$staticMethod=|bool|stopServer|

#pragma ENDDUMP
