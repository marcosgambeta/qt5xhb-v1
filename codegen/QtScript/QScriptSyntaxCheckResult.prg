%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScript

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

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
