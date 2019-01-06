%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

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
