%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

/*
enum QMultimedia::SupportEstimate
*/
#define QMultimedia_NotSupported                                     0
#define QMultimedia_MaybeSupported                                   1
#define QMultimedia_ProbablySupported                                2
#define QMultimedia_PreferredService                                 3

/*
enum QMultimedia::EncodingQuality
*/
#define QMultimedia_VeryLowQuality                                   0
#define QMultimedia_LowQuality                                       1
#define QMultimedia_NormalQuality                                    2
#define QMultimedia_HighQuality                                      3
#define QMultimedia_VeryHighQuality                                  4

/*
enum QMultimedia::EncodingMode
*/
#define QMultimedia_ConstantQualityEncoding                          0
#define QMultimedia_ConstantBitRateEncoding                          1
#define QMultimedia_AverageBitRateEncoding                           2
#define QMultimedia_TwoPassEncoding                                  3

/*
enum QMultimedia::AvailabilityStatus
*/
#define QMultimedia_Available                                        0
#define QMultimedia_ServiceMissing                                   1
#define QMultimedia_Busy                                             2
#define QMultimedia_ResourceError                                    3
