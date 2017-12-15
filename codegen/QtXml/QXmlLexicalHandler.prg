$header

#include "hbclass.ch"

CLASS QXmlLexicalHandler

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD comment
   METHOD endCDATA
   METHOD endDTD
   METHOD endEntity
   METHOD errorString
   METHOD startCDATA
   METHOD startDTD
   METHOD startEntity

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

$prototype=virtual bool comment ( const QString & ch ) = 0
$virtualMethod=|bool|comment|const QString &

$prototype=virtual bool endCDATA () = 0
$virtualMethod=|bool|endCDATA|

$prototype=virtual bool endDTD () = 0
$virtualMethod=|bool|endDTD|

$prototype=virtual bool endEntity ( const QString & name ) = 0
$virtualMethod=|bool|endEntity|const QString &

$prototype=virtual QString errorString () const = 0
$virtualMethod=|QString|errorString|

$prototype=virtual bool startCDATA () = 0
$virtualMethod=|bool|startCDATA|

$prototype=virtual bool startDTD ( const QString & name, const QString & publicId, const QString & systemId ) = 0
$virtualMethod=|bool|startDTD|const QString &,const QString &,const QString &

$prototype=virtual bool startEntity ( const QString & name ) = 0
$virtualMethod=|bool|startEntity|const QString &

$extraMethods

#pragma ENDDUMP
