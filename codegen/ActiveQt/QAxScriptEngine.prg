%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=ActiveQt

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAxObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAxScriptEngine ( const QString & language, QAxScript * script )
$constructor=|new|const QString &,QAxScript *

$deleteMethod

$prototype=void addItem ( const QString & name )
$method=|void|addItem|const QString &

$prototype=bool hasIntrospection () const
$method=|bool|hasIntrospection|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QString scriptLanguage () const
$method=|QString|scriptLanguage|

$prototype=void setState ( State st )
$method=|void|setState|QAxScriptEngine::State

$prototype=State state () const
$method=|QAxScriptEngine::State|state|

#pragma ENDDUMP
