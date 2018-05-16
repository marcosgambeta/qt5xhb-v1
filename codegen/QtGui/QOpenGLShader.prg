%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

$beginClassFrom=QObject

   METHOD new
   METHOD delete
   METHOD shaderType
   METHOD compileSourceCode1
   METHOD compileSourceCode2
   METHOD compileSourceCode3
   METHOD compileSourceCode
   METHOD compileSourceFile
   METHOD sourceCode
   METHOD isCompiled
   METHOD log
   METHOD shaderId
   METHOD hasOpenGLShaders

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QOpenGLShader(QOpenGLShader::ShaderType type, QObject *parent = 0)
$constructor=|new|QOpenGLShader::ShaderType,QObject *=0

$deleteMethod

$prototype=QOpenGLShader::ShaderType shaderType() const
$method=|QOpenGLShader::ShaderType|shaderType|

$prototype=bool compileSourceCode(const char *source)
$method=|bool|compileSourceCode,compileSourceCode1|const char *

$prototype=bool compileSourceCode(const QByteArray& source)
$method=|bool|compileSourceCode,compileSourceCode2|const QByteArray &

$prototype=bool compileSourceCode(const QString& source)
$method=|bool|compileSourceCode,compileSourceCode3|const QString &

//[1]bool compileSourceCode(const char *source)
//[2]bool compileSourceCode(const QByteArray& source)
//[3]bool compileSourceCode(const QString& source)

HB_FUNC_STATIC( QOPENGLSHADER_COMPILESOURCECODE )
{
  // TODO: implementar
}

$prototype=bool compileSourceFile(const QString& fileName)
$method=|bool|compileSourceFile|const QString &

$prototype=QByteArray sourceCode() const
$method=|QByteArray|sourceCode|

$prototype=bool isCompiled() const
$method=|bool|isCompiled|

$prototype=QString log() const
$method=|QString|log|

$prototype=GLuint shaderId() const
$method=|GLuint|shaderId|

$prototype=static bool hasOpenGLShaders(ShaderType type, QOpenGLContext *context = 0)
$staticMethod=|bool|hasOpenGLShaders|QOpenGLShader::ShaderType,QOpenGLContext *=0

#pragma ENDDUMP
