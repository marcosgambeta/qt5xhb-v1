/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QAUDIOFORMAT_CH
#define QAUDIOFORMAT_CH

/*
enum QAudioFormat::Endian
*/
#define QAudioFormat_BigEndian                                       QSysInfo_BigEndian
#define QAudioFormat_LittleEndian                                    QSysInfo_LittleEndian

/*
enum QAudioFormat::SampleType
*/
#define QAudioFormat_Unknown                                         0
#define QAudioFormat_SignedInt                                       1
#define QAudioFormat_UnSignedInt                                     2
#define QAudioFormat_Float                                           3

#endif /* QAUDIOFORMAT_CH */
