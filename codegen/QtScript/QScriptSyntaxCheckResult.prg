$header

#include "hbclass.ch"

CLASS QScriptSyntaxCheckResult

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD errorColumnNumber
   METHOD errorLineNumber
   METHOD errorMessage
   METHOD state

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

$prototype=QScriptSyntaxCheckResult(const QScriptSyntaxCheckResult & other)
$constructor=|new|const QScriptSyntaxCheckResult &

$deleteMethod

$prototype=int errorColumnNumber() const
$method=|int|errorColumnNumber|

$prototype=int errorLineNumber() const
$method=|int|errorLineNumber|

$prototype=QString errorMessage() const
$method=|QString|errorMessage|

$prototype=State state() const
$method=|QScriptSyntaxCheckResult::State|state|

$extraMethods

#pragma ENDDUMP
