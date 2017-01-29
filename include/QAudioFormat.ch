/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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
