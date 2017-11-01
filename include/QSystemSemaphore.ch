/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QSYSTEMSEMAPHORE_CH
#define QSYSTEMSEMAPHORE_CH

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

#endif /* QSYSTEMSEMAPHORE_CH */
