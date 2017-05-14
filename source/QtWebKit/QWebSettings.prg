/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QICON
REQUEST QPIXMAP
#endif

CLASS QWebSettings

   DATA pointer
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QWebSettings
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWebSettings>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QWebSettings>
#endif

#include <QUrl>



/*
QString defaultTextEncoding () const
*/
HB_FUNC_STATIC( QWEBSETTINGS_DEFAULTTEXTENCODING )
{
  QWebSettings * obj = (QWebSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->defaultTextEncoding (  ).toLatin1().data() );
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
    int par1 = hb_parni(1);
    hb_retc( (const char *) obj->fontFamily (  (QWebSettings::FontFamily) par1 ).toLatin1().data() );
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
    int par1 = hb_parni(1);
    hb_retni( obj->fontSize (  (QWebSettings::FontSize) par1 ) );
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
    hb_retc( (const char *) obj->localStoragePath (  ).toLatin1().data() );
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
    int par1 = hb_parni(1);
    obj->resetAttribute (  (QWebSettings::WebAttribute) par1 );
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
    int par1 = hb_parni(1);
    obj->resetFontFamily (  (QWebSettings::FontFamily) par1 );
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
    int par1 = hb_parni(1);
    obj->resetFontSize (  (QWebSettings::FontSize) par1 );
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
    int par1 = hb_parni(1);
    obj->setAttribute (  (QWebSettings::WebAttribute) par1, PBOOL(2) );
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
    int par1 = hb_parni(1);
    obj->setFontFamily (  (QWebSettings::FontFamily) par1, PQSTRING(2) );
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
    int par1 = hb_parni(1);
    obj->setFontSize (  (QWebSettings::FontSize) par1, PINT(2) );
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
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    obj->setUserStyleSheetUrl ( *par1 );
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
    int par1 = hb_parni(1);
    hb_retl( obj->testAttribute (  (QWebSettings::WebAttribute) par1 ) );
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
    QUrl * ptr = new QUrl( obj->userStyleSheetUrl (  ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
static void clearIconDatabase ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_CLEARICONDATABASE )
{
  QWebSettings::clearIconDatabase (  );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void clearMemoryCaches ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_CLEARMEMORYCACHES )
{
  QWebSettings::clearMemoryCaches (  );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void enablePersistentStorage ( const QString & path = QString() )
*/
HB_FUNC_STATIC( QWEBSETTINGS_ENABLEPERSISTENTSTORAGE )
{
  QString par1 = ISNIL(1)? QString() : QLatin1String( hb_parc(1) );
  QWebSettings::enablePersistentStorage ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QWebSettings * globalSettings ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_GLOBALSETTINGS )
{
  QWebSettings * ptr = QWebSettings::globalSettings (  );
  _qt5xhb_createReturnClass ( ptr, "QWEBSETTINGS" );
}


/*
static QString iconDatabasePath ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_ICONDATABASEPATH )
{
  hb_retc( (const char *) QWebSettings::iconDatabasePath (  ).toLatin1().data() );
}


/*
static QIcon iconForUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QWEBSETTINGS_ICONFORURL )
{
  QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
  QIcon * ptr = new QIcon( QWebSettings::iconForUrl ( *par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QICON", true );
}


/*
static int maximumPagesInCache ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_MAXIMUMPAGESINCACHE )
{
  hb_retni( QWebSettings::maximumPagesInCache (  ) );
}


/*
static qint64 offlineStorageDefaultQuota ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_OFFLINESTORAGEDEFAULTQUOTA )
{
  hb_retni( QWebSettings::offlineStorageDefaultQuota (  ) );
}


/*
static QString offlineStoragePath ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_OFFLINESTORAGEPATH )
{
  hb_retc( (const char *) QWebSettings::offlineStoragePath (  ).toLatin1().data() );
}


/*
static QString offlineWebApplicationCachePath ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_OFFLINEWEBAPPLICATIONCACHEPATH )
{
  hb_retc( (const char *) QWebSettings::offlineWebApplicationCachePath (  ).toLatin1().data() );
}


/*
static qint64 offlineWebApplicationCacheQuota ()
*/
HB_FUNC_STATIC( QWEBSETTINGS_OFFLINEWEBAPPLICATIONCACHEQUOTA )
{
  hb_retni( QWebSettings::offlineWebApplicationCacheQuota (  ) );
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
  QWebSettings::setOfflineStorageDefaultQuota ( (qint64) hb_parni(1) );
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
  QWebSettings::setOfflineWebApplicationCacheQuota ( (qint64) hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setWebGraphic ( WebGraphic type, const QPixmap & graphic )
*/
HB_FUNC_STATIC( QWEBSETTINGS_SETWEBGRAPHIC )
{
  int par1 = hb_parni(1);
  QPixmap * par2 = (QPixmap *) _qt5xhb_itemGetPtr(2);
  QWebSettings::setWebGraphic (  (QWebSettings::WebGraphic) par1, *par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QPixmap webGraphic ( WebGraphic type )
*/
HB_FUNC_STATIC( QWEBSETTINGS_WEBGRAPHIC )
{
  int par1 = hb_parni(1);
  QPixmap * ptr = new QPixmap( QWebSettings::webGraphic (  (QWebSettings::WebGraphic) par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
}



HB_FUNC_STATIC( QWEBSETTINGS_NEWFROM )
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

HB_FUNC_STATIC( QWEBSETTINGS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QWEBSETTINGS_NEWFROM );
}

HB_FUNC_STATIC( QWEBSETTINGS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QWEBSETTINGS_NEWFROM );
}

HB_FUNC_STATIC( QWEBSETTINGS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWEBSETTINGS_SETSELFDESTRUCTION )
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