$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QICON
REQUEST QPIXMAP
#endif

CLASS QWebSettings

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD defaultTextEncoding
   METHOD fontFamily
   METHOD fontSize
   METHOD localStoragePath
   METHOD resetAttribute
   METHOD resetFontFamily
   METHOD resetFontSize
   METHOD setAttribute
   METHOD setDefaultTextEncoding
   METHOD setFontFamily
   METHOD setFontSize
   METHOD setLocalStoragePath
   METHOD setUserStyleSheetUrl
   METHOD testAttribute
   METHOD userStyleSheetUrl
   METHOD clearIconDatabase
   METHOD clearMemoryCaches
   METHOD enablePersistentStorage
   METHOD globalSettings
   METHOD iconDatabasePath
   METHOD iconForUrl
   METHOD maximumPagesInCache
   METHOD offlineStorageDefaultQuota
   METHOD offlineStoragePath
   METHOD offlineWebApplicationCachePath
   METHOD offlineWebApplicationCacheQuota
   METHOD setIconDatabasePath
   METHOD setMaximumPagesInCache
   METHOD setObjectCacheCapacities
   METHOD setOfflineStorageDefaultQuota
   METHOD setOfflineStoragePath
   METHOD setOfflineWebApplicationCachePath
   METHOD setOfflineWebApplicationCacheQuota
   METHOD setWebGraphic
   METHOD webGraphic

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QUrl>

/*
QString defaultTextEncoding () const
*/
HB_FUNC_STATIC( QWEBSETTINGS_DEFAULTTEXTENCODING )
{
  QWebSettings * obj = (QWebSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->defaultTextEncoding () );
  }
}


/*
QString fontFamily ( FontFamily which ) const
*/
HB_FUNC_STATIC( QWEBSETTINGS_FONTFAMILY )
{
  QWebSettings * obj = (QWebSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->fontFamily ( (QWebSettings::FontFamily) hb_parni(1) ) );
  }
}


/*
int fontSize ( FontSize type ) const
*/
HB_FUNC_STATIC( QWEBSETTINGS_FONTSIZE )
{
  QWebSettings * obj = (QWebSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->fontSize ( (QWebSettings::FontSize) hb_parni(1) ) );
  }
}


/*
QString localStoragePath () const
*/
HB_FUNC_STATIC( QWEBSETTINGS_LOCALSTORAGEPATH )
{
  QWebSettings * obj = (QWebSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->localStoragePath () );
  }
}


