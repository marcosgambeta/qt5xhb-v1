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

/*
QScriptSyntaxCheckResult(const QScriptSyntaxCheckResult & other)
*/
$constructor=|new|const QScriptSyntaxCheckResult &

$deleteMethod

/*
int errorColumnNumber() const
*/
$method=|int|errorColumnNumber|

/*
int errorLineNumber() const
*/
$method=|int|errorLineNumber|

/*
QString errorMessage() const
*/
$method=|QString|errorMessage|

/*
State state() const
*/
$method=|QScriptSyntaxCheckResult::State|state|

$extraMethods

#pragma ENDDUMP
