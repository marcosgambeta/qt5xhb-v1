/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QAUDIO_CH
#define QAUDIO_CH

/*
enum QAudio::Error
*/
#define QAudio_NoError                                               0
#define QAudio_OpenError                                             1
#define QAudio_IOError                                               2
#define QAudio_UnderrunError                                         3
#define QAudio_FatalError                                            4

/*
enum QAudio::Mode
*/
#define QAudio_AudioOutput                                           1
#define QAudio_AudioInput                                            0

/*
enum QAudio::State
*/
#define QAudio_ActiveState                                           0
#define QAudio_SuspendedState                                        1
#define QAudio_StoppedState                                          2
#define QAudio_IdleState                                             3

#endif /* QAUDIO_CH */
