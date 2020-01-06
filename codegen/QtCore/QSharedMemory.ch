%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

/*
enum QSharedMemory::AccessMode
*/
#define QSharedMemory_ReadOnly                                       0
#define QSharedMemory_ReadWrite                                      1

/*
enum QSharedMemory::SharedMemoryError
*/
#define QSharedMemory_NoError                                        0
#define QSharedMemory_PermissionDenied                               1
#define QSharedMemory_InvalidSize                                    2
#define QSharedMemory_KeyError                                       3
#define QSharedMemory_AlreadyExists                                  4
#define QSharedMemory_NotFound                                       5
#define QSharedMemory_LockError                                      6
#define QSharedMemory_OutOfResources                                 7
#define QSharedMemory_UnknownError                                   8
