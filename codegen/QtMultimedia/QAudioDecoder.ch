%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

/*
enum QAudioDecoder::Error
*/
#define QAudioDecoder_NoError                                        0
#define QAudioDecoder_ResourceError                                  1
#define QAudioDecoder_FormatError                                    2
#define QAudioDecoder_AccessDeniedError                              3
#define QAudioDecoder_ServiceMissingError                            4

/*
enum QAudioDecoder::State
*/
#define QAudioDecoder_StoppedState                                   0
#define QAudioDecoder_DecodingState                                  1
