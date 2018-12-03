%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngine

$header

/*
enum QQuickWebEngineScript::InjectionPoint
*/
#define QQuickWebEngineScript_Deferred                               0
#define QQuickWebEngineScript_DocumentReady                          1
#define QQuickWebEngineScript_DocumentCreation                       2

/*
enum QQuickWebEngineScript::ScriptWorldId
*/
#define QQuickWebEngineScript_MainWorld                              0
#define QQuickWebEngineScript_ApplicationWorld                       1
#define QQuickWebEngineScript_UserWorld                              2
