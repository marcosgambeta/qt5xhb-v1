%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

/*
enum QElapsedTimer::ClockType
*/
#define QElapsedTimer_SystemTime                                     0
#define QElapsedTimer_MonotonicClock                                 1
#define QElapsedTimer_TickCounter                                    2
#define QElapsedTimer_MachAbsoluteTime                               3
#define QElapsedTimer_PerformanceCounter                             4
