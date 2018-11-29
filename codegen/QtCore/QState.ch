%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

/*
enum QState::ChildMode
*/
#define QState_ExclusiveStates                                       0
#define QState_ParallelStates                                        1

/*
enum QState::RestorePolicy
*/
#define QState_DontRestoreProperties                                 0
#define QState_RestoreProperties                                     1
