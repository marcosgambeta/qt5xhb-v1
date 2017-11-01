/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QMEDIAPLAYLIST_CH
#define QMEDIAPLAYLIST_CH

/*
enum QMediaPlaylist::Error
*/
#define QMediaPlaylist_NoError                                       0
#define QMediaPlaylist_FormatError                                   1
#define QMediaPlaylist_FormatNotSupportedError                       2
#define QMediaPlaylist_NetworkError                                  3
#define QMediaPlaylist_AccessDeniedError                             4

/*
enum QMediaPlaylist::PlaybackMode
*/
#define QMediaPlaylist_CurrentItemOnce                               0
#define QMediaPlaylist_CurrentItemInLoop                             1
#define QMediaPlaylist_Sequential                                    2
#define QMediaPlaylist_Loop                                          3
#define QMediaPlaylist_Random                                        4

#endif /* QMEDIAPLAYLIST_CH */
