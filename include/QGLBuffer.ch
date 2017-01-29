/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

/*
enum QGLBuffer::Access
*/
#define QGLBuffer_ReadOnly                                           0x88B8
#define QGLBuffer_WriteOnly                                          0x88B9
#define QGLBuffer_ReadWrite                                          0x88BA

/*
enum QGLBuffer::Type
*/
#define QGLBuffer_VertexBuffer                                       0x8892
#define QGLBuffer_IndexBuffer                                        0x8893
#define QGLBuffer_PixelPackBuffer                                    0x88EB
#define QGLBuffer_PixelUnpackBuffer                                  0x88EC

/*
enum QGLBuffer::UsagePattern
*/
#define QGLBuffer_StreamDraw                                         0x88E0
#define QGLBuffer_StreamRead                                         0x88E1
#define QGLBuffer_StreamCopy                                         0x88E2
#define QGLBuffer_StaticDraw                                         0x88E4
#define QGLBuffer_StaticRead                                         0x88E5
#define QGLBuffer_StaticCopy                                         0x88E6
#define QGLBuffer_DynamicDraw                                        0x88E8
#define QGLBuffer_DynamicRead                                        0x88E9
#define QGLBuffer_DynamicCopy                                        0x88EA
