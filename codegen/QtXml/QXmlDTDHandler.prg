$header

#include "hbclass.ch"

CLASS QXmlDTDHandler

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD errorString
   METHOD notationDecl
   METHOD unparsedEntityDecl

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
virtual QString errorString () const = 0
*/
$virtualMethod=|QString|errorString|

/*
virtual bool notationDecl ( const QString & name, const QString & publicId, const QString & systemId ) = 0
*/
$virtualMethod=|bool|notationDecl|const QString &,const QString &,const QString &

/*
virtual bool unparsedEntityDecl ( const QString & name, const QString & publicId, const QString & systemId, const QString & notationName ) = 0
*/
$virtualMethod=|bool|unparsedEntityDecl|const QString &,const QString &,const QString &,const QString &

$extraMethods

#pragma ENDDUMP
