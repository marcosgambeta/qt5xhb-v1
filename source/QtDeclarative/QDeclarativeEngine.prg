/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QDECLARATIVEIMAGEPROVIDER
REQUEST QNETWORKACCESSMANAGER
REQUEST QDECLARATIVENETWORKACCESSMANAGERFACTORY
REQUEST QDECLARATIVECONTEXT
#endif

CLASS QDeclarativeEngine INHERIT QObject

   DATA class_id INIT Class_Id_QDeclarativeEngine
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addImageProvider
   METHOD addImportPath
   METHOD addPluginPath
   METHOD baseUrl
   METHOD clearComponentCache
   METHOD imageProvider
   METHOD importPathList
   METHOD networkAccessManager
   METHOD networkAccessManagerFactory
   METHOD offlineStoragePath
   METHOD outputWarningsToStandardError
   METHOD pluginPathList
   METHOD removeImageProvider
   METHOD rootContext
   METHOD setBaseUrl
   METHOD setImportPathList
   METHOD setNetworkAccessManagerFactory
   METHOD setOfflineStoragePath
   METHOD setOutputWarningsToStandardError
   METHOD setPluginPathList
   METHOD contextForObject
   METHOD objectOwnership
   METHOD setContextForObject
   METHOD setObjectOwnership
   METHOD onQuit
   METHOD onWarnings
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDeclarativeEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDeclarativeEngine>
#endif

#include <QStringList>

/*
QDeclarativeEngine ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QDeclarativeEngine * o = new QDeclarativeEngine ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeEngine *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QDECLARATIVEENGINE_DELETE )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addImageProvider ( const QString & providerId, QDeclarativeImageProvider * provider )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_ADDIMAGEPROVIDER )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QDeclarativeImageProvider * par2 = (QDeclarativeImageProvider *) _qt5xhb_itemGetPtr(2);
    obj->addImageProvider ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addImportPath ( const QString & path )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_ADDIMPORTPATH )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->addImportPath ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addPluginPath ( const QString & path )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_ADDPLUGINPATH )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->addPluginPath ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUrl baseUrl () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_BASEURL )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->baseUrl (  ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
void clearComponentCache ()
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_CLEARCOMPONENTCACHE )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearComponentCache (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QDeclarativeImageProvider * imageProvider ( const QString & providerId ) const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_IMAGEPROVIDER )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QDeclarativeImageProvider * ptr = obj->imageProvider ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QDECLARATIVEIMAGEPROVIDER" );
  }
}


/*
QStringList importPathList () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_IMPORTPATHLIST )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->importPathList (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}



/*
QNetworkAccessManager * networkAccessManager () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_NETWORKACCESSMANAGER )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkAccessManager * ptr = obj->networkAccessManager (  );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKACCESSMANAGER" );
  }
}


/*
QDeclarativeNetworkAccessManagerFactory * networkAccessManagerFactory () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_NETWORKACCESSMANAGERFACTORY )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDeclarativeNetworkAccessManagerFactory * ptr = obj->networkAccessManagerFactory (  );
    _qt5xhb_createReturnClass ( ptr, "QDECLARATIVENETWORKACCESSMANAGERFACTORY" );
  }
}


/*
QString offlineStoragePath () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_OFFLINESTORAGEPATH )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->offlineStoragePath (  ).toLatin1().data() );
  }
}


/*
bool outputWarningsToStandardError () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_OUTPUTWARNINGSTOSTANDARDERROR )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->outputWarningsToStandardError (  ) );
  }
}


/*
QStringList pluginPathList () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_PLUGINPATHLIST )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->pluginPathList (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
void removeImageProvider ( const QString & providerId )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_REMOVEIMAGEPROVIDER )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->removeImageProvider ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QDeclarativeContext * rootContext () const
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_ROOTCONTEXT )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDeclarativeContext * ptr = obj->rootContext (  );
    _qt5xhb_createReturnClass ( ptr, "QDECLARATIVECONTEXT" );
  }
}


/*
void setBaseUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETBASEURL )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    obj->setBaseUrl ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setImportPathList ( const QStringList & paths )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETIMPORTPATHLIST )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();
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
void setNetworkAccessManagerFactory ( QDeclarativeNetworkAccessManagerFactory * factory )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETNETWORKACCESSMANAGERFACTORY )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDeclarativeNetworkAccessManagerFactory * par1 = (QDeclarativeNetworkAccessManagerFactory *) _qt5xhb_itemGetPtr(1);
    obj->setNetworkAccessManagerFactory ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOfflineStoragePath ( const QString & dir )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETOFFLINESTORAGEPATH )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setOfflineStoragePath ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOutputWarningsToStandardError ( bool enabled )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETOUTPUTWARNINGSTOSTANDARDERROR )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOutputWarningsToStandardError ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPluginPathList ( const QStringList & paths )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETPLUGINPATHLIST )
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) _qt5xhb_itemGetPtrStackSelfItem();
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
static QDeclarativeContext * contextForObject ( const QObject * object )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_CONTEXTFOROBJECT )
{
  const QObject * par1 = (const QObject *) _qt5xhb_itemGetPtr(1);
  QDeclarativeContext * ptr = QDeclarativeEngine::contextForObject ( par1 );
  _qt5xhb_createReturnClass ( ptr, "QDECLARATIVECONTEXT" );
}


/*
static ObjectOwnership objectOwnership ( QObject * object )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_OBJECTOWNERSHIP )
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  hb_retni( QDeclarativeEngine::objectOwnership ( par1 ) );
}


/*
static void setContextForObject ( QObject * object, QDeclarativeContext * context )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETCONTEXTFOROBJECT )
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  QDeclarativeContext * par2 = (QDeclarativeContext *) _qt5xhb_itemGetPtr(2);
  QDeclarativeEngine::setContextForObject ( par1, par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setObjectOwnership ( QObject * object, ObjectOwnership ownership )
*/
HB_FUNC_STATIC( QDECLARATIVEENGINE_SETOBJECTOWNERSHIP )
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QDeclarativeEngine::setObjectOwnership ( par1,  (QDeclarativeEngine::ObjectOwnership) par2 );
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
