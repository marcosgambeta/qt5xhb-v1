/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
enum QSurfaceFormat::FormatOption
*/
#define QSurfaceFormat_StereoBuffers                                 0x0001
#define QSurfaceFormat_DebugContext                                  0x0002
#define QSurfaceFormat_DeprecatedFunctions                           0x0004

/*
enum QSurfaceFormat::SwapBehavior
*/
#define QSurfaceFormat_DefaultSwapBehavior                           0
#define QSurfaceFormat_SingleBuffer                                  1
#define QSurfaceFormat_DoubleBuffer                                  2
#define QSurfaceFormat_TripleBuffer                                  3

/*
enum QSurfaceFormat::RenderableType
*/
#define QSurfaceFormat_DefaultRenderableType                         0x0
#define QSurfaceFormat_OpenGL                                        0x1
#define QSurfaceFormat_OpenGLES                                      0x2
#define QSurfaceFormat_OpenVG                                        0x4

/*
enum QSurfaceFormat::OpenGLContextProfile
*/
#define QSurfaceFormat_NoProfile                                     0
#define QSurfaceFormat_CoreProfile                                   1
#define QSurfaceFormat_CompatibilityProfile                          2
