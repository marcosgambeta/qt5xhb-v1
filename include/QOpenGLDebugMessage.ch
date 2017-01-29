/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

/*
enum QOpenGLDebugMessage::Source
flags QOpenGLDebugMessage::Sources
*/
#define QOpenGLDebugMessage_InvalidSource                            0x00000000
#define QOpenGLDebugMessage_APISource                                0x00000001
#define QOpenGLDebugMessage_WindowSystemSource                       0x00000002
#define QOpenGLDebugMessage_ShaderCompilerSource                     0x00000004
#define QOpenGLDebugMessage_ThirdPartySource                         0x00000008
#define QOpenGLDebugMessage_ApplicationSource                        0x00000010
#define QOpenGLDebugMessage_OtherSource                              0x00000020
#define QOpenGLDebugMessage_LastSource                               QOpenGLDebugMessage_OtherSource
#define QOpenGLDebugMessage_AnySource                                0xffffffff

/*
enum QOpenGLDebugMessage::Type
flags QOpenGLDebugMessage::Types
*/
#define QOpenGLDebugMessage_InvalidType                              0x00000000
#define QOpenGLDebugMessage_ErrorType                                0x00000001
#define QOpenGLDebugMessage_DeprecatedBehaviorType                   0x00000002
#define QOpenGLDebugMessage_UndefinedBehaviorType                    0x00000004
#define QOpenGLDebugMessage_PortabilityType                          0x00000008
#define QOpenGLDebugMessage_PerformanceType                          0x00000010
#define QOpenGLDebugMessage_OtherType                                0x00000020
#define QOpenGLDebugMessage_MarkerType                               0x00000040
#define QOpenGLDebugMessage_GroupPushType                            0x00000080
#define QOpenGLDebugMessage_GroupPopType                             0x00000100
#define QOpenGLDebugMessage_LastType                                 QOpenGLDebugMessage_GroupPopType
#define QOpenGLDebugMessage_AnyType                                  0xffffffff

/*
enum QOpenGLDebugMessage::Severity
flags QOpenGLDebugMessage::Severities
*/
#define QOpenGLDebugMessage_InvalidSeverity                          0x00000000
#define QOpenGLDebugMessage_HighSeverity                             0x00000001
#define QOpenGLDebugMessage_MediumSeverity                           0x00000002
#define QOpenGLDebugMessage_LowSeverity                              0x00000004
#define QOpenGLDebugMessage_NotificationSeverity                     0x00000008
#define QOpenGLDebugMessage_LastSeverity                             QOpenGLDebugMessage_NotificationSeverity
#define QOpenGLDebugMessage_AnySeverity                              0xffffffff
