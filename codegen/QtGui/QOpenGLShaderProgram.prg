$header

#include "hbclass.ch"

CLASS QOpenGLShaderProgram INHERIT QObject

   DATA self_destruction INIT .F.

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

/*
QOpenGLShaderProgram(QObject *parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
bool addShader(QOpenGLShader *shader)
*/
$method=|bool|addShader|QOpenGLShader *

/*
void removeShader(QOpenGLShader *shader)
*/
$method=|void|removeShader|QOpenGLShader *

/*
QList<QOpenGLShader *> shaders() const
*/
$method=|QList<QOpenGLShader *>|shaders|

/*
bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const char *source)
*/
$method=|bool|addShaderFromSourceCode,addShaderFromSourceCode1|QOpenGLShader::ShaderType,const char *

/*
bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const QByteArray& source)
*/
$method=|bool|addShaderFromSourceCode,addShaderFromSourceCode2|QOpenGLShader::ShaderType,const QByteArray &

/*
bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const QString& source)
*/
$method=|bool|addShaderFromSourceCode,addShaderFromSourceCode3|QOpenGLShader::ShaderType,const QString &

//[1]bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const char *source)
//[2]bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const QByteArray& source)
//[3]bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const QString& source)

HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE )
{
  // TODO: implementar
}

/*
bool addShaderFromSourceFile(QOpenGLShader::ShaderType type, const QString& fileName)
*/
$method=|bool|addShaderFromSourceFile|QOpenGLShader::ShaderType,const QString &

/*
void removeAllShaders()
*/
$method=|void|removeAllShaders|

/*
virtual bool link()
*/
$method=|bool|link|

/*
bool isLinked() const
*/
$method=|bool|isLinked|

/*
QString log() const
*/
$method=|QString|log|

/*
bool bind()
*/
$method=|bool|bind|

/*
void release()
*/
$method=|void|release|

/*
GLuint programId() const
*/
$method=|GLuint|programId|

/*
int maxGeometryOutputVertices() const
*/
$method=|int|maxGeometryOutputVertices|

/*
void setPatchVertexCount(int count)
*/
$method=|void|setPatchVertexCount|int

/*
int patchVertexCount() const
*/
$method=|int|patchVertexCount|

/*
static bool hasOpenGLShaderPrograms(QOpenGLContext *context = 0)
*/
$staticMethod=|bool|hasOpenGLShaderPrograms|QOpenGLContext *=0

#pragma ENDDUMP
