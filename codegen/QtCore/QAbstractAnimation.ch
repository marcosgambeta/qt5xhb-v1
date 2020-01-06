%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

/*
enum QAbstractAnimation::DeletionPolicy
*/
#define QAbstractAnimation_KeepWhenStopped                           0
#define QAbstractAnimation_DeleteWhenStopped                         1

/*
enum QAbstractAnimation::Direction
*/
#define QAbstractAnimation_Forward                                   0
#define QAbstractAnimation_Backward                                  1

/*
enum QAbstractAnimation::State
*/
#define QAbstractAnimation_Stopped                                   0
#define QAbstractAnimation_Paused                                    1
#define QAbstractAnimation_Running                                   2
