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
$method=|QString|defaultTextEncoding|

/*
QString fontFamily ( FontFamily which ) const
*/
$method=|QString|fontFamily|QWebSettings::FontFamily

/*
int fontSize ( FontSize type ) const
*/
$method=|int|fontSize|QWebSettings::FontSize

/*
QString localStoragePath () const
*/
$method=|QString|localStoragePath|

/*
void resetAttribute ( WebAttribute attribute )
*/
$method=|void|resetAttribute|QWebSettings::WebAttribute

/*
void resetFontFamily ( FontFamily which )
*/
$method=|void|resetFontFamily|QWebSettings::FontFamily

/*
void resetFontSize ( FontSize type )
*/
$method=|void|resetFontSize|QWebSettings::FontSize

/*
void setAttribute ( WebAttribute attribute, bool on )
*/
$method=|void|setAttribute|QWebSettings::WebAttribute,bool

/*
void setDefaultTextEncoding ( const QString & encoding )
*/
$method=|void|setDefaultTextEncoding|const QString &

/*
void setFontFamily ( FontFamily which, const QString & family )
*/
$method=|void|setFontFamily|QWebSettings::FontFamily,const QString &

/*
void setFontSize ( FontSize type, int size )
*/
$method=|void|setFontSize|QWebSettings::FontSize,int

/*
void setLocalStoragePath ( const QString & path )
*/
$method=|void|setLocalStoragePath|const QString &

/*
void setUserStyleSheetUrl ( const QUrl & location )
*/
$method=|void|setUserStyleSheetUrl|const QUrl &

/*
bool testAttribute ( WebAttribute attribute ) const
*/
$method=|bool|testAttribute|QWebSettings::WebAttribute

/*
QUrl userStyleSheetUrl () const
*/
$method=|QUrl|userStyleSheetUrl|

/*
static void clearIconDatabase ()
*/
$staticMethod=|void|clearIconDatabase|

/*
static void clearMemoryCaches ()
*/
$staticMethod=|void|clearMemoryCaches|

/*
static void enablePersistentStorage ( const QString & path = QString() )
*/
$staticMethod=|void|enablePersistentStorage|const QString &=QString()

/*
static QWebSettings * globalSettings ()
*/
$staticMethod=|QWebSettings *|globalSettings|

/*
static QString iconDatabasePath ()
*/
$staticMethod=|QString|iconDatabasePath|

/*
static QIcon iconForUrl ( const QUrl & url )
*/
$staticMethod=|QIcon|iconForUrl|const QUrl &

/*
static int maximumPagesInCache ()
*/
$staticMethod=|int|maximumPagesInCache|

/*
static qint64 offlineStorageDefaultQuota ()
*/
$staticMethod=|qint64|offlineStorageDefaultQuota|

/*
static QString offlineStoragePath ()
*/
$staticMethod=|QString|offlineStoragePath|

/*
static QString offlineWebApplicationCachePath ()
*/
$staticMethod=|QString|offlineWebApplicationCachePath|

/*
static qint64 offlineWebApplicationCacheQuota ()
*/
$staticMethod=|qint64|offlineWebApplicationCacheQuota|

/*
static void setIconDatabasePath ( const QString & path )
*/
$staticMethod=|void|setIconDatabasePath|const QString &

/*
static void setMaximumPagesInCache ( int pages )
*/
$staticMethod=|void|setMaximumPagesInCache|int

/*
static void setObjectCacheCapacities ( int cacheMinDeadCapacity, int cacheMaxDead, int totalCapacity )
*/
$staticMethod=|void|setObjectCacheCapacities|int,int,int

/*
static void setOfflineStorageDefaultQuota ( qint64 maximumSize )
*/
$staticMethod=|void|setOfflineStorageDefaultQuota|qint64

/*
static void setOfflineStoragePath ( const QString & path )
*/
$staticMethod=|void|setOfflineStoragePath|const QString &

/*
static void setOfflineWebApplicationCachePath ( const QString & path )
*/
$staticMethod=|void|setOfflineWebApplicationCachePath|const QString &

/*
static void setOfflineWebApplicationCacheQuota ( qint64 maximumSize )
*/
$staticMethod=|void|setOfflineWebApplicationCacheQuota|qint64

/*
static void setWebGraphic ( WebGraphic type, const QPixmap & graphic )
*/
$staticMethod=|void|setWebGraphic|QWebSettings::WebGraphic,const QPixmap &

/*
static QPixmap webGraphic ( WebGraphic type )
*/
$staticMethod=|QPixmap|webGraphic|QWebSettings::WebGraphic

$extraMethods

#pragma ENDDUMP
