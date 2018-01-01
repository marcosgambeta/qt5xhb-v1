/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QQMLIMAGEPROVIDERBASE
REQUEST QQMLINCUBATIONCONTROLLER
REQUEST QNETWORKACCESSMANAGER
REQUEST QQMLNETWORKACCESSMANAGERFACTORY
REQUEST QQMLCONTEXT
#endif

CLASS QQmlEngine INHERIT QJSEngine

   METHOD new
   METHOD delete
   METHOD addImageProvider
   METHOD addImportPath
   METHOD addNamedBundle
   METHOD addPluginPath
   METHOD baseUrl
   METHOD clearComponentCache
   METHOD imageProvider
   METHOD importPathList
   METHOD importPlugin
   METHOD incubationController
   METHOD networkAccessManager
   METHOD networkAccessManagerFactory
   METHOD offlineStoragePath
   METHOD outputWarningsToStandardError
   METHOD pluginPathList
   METHOD removeImageProvider
   METHOD rootContext
   METHOD setBaseUrl
   METHOD setImportPathList
   METHOD setIncubationController
   METHOD setNetworkAccessManagerFactory
   METHOD setOfflineStoragePath
   METHOD setOutputWarningsToStandardError
   METHOD setPluginPathList
   METHOD trimComponentCache
   METHOD contextForObject
   METHOD objectOwnership
   METHOD setContextForObject
   METHOD setObjectOwnership

   METHOD onQuit

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQmlEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQmlEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQmlEngine>
#endif

#include <QStringList>

/*
QQmlEngine(QObject * parent = 0)
*/
HB_FUNC_STATIC( QQMLENGINE_NEW )
{
  QQmlEngine * o = new QQmlEngine ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QQMLENGINE_DELETE )
{
  QQmlEngine * obj = (QQmlEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
}

/*
void addImageProvider(const QString & providerId, QQmlImageProviderBase * provider)
*/
HB_FUNC_STATIC( QQMLENGINE_ADDIMAGEPROVIDER )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlImageProviderBase * par2 = (QQmlImageProviderBase *) _qt5xhb_itemGetPtr(2);
    obj->addImageProvider ( PQSTRING(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addImportPath(const QString & path)
*/
HB_FUNC_STATIC( QQMLENGINE_ADDIMPORTPATH )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addImportPath ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool addNamedBundle(const QString & name, const QString & fileName)
*/
HB_FUNC_STATIC( QQMLENGINE_ADDNAMEDBUNDLE )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->addNamedBundle ( PQSTRING(1), PQSTRING(2) ) );
  }
}


/*
void addPluginPath(const QString & path)
*/
HB_FUNC_STATIC( QQMLENGINE_ADDPLUGINPATH )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addPluginPath ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUrl baseUrl() const
*/
HB_FUNC_STATIC( QQMLENGINE_BASEURL )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->baseUrl () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
void clearComponentCache()
*/
HB_FUNC_STATIC( QQMLENGINE_CLEARCOMPONENTCACHE )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearComponentCache ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QQmlImageProviderBase * imageProvider(const QString & providerId) const
*/
HB_FUNC_STATIC( QQMLENGINE_IMAGEPROVIDER )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlImageProviderBase * ptr = obj->imageProvider ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QQMLIMAGEPROVIDERBASE" );
  }
}


/*
QStringList importPathList() const
*/
HB_FUNC_STATIC( QQMLENGINE_IMPORTPATHLIST )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->importPathList () );
  }
}


/*
bool importPlugin(const QString & filePath, const QString & uri, QList<QQmlError> * errors)
*/
HB_FUNC_STATIC( QQMLENGINE_IMPORTPLUGIN ) // TODO: corrigir implementacao
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QQmlError> * par3 = (QList<QQmlError> *) _qt5xhb_itemGetPtr(3);
    RBOOL( obj->importPlugin ( PQSTRING(1), PQSTRING(2), par3 ) );
  }
}


/*
QQmlIncubationController * incubationController() const
*/
HB_FUNC_STATIC( QQMLENGINE_INCUBATIONCONTROLLER )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlIncubationController * ptr = obj->incubationController ();
    _qt5xhb_createReturnClass ( ptr, "QQMLINCUBATIONCONTROLLER" );
  }
}


/*
QNetworkAccessManager * networkAccessManager() const
*/
HB_FUNC_STATIC( QQMLENGINE_NETWORKACCESSMANAGER )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkAccessManager * ptr = obj->networkAccessManager ();
    _qt5xhb_createReturnClass ( ptr, "QNETWORKACCESSMANAGER" );
  }
}


