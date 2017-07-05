$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDATE
#endif

CLASS QLibraryInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD licensee
   METHOD licensedProducts
   METHOD buildDate
   METHOD isDebugBuild
   METHOD location

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

$deleteMethod

/*
static QString licensee()
*/
$staticMethod=|QString|licensee|

/*
static QString licensedProducts()
*/
$staticMethod=|QString|licensedProducts|

/*
static QDate buildDate()
*/
HB_FUNC_STATIC( QLIBRARYINFO_BUILDDATE )
{
  QDate * ptr = new QDate( QLibraryInfo::buildDate () );
  _qt5xhb_createReturnClass ( ptr, "QDATE", true );
}

/*
static bool isDebugBuild()
*/
$staticMethod=|bool|isDebugBuild|

/*
static QString location(LibraryLocation)
*/
$staticMethod=|QString|location|QLibraryInfo::LibraryLocation

$extraMethods

#pragma ENDDUMP
