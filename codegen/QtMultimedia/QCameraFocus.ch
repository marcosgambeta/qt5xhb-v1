$header

/*
enum QCameraFocus::FocusMode
flags QCameraFocus::FocusModes
*/
#define QCameraFocus_ManualFocus                                     0x1
#define QCameraFocus_HyperfocalFocus                                 0x02
#define QCameraFocus_InfinityFocus                                   0x04
#define QCameraFocus_AutoFocus                                       0x8
#define QCameraFocus_ContinuousFocus                                 0x10
#define QCameraFocus_MacroFocus                                      0x20

/*
enum QCameraFocus::FocusPointMode
*/
#define QCameraFocus_FocusPointAuto                                  0
#define QCameraFocus_FocusPointCenter                                1
#define QCameraFocus_FocusPointFaceDetection                         2
#define QCameraFocus_FocusPointCustom                                3
