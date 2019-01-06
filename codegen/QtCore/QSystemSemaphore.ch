%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

/*
enum QSystemSemaphore::AccessMode
*/
#define QSystemSemaphore_Open                                        0
#define QSystemSemaphore_Create                                      1

/*
enum QSystemSemaphore::SystemSemaphoreError
*/
#define QSystemSemaphore_NoError                                     0
#define QSystemSemaphore_PermissionDenied                            1
#define QSystemSemaphore_KeyError                                    2
#define QSystemSemaphore_AlreadyExists                               3
#define QSystemSemaphore_NotFound                                    4
#define QSystemSemaphore_OutOfResources                              5
#define QSystemSemaphore_UnknownError                                6
