%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQml

$header

/*
enum QQmlComponent::CompilationMode
*/
#define QQmlComponent_PreferSynchronous                              0
#define QQmlComponent_Asynchronous                                   1

/*
enum QQmlComponent::Status
*/
#define QQmlComponent_Null                                           0
#define QQmlComponent_Ready                                          1
#define QQmlComponent_Loading                                        2
#define QQmlComponent_Error                                          3
