/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
enum QMediaPlayer::Error
*/
#define QMediaPlayer_NoError                                         0
#define QMediaPlayer_ResourceError                                   1
#define QMediaPlayer_FormatError                                     2
#define QMediaPlayer_NetworkError                                    3
#define QMediaPlayer_AccessDeniedError                               4
#define QMediaPlayer_ServiceMissingError                             5

/*
enum QMediaPlayer::Flag
flags QMediaPlayer::Flags
*/
#define QMediaPlayer_LowLatency                                      0x01
#define QMediaPlayer_StreamPlayback                                  0x02
#define QMediaPlayer_VideoSurface                                    0x04

/*
enum QMediaPlayer::MediaStatus
*/
#define QMediaPlayer_UnknownMediaStatus                              0
#define QMediaPlayer_NoMedia                                         1
#define QMediaPlayer_LoadingMedia                                    2
#define QMediaPlayer_LoadedMedia                                     3
#define QMediaPlayer_StalledMedia                                    4
#define QMediaPlayer_BufferingMedia                                  5
#define QMediaPlayer_BufferedMedia                                   6
#define QMediaPlayer_EndOfMedia                                      7
#define QMediaPlayer_InvalidMedia                                    8

/*
enum QMediaPlayer::State
*/
#define QMediaPlayer_StoppedState                                    0
#define QMediaPlayer_PlayingState                                    1
#define QMediaPlayer_PausedState                                     2
