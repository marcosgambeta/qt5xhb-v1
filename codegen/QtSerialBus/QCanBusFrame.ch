%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSerialBus

$header

/*
enum QCanBusFrame::FrameType
*/
#define QCanBusFrame_UnknownFrame                                    0x0
#define QCanBusFrame_DataFrame                                       0x1
#define QCanBusFrame_ErrorFrame                                      0x2
#define QCanBusFrame_RemoteRequestFrame                              0x3
#define QCanBusFrame_InvalidFrame                                    0x4

/*
enum QCanBusFrame::FrameError
flags QCanBusFrame::FrameErrors
*/
#define QCanBusFrame_NoError                                         0
#define QCanBusFrame_TransmissionTimeoutError                        (1 << 0)
#define QCanBusFrame_LostArbitrationError                            (1 << 1)
#define QCanBusFrame_ControllerError                                 (1 << 2)
#define QCanBusFrame_ProtocolViolationError                          (1 << 3)
#define QCanBusFrame_TransceiverError                                (1 << 4)
#define QCanBusFrame_MissingAcknowledgmentError                      (1 << 5)
#define QCanBusFrame_BusOffError                                     (1 << 6)
#define QCanBusFrame_BusError                                        (1 << 7)
#define QCanBusFrame_ControllerRestartError                          (1 << 8)
#define QCanBusFrame_UnknownError                                    (1 << 9)
#define QCanBusFrame_AnyError                                        0x1FFFFFFFU

/*
enum QCanBusFrame::Version
*/
#define QCanBusFrame_Qt_5_8                                          0x0
#define QCanBusFrame_Qt_5_9                                          0x1
#define QCanBusFrame_Qt_5_10                                         0x2
