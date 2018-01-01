%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

/*
enum QEventLoop::ProcessEventsFlag
flags QEventLoop::ProcessEventsFlags
*/
#define QEventLoop_AllEvents                                         0x00
#define QEventLoop_ExcludeUserInputEvents                            0x01
#define QEventLoop_ExcludeSocketNotifiers                            0x02
#define QEventLoop_WaitForMoreEvents                                 0x04
#define QEventLoop_DeferredDeletion                                  0x10
