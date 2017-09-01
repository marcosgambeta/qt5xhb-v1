$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QOpenGLShader INHERIT QObject

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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QOpenGLShader(QOpenGLShader::ShaderType type, QObject *parent = 0)
*/
$constructor=|new|QOpenGLShader::ShaderType,QObject *=0

$deleteMethod

/*
QOpenGLShader::ShaderType shaderType() const
*/
$method=|QOpenGLShader::ShaderType|shaderType|

/*
bool compileSourceCode(const char *source)
*/
$method=|bool|compileSourceCode,compileSourceCode1|const char *

/*
bool compileSourceCode(const QByteArray& source)
*/
$method=|bool|compileSourceCode,compileSourceCode2|const QByteArray &

/*
bool compileSourceCode(const QString& source)
*/
$method=|bool|compileSourceCode,compileSourceCode3|const QString &

//[1]bool compileSourceCode(const char *source)
//[2]bool compileSourceCode(const QByteArray& source)
//[3]bool compileSourceCode(const QString& source)

HB_FUNC_STATIC( QOPENGLSHADER_COMPILESOURCECODE )
{
  // TODO: implementar
}

/*
bool compileSourceFile(const QString& fileName)
*/
$method=|bool|compileSourceFile|const QString &

/*
QByteArray sourceCode() const
*/
$method=|QByteArray|sourceCode|

/*
bool isCompiled() const
*/
$method=|bool|isCompiled|

/*
QString log() const
*/
$method=|QString|log|

/*
GLuint shaderId() const
*/
$method=|GLuint|shaderId|

/*
static bool hasOpenGLShaders(ShaderType type, QOpenGLContext *context = 0)
*/
$staticMethod=|bool|hasOpenGLShaders|QOpenGLShader::ShaderType,QOpenGLContext *=0

#pragma ENDDUMP
