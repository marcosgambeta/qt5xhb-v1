%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QOpenGLShaderProgram INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addShader
   METHOD removeShader
   METHOD shaders
   METHOD addShaderFromSourceCode1
   METHOD addShaderFromSourceCode2
   METHOD addShaderFromSourceCode3
   METHOD addShaderFromSourceCode
   METHOD addShaderFromSourceFile
   METHOD removeAllShaders
   METHOD link
   METHOD isLinked
   METHOD log
   METHOD bind
   METHOD release
   METHOD programId
   METHOD maxGeometryOutputVertices
   METHOD setPatchVertexCount
   METHOD patchVertexCount
   METHOD hasOpenGLShaderPrograms

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QOpenGLShaderProgram(QObject *parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=bool addShader(QOpenGLShader *shader)
$method=|bool|addShader|QOpenGLShader *

$prototype=void removeShader(QOpenGLShader *shader)
$method=|void|removeShader|QOpenGLShader *

$prototype=QList<QOpenGLShader *> shaders() const
$method=|QList<QOpenGLShader *>|shaders|

$prototype=bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const char *source)
$method=|bool|addShaderFromSourceCode,addShaderFromSourceCode1|QOpenGLShader::ShaderType,const char *

$prototype=bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const QByteArray& source)
$method=|bool|addShaderFromSourceCode,addShaderFromSourceCode2|QOpenGLShader::ShaderType,const QByteArray &

$prototype=bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const QString& source)
$method=|bool|addShaderFromSourceCode,addShaderFromSourceCode3|QOpenGLShader::ShaderType,const QString &

//[1]bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const char *source)
//[2]bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const QByteArray& source)
//[3]bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const QString& source)

HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE )
{
  // TODO: implementar
}

$prototype=bool addShaderFromSourceFile(QOpenGLShader::ShaderType type, const QString& fileName)
$method=|bool|addShaderFromSourceFile|QOpenGLShader::ShaderType,const QString &

$prototype=void removeAllShaders()
$method=|void|removeAllShaders|

$prototype=virtual bool link()
$virtualMethod=|bool|link|

$prototype=bool isLinked() const
$method=|bool|isLinked|

$prototype=QString log() const
$method=|QString|log|

$prototype=bool bind()
$method=|bool|bind|

$prototype=void release()
$method=|void|release|

$prototype=GLuint programId() const
$method=|GLuint|programId|

$prototype=int maxGeometryOutputVertices() const
$method=|int|maxGeometryOutputVertices|

$prototype=void setPatchVertexCount(int count)
$method=|void|setPatchVertexCount|int

$prototype=int patchVertexCount() const
$method=|int|patchVertexCount|

$prototype=static bool hasOpenGLShaderPrograms(QOpenGLContext *context = 0)
$staticMethod=|bool|hasOpenGLShaderPrograms|QOpenGLContext *=0

#pragma ENDDUMP
