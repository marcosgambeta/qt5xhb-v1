/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QEVENTLOOP_CH
#define QEVENTLOOP_CH

/*
enum QEventLoop::ProcessEventsFlag
flags QEventLoop::ProcessEventsFlags
*/
#define QEventLoop_AllEvents                                         0x00
#define QEventLoop_ExcludeUserInputEvents                            0x01
#define QEventLoop_ExcludeSocketNotifiers                            0x02
#define QEventLoop_WaitForMoreEvents                                 0x04
#define QEventLoop_DeferredDeletion                                  0x10

#endif /* QEVENTLOOP_CH */
