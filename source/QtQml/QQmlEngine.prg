/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QQMLIMAGEPROVIDERBASE
REQUEST QQMLINCUBATIONCONTROLLER
REQUEST QNETWORKACCESSMANAGER
REQUEST QQMLNETWORKACCESSMANAGERFACTORY
REQUEST QQMLCONTEXT
#endif

CLASS QQmlEngine INHERIT QJSEngine

   DATA class_id INIT Class_Id_QQmlEngine
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

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
#include <QQmlEngine>
#endif

#include <QStringList>

/*
QQmlEngine(QObject * parent = 0)
*/
HB_FUNC_STATIC( QQMLENGINE_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QQmlEngine * o = new QQmlEngine ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQmlEngine *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QQmlImageProviderBase * par2 = (QQmlImageProviderBase *) _qt5xhb_itemGetPtr(2);
    obj->addImageProvider ( par1, par2 );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->addImportPath ( par1 );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retl( obj->addNamedBundle ( par1, par2 ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->addPluginPath ( par1 );
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
    QUrl * ptr = new QUrl( obj->baseUrl (  ) );
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
    obj->clearComponentCache (  );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QQmlImageProviderBase * ptr = obj->imageProvider ( par1 );
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
    QStringList strl = obj->importPathList (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
bool importPlugin(const QString & filePath, const QString & uri, QList<QQmlError> * errors)
*/
HB_FUNC_STATIC( QQMLENGINE_IMPORTPLUGIN )
{
  QQmlEngine * obj = (QQmlEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QList<QQmlError> * par3 = (QList<QQmlError> *) _qt5xhb_itemGetPtr(3);
    hb_retl( obj->importPlugin ( par1, par2, par3 ) );
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
    QQmlIncubationController * ptr = obj->incubationController (  );
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
    QNetworkAccessManager * ptr = obj->networkAccessManager (  );
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
    QQmlNetworkAccessManagerFactory * ptr = obj->networkAccessManagerFactory (  );
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
    hb_retc( (const char *) obj->offlineStoragePath (  ).toLatin1().data() );
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
    hb_retl( obj->outputWarningsToStandardError (  ) );
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
    QStringList strl = obj->pluginPathList (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->removeImageProvider ( par1 );
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
    QQmlContext * ptr = obj->rootContext (  );
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
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    obj->setBaseUrl ( *par1 );
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
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
    obj->setImportPathList ( par1 );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setOfflineStoragePath ( par1 );
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
    obj->setOutputWarningsToStandardError ( (bool) hb_parl(1) );
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
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
    obj->setPluginPathList ( par1 );
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
    obj->trimComponentCache (  );
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
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  hb_retni( QQmlEngine::objectOwnership ( par1 ) );
}


/*
static void setContextForObject(QObject * object, QQmlContext * context)
*/
HB_FUNC_STATIC( QQMLENGINE_SETCONTEXTFOROBJECT )
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  QQmlContext * par2 = (QQmlContext *) _qt5xhb_itemGetPtr(2);
  QQmlEngine::setContextForObject ( par1, par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setObjectOwnership(QObject * object, ObjectOwnership ownership)
*/
HB_FUNC_STATIC( QQMLENGINE_SETOBJECTOWNERSHIP )
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QQmlEngine::setObjectOwnership ( par1,  (QQmlEngine::ObjectOwnership) par2 );
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
