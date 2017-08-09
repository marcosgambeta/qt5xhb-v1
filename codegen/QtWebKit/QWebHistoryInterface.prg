$header

#include "hbclass.ch"

CLASS QWebHistoryInterface INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD addHistoryEntry
   METHOD historyContains
   METHOD defaultInterface
   METHOD setDefaultInterface

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual void addHistoryEntry ( const QString & url ) = 0
*/
$method=|void|addHistoryEntry|const QString &

/*
virtual bool historyContains ( const QString & url ) const = 0
*/
$method=|bool|historyContains|const QString &

/*
static QWebHistoryInterface * defaultInterface ()
*/
$staticMethod=|QWebHistoryInterface *|defaultInterface|

/*
static void setDefaultInterface ( QWebHistoryInterface * defaultInterface )
*/
$staticMethod=|void|setDefaultInterface|QWebHistoryInterface *

#pragma ENDDUMP
