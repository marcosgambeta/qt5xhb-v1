$header

#include "hbclass.ch"

CLASS QXmlErrorHandler

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD error
   METHOD errorString
   METHOD fatalError
   METHOD warning

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
virtual bool error ( const QXmlParseException & exception ) = 0
*/
$virtualMethod=|bool|error|const QXmlParseException &

/*
virtual QString errorString () const = 0
*/
$virtualMethod=|QString|errorString|

/*
virtual bool fatalError ( const QXmlParseException & exception ) = 0
*/
$virtualMethod=|bool|fatalError|const QXmlParseException &

/*
virtual bool warning ( const QXmlParseException & exception ) = 0
*/
$virtualMethod=|bool|warning|const QXmlParseException &

$extraMethods

#pragma ENDDUMP