/*
QQmlNetworkAccessManagerFactory * networkAccessManagerFactory() const
*/
HB_FUNC_STATIC( QQMLENGINE_NETWORKACCESSMANAGERFACTORY )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlNetworkAccessManagerFactory * ptr = obj->networkAccessManagerFactory ();
    _qt5xhb_createReturnClass ( ptr, "QQMLNETWORKACCESSMANAGERFACTORY" );
  }
}


/*
QString offlineStoragePath() const
*/
HB_FUNC_STATIC( QQMLENGINE_OFFLINESTORAGEPATH )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->offlineStoragePath () );
  }
}


/*
bool outputWarningsToStandardError() const
*/
HB_FUNC_STATIC( QQMLENGINE_OUTPUTWARNINGSTOSTANDARDERROR )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->outputWarningsToStandardError () );
  }
}


/*
QStringList pluginPathList() const
*/
HB_FUNC_STATIC( QQMLENGINE_PLUGINPATHLIST )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->pluginPathList () );
  }
}


/*
void removeImageProvider(const QString & providerId)
*/
HB_FUNC_STATIC( QQMLENGINE_REMOVEIMAGEPROVIDER )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeImageProvider ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QQmlContext * rootContext() const
*/
HB_FUNC_STATIC( QQMLENGINE_ROOTCONTEXT )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlContext * ptr = obj->rootContext ();
    _qt5xhb_createReturnClass ( ptr, "QQMLCONTEXT" );
  }
}


/*
void setBaseUrl(const QUrl & url)
*/
HB_FUNC_STATIC( QQMLENGINE_SETBASEURL )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBaseUrl ( *PQURL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setImportPathList(const QStringList & paths)
*/
HB_FUNC_STATIC( QQMLENGINE_SETIMPORTPATHLIST )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setImportPathList ( PQSTRINGLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIncubationController(QQmlIncubationController * controller)
*/
HB_FUNC_STATIC( QQMLENGINE_SETINCUBATIONCONTROLLER )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlIncubationController * par1 = (QQmlIncubationController *) _qt5xhb_itemGetPtr(1);
    obj->setIncubationController ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNetworkAccessManagerFactory(QQmlNetworkAccessManagerFactory * factory)
*/
HB_FUNC_STATIC( QQMLENGINE_SETNETWORKACCESSMANAGERFACTORY )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlNetworkAccessManagerFactory * par1 = (QQmlNetworkAccessManagerFactory *) _qt5xhb_itemGetPtr(1);
    obj->setNetworkAccessManagerFactory ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOfflineStoragePath(const QString & dir)
*/
HB_FUNC_STATIC( QQMLENGINE_SETOFFLINESTORAGEPATH )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOfflineStoragePath ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOutputWarningsToStandardError(bool enabled)
*/
HB_FUNC_STATIC( QQMLENGINE_SETOUTPUTWARNINGSTOSTANDARDERROR )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOutputWarningsToStandardError ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPluginPathList(const QStringList & paths)
*/
HB_FUNC_STATIC( QQMLENGINE_SETPLUGINPATHLIST )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPluginPathList ( PQSTRINGLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void trimComponentCache()
*/
HB_FUNC_STATIC( QQMLENGINE_TRIMCOMPONENTCACHE )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->trimComponentCache ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QQmlContext * contextForObject(const QObject * object)
*/
HB_FUNC_STATIC( QQMLENGINE_CONTEXTFOROBJECT )
{
  const QObject * par1 = (const QObject *) _qt5xhb_itemGetPtr(1);
  QQmlContext * ptr = QQmlEngine::contextForObject ( par1 );
  _qt5xhb_createReturnClass ( ptr, "QQMLCONTEXT" );
}


/*
static ObjectOwnership objectOwnership(QObject * object)
*/
HB_FUNC_STATIC( QQMLENGINE_OBJECTOWNERSHIP )
{
  hb_retni( QQmlEngine::objectOwnership ( PQOBJECT(1) ) );
}


/*
static void setContextForObject(QObject * object, QQmlContext * context)
*/
HB_FUNC_STATIC( QQMLENGINE_SETCONTEXTFOROBJECT )
{
  QQmlContext * par2 = (QQmlContext *) _qt5xhb_itemGetPtr(2);
  QQmlEngine::setContextForObject ( PQOBJECT(1), par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setObjectOwnership(QObject * object, ObjectOwnership ownership)
*/
HB_FUNC_STATIC( QQMLENGINE_SETOBJECTOWNERSHIP )
{
  QQmlEngine::setObjectOwnership ( PQOBJECT(1), (QQmlEngine::ObjectOwnership) hb_parni(2) );
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