/*
void resetAttribute ( WebAttribute attribute )
*/
HB_FUNC_STATIC( QWEBSETTINGS_RESETATTRIBUTE )
{
  QWebSettings * obj = (QWebSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resetAttribute ( (QWebSettings::WebAttribute) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resetFontFamily ( FontFamily which )
*/
HB_FUNC_STATIC( QWEBSETTINGS_RESETFONTFAMILY )
{
  QWebSettings * obj = (QWebSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resetFontFamily ( (QWebSettings::FontFamily) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resetFontSize ( FontSize type )
*/
HB_FUNC_STATIC( QWEBSETTINGS_RESETFONTSIZE )
{
  QWebSettings * obj = (QWebSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resetFontSize ( (QWebSettings::FontSize) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttribute ( WebAttribute attribute, bool on )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETATTRIBUTE )
{
  QWebSettings * obj = (QWebSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAttribute ( (QWebSettings::WebAttribute) hb_parni(1), PBOOL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultTextEncoding ( const QString & encoding )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETDEFAULTTEXTENCODING )
{
  QWebSettings * obj = (QWebSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDefaultTextEncoding ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFontFamily ( FontFamily which, const QString & family )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETFONTFAMILY )
{
  QWebSettings * obj = (QWebSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFontFamily ( (QWebSettings::FontFamily) hb_parni(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFontSize ( FontSize type, int size )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETFONTSIZE )
{
  QWebSettings * obj = (QWebSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFontSize ( (QWebSettings::FontSize) hb_parni(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLocalStoragePath ( const QString & path )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETLOCALSTORAGEPATH )
{
  QWebSettings * obj = (QWebSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLocalStoragePath ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUserStyleSheetUrl ( const QUrl & location )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETUSERSTYLESHEETURL )
{
  QWebSettings * obj = (QWebSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUserStyleSheetUrl ( *PQURL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool testAttribute ( WebAttribute attribute ) const
*/
HB_FUNC_STATIC( QWEBSETTINGS_TESTATTRIBUTE )
{
  QWebSettings * obj = (QWebSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->testAttribute ( (QWebSettings::WebAttribute) hb_parni(1) ) );
  }
}


/*
QUrl userStyleSheetUrl () const
*/
HB_FUNC_STATIC( QWEBSETTINGS_USERSTYLESHEETURL )
{
  QWebSettings * obj = (QWebSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->userStyleSheetUrl () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
static void clearIconDatabase ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_CLEARICONDATABASE )
{
  QWebSettings::clearIconDatabase ();
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void clearMemoryCaches ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_CLEARMEMORYCACHES )
{
  QWebSettings::clearMemoryCaches ();
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void enablePersistentStorage ( const QString & path = QString() )
*/
HB_FUNC_STATIC( QWEBSETTINGS_ENABLEPERSISTENTSTORAGE )
{
  QWebSettings::enablePersistentStorage ( OPQSTRING(1,QString()) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QWebSettings * globalSettings ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_GLOBALSETTINGS )
{
  QWebSettings * ptr = QWebSettings::globalSettings ();
  _qt5xhb_createReturnClass ( ptr, "QWEBSETTINGS" );
}


/*
static QString iconDatabasePath ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_ICONDATABASEPATH )
{
  RQSTRING( QWebSettings::iconDatabasePath () );
}


/*
static QIcon iconForUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QWEBSETTINGS_ICONFORURL )
{
  QIcon * ptr = new QIcon( QWebSettings::iconForUrl ( *PQURL(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QICON", true );
}


/*
static int maximumPagesInCache ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_MAXIMUMPAGESINCACHE )
{
  RINT( QWebSettings::maximumPagesInCache () );
}


/*
static qint64 offlineStorageDefaultQuota ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_OFFLINESTORAGEDEFAULTQUOTA )
{
  RQINT64( QWebSettings::offlineStorageDefaultQuota () );
}


/*
static QString offlineStoragePath ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_OFFLINESTORAGEPATH )
{
  RQSTRING( QWebSettings::offlineStoragePath () );
}


/*
static QString offlineWebApplicationCachePath ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_OFFLINEWEBAPPLICATIONCACHEPATH )
{
  RQSTRING( QWebSettings::offlineWebApplicationCachePath () );
}


/*
static qint64 offlineWebApplicationCacheQuota ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_OFFLINEWEBAPPLICATIONCACHEQUOTA )
{
  RQINT64( QWebSettings::offlineWebApplicationCacheQuota () );
}


/*
static void setIconDatabasePath ( const QString & path )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETICONDATABASEPATH )
{
  QWebSettings::setIconDatabasePath ( PQSTRING(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setMaximumPagesInCache ( int pages )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETMAXIMUMPAGESINCACHE )
{
  QWebSettings::setMaximumPagesInCache ( PINT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setObjectCacheCapacities ( int cacheMinDeadCapacity, int cacheMaxDead, int totalCapacity )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETOBJECTCACHECAPACITIES )
{
  QWebSettings::setObjectCacheCapacities ( PINT(1), PINT(2), PINT(3) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setOfflineStorageDefaultQuota ( qint64 maximumSize )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETOFFLINESTORAGEDEFAULTQUOTA )
{
  QWebSettings::setOfflineStorageDefaultQuota ( PQINT64(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setOfflineStoragePath ( const QString & path )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETOFFLINESTORAGEPATH )
{
  QWebSettings::setOfflineStoragePath ( PQSTRING(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setOfflineWebApplicationCachePath ( const QString & path )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETOFFLINEWEBAPPLICATIONCACHEPATH )
{
  QWebSettings::setOfflineWebApplicationCachePath ( PQSTRING(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setOfflineWebApplicationCacheQuota ( qint64 maximumSize )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETOFFLINEWEBAPPLICATIONCACHEQUOTA )
{
  QWebSettings::setOfflineWebApplicationCacheQuota ( PQINT64(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setWebGraphic ( WebGraphic type, const QPixmap & graphic )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETWEBGRAPHIC )
{
  QWebSettings::setWebGraphic ( (QWebSettings::WebGraphic) hb_parni(1), *PQPIXMAP(2) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QPixmap webGraphic ( WebGraphic type )
*/
HB_FUNC_STATIC( QWEBSETTINGS_WEBGRAPHIC )
{
  QPixmap * ptr = new QPixmap( QWebSettings::webGraphic ( (QWebSettings::WebGraphic) hb_parni(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
}



$extraMethods

#pragma ENDDUMP
