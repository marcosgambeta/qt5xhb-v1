/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QCAMERAEXPOSURE_CH
#define QCAMERAEXPOSURE_CH

/*
enum QCameraExposure::ExposureMode
*/
#define QCameraExposure_ExposureAuto                                 0
#define QCameraExposure_ExposureManual                               1
#define QCameraExposure_ExposurePortrait                             2
#define QCameraExposure_ExposureNight                                3
#define QCameraExposure_ExposureBacklight                            4
#define QCameraExposure_ExposureSpotlight                            5
#define QCameraExposure_ExposureSports                               6
#define QCameraExposure_ExposureSnow                                 7
#define QCameraExposure_ExposureBeach                                8
#define QCameraExposure_ExposureLargeAperture                        9
#define QCameraExposure_ExposureSmallAperture                        10
#define QCameraExposure_ExposureModeVendor                           1000

/*
enum QCameraExposure::FlashMode
flags QCameraExposure::FlashModes
*/
#define QCameraExposure_FlashAuto                                    0x1
#define QCameraExposure_FlashOff                                     0x2
#define QCameraExposure_FlashOn                                      0x4
#define QCameraExposure_FlashRedEyeReduction                         0x8
#define QCameraExposure_FlashFill                                    0x10
#define QCameraExposure_FlashTorch                                   0x20
#define QCameraExposure_FlashVideoLight                              0x40
#define QCameraExposure_FlashSlowSyncFrontCurtain                    0x80
#define QCameraExposure_FlashSlowSyncRearCurtain                     0x100
#define QCameraExposure_FlashManual                                  0x200

/*
enum QCameraExposure::MeteringMode
*/
#define QCameraExposure_MeteringMatrix                               1
#define QCameraExposure_MeteringAverage                              2
#define QCameraExposure_MeteringSpot                                 3

#endif /* QCAMERAEXPOSURE_CH */
