%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

/*
enum QOpenGLBuffer::Access
*/
#define QOpenGLBuffer_ReadOnly                                       0x88B8
#define QOpenGLBuffer_WriteOnly                                      0x88B9
#define QOpenGLBuffer_ReadWrite                                      0x88BA

/*
enum QOpenGLBuffer::Type
*/
#define QOpenGLBuffer_VertexBuffer                                   0x8892
#define QOpenGLBuffer_IndexBuffer                                    0x8893
#define QOpenGLBuffer_PixelPackBuffer                                0x88EB
#define QOpenGLBuffer_PixelUnpackBuffer                              0x88EC

/*
enum QOpenGLBuffer::UsagePattern
*/
#define QOpenGLBuffer_StreamDraw                                     0x88E0
#define QOpenGLBuffer_StreamRead                                     0x88E1
#define QOpenGLBuffer_StreamCopy                                     0x88E2
#define QOpenGLBuffer_StaticDraw                                     0x88E4
#define QOpenGLBuffer_StaticRead                                     0x88E5
#define QOpenGLBuffer_StaticCopy                                     0x88E6
#define QOpenGLBuffer_DynamicDraw                                    0x88E8
#define QOpenGLBuffer_DynamicRead                                    0x88E9
#define QOpenGLBuffer_DynamicCopy                                    0x88EA
