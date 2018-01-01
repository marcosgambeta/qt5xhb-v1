%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

/*
enum QStateMachine::EventPriority
*/
#define QStateMachine_NormalPriority                                 0
#define QStateMachine_HighPriority                                   1

/*
enum QStateMachine::Error
*/
#define QStateMachine_NoError                                        0
#define QStateMachine_NoInitialStateError                            1
#define QStateMachine_NoDefaultStateInHistoryStateError              2
#define QStateMachine_NoCommonAncestorForTransitionError             3
