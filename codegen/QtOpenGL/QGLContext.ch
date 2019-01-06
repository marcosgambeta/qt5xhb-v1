%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtOpenGL

$header

/*
enum QGLContext::BindOption
flags QGLContext::BindOptions
*/
#define QGLContext_NoBindOption                                      0x0000
#define QGLContext_InvertedYBindOption                               0x0001
#define QGLContext_MipmapBindOption                                  0x0002
#define QGLContext_PremultipliedAlphaBindOption                      0x0004
#define QGLContext_LinearFilteringBindOption                         0x0008
#define QGLContext_DefaultBindOption                                 QGLContext_LinearFilteringBindOption|QGLContext_InvertedYBindOption|QGLContext_MipmapBindOption
