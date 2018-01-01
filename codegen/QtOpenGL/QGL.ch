%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

/*
enum QGL::DrawingMode
*/
#define QGL_Points                                                   0x0000
#define QGL_Lines                                                    0x0001
#define QGL_LineLoop                                                 0x0002
#define QGL_LineStrip                                                0x0003
#define QGL_Triangles                                                0x0004
#define QGL_TriangleStrip                                            0x0005
#define QGL_TriangleFan                                              0x0006
#define QGL_LinesAdjacency                                           0x000A
#define QGL_LineStripAdjacency                                       0x000B
#define QGL_TrianglesAdjacency                                       0x000C
#define QGL_TriangleStripAdjacency                                   0x000D

/*
enum QGL::Eye
*/
#define QGL_NoEye                                                    0
#define QGL_LeftEye                                                  1
#define QGL_RightEye                                                 2

/*
enum QGL::Face
*/
#define QGL_FrontFaces                                               0x0404
#define QGL_BackFaces                                                0x0405
#define QGL_AllFaces                                                 0x0408

/*
enum QGL::FormatOption
flags QGL::FormatOptions
*/
#define QGL_DoubleBuffer                                             0x0001
#define QGL_DepthBuffer                                              0x0002
#define QGL_Rgba                                                     0x0004
#define QGL_AlphaChannel                                             0x0008
#define QGL_AccumBuffer                                              0x0010
#define QGL_StencilBuffer                                            0x0020
#define QGL_StereoBuffers                                            0x0040
#define QGL_DirectRendering                                          0x0080
#define QGL_HasOverlay                                               0x0100
#define QGL_SampleBuffers                                            0x0200
#define QGL_DeprecatedFunctions                                      0x0400
#define QGL_SingleBuffer                                             QGL_DoubleBuffer<<16
#define QGL_NoDepthBuffer                                            QGL_DepthBuffer<<16
#define QGL_ColorIndex                                               QGL_Rgba<<16
#define QGL_NoAlphaChannel                                           QGL_AlphaChannel<<16
#define QGL_NoAccumBuffer                                            QGL_AccumBuffer<<16
#define QGL_NoStencilBuffer                                          QGL_StencilBuffer<<16
#define QGL_NoStereoBuffers                                          QGL_StereoBuffers<<16
#define QGL_IndirectRendering                                        QGL_DirectRendering<<16
#define QGL_NoOverlay                                                QGL_HasOverlay<<16
#define QGL_NoSampleBuffers                                          QGL_SampleBuffers<<16
#define QGL_NoDeprecatedFunctions                                    QGL_DeprecatedFunctions<<16

/*
enum QGL::Mouse3DKeys
*/
#define QGL_Key_Fit                                                  0x01200002
#define QGL_Key_TopView                                              0x01200003
#define QGL_Key_LeftView                                             0x01200004
#define QGL_Key_RightView                                            0x01200005
#define QGL_Key_FrontView                                            0x01200006
#define QGL_Key_BottomView                                           0x01200007
#define QGL_Key_BackView                                             0x01200008
#define QGL_Key_RotateCW90                                           0x01200009
#define QGL_Key_RotateCCW90                                          0x0120000a
#define QGL_Key_ISO1                                                 0x0120000b
#define QGL_Key_ISO2                                                 0x0120000c
#define QGL_Key_Button1                                              0x0120000d
#define QGL_Key_Button2                                              0x0120000e
#define QGL_Key_Button3                                              0x0120000f
#define QGL_Key_Button4                                              0x01200010
#define QGL_Key_Button5                                              0x01200011
#define QGL_Key_Button6                                              0x01200012
#define QGL_Key_Button7                                              0x01200013
#define QGL_Key_Button8                                              0x01200014
#define QGL_Key_Button9                                              0x01200015
#define QGL_Key_Button10                                             0x01200016
#define QGL_Key_Rotations                                            0x0120001b
#define QGL_Key_Translations                                         0x0120001c
#define QGL_Key_DominantAxis                                         0x0120001d
#define QGL_Key_IncreaseSensitivity                                  0x0120001e
#define QGL_Key_DecreaseSensitivity                                  0x0120001f

/*
enum QGL::Smoothing
*/
#define QGL_NoSmoothing                                              0
#define QGL_Smooth                                                   1
#define QGL_Faceted                                                  2

/*
enum QGL::StandardEffect
*/
#define QGL_FlatColor                                                0
#define QGL_FlatPerVertexColor                                       1
#define QGL_FlatReplaceTexture2D                                     2
#define QGL_FlatDecalTexture2D                                       3
#define QGL_LitMaterial                                              4
#define QGL_LitDecalTexture2D                                        5
#define QGL_LitModulateTexture2D                                     6

/*
enum QGL::TextureWrap
*/
#define QGL_Repeat                                                   0x2901
#define QGL_Clamp                                                    ?
#define QGL_ClampToBorder                                            ?
#define QGL_ClampToEdge                                              0x812F
#define QGL_MirroredRepeat                                           ?

/*
enum QGL::VertexAttribute
*/
#define QGL_Position                                                 0
#define QGL_Normal                                                   1
#define QGL_Color                                                    2
#define QGL_TextureCoord0                                            3
#define QGL_TextureCoord1                                            4
#define QGL_TextureCoord2                                            5
#define QGL_CustomVertex0                                            6
#define QGL_CustomVertex1                                            7
#define QGL_UserVertex                                               8
