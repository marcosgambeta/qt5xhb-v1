$header

#include "hbclass.ch"

CLASS QGLFunctions

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD glActiveTexture
   METHOD glAttachShader
   METHOD glBindAttribLocation
   METHOD glBindBuffer
   METHOD glBindFramebuffer
   METHOD glBindRenderbuffer
   METHOD glBlendColor
   METHOD glBlendEquation
   METHOD glBlendEquationSeparate
   METHOD glBlendFuncSeparate
   METHOD glCheckFramebufferStatus
   METHOD glClearDepthf
   METHOD glCompileShader
   METHOD glCreateProgram
   METHOD glCreateShader
   METHOD glDeleteBuffers
   METHOD glDeleteFramebuffers
   METHOD glDeleteProgram
   METHOD glDeleteRenderbuffers
   METHOD glDeleteShader
   METHOD glDepthRangef
   METHOD glDetachShader
   METHOD glDisableVertexAttribArray
   METHOD glEnableVertexAttribArray
   METHOD glFramebufferRenderbuffer
   METHOD glFramebufferTexture2D
   METHOD glGenBuffers
   METHOD glGenFramebuffers
   METHOD glGenRenderbuffers
   METHOD glGenerateMipmap
   METHOD glGetActiveAttrib
   METHOD glGetActiveUniform
   METHOD glGetAttachedShaders
   METHOD glGetAttribLocation
   METHOD glGetBufferParameteriv
   METHOD glGetFramebufferAttachmentParameteriv
   METHOD glGetProgramInfoLog
   METHOD glGetProgramiv
   METHOD glGetRenderbufferParameteriv
   METHOD glGetShaderInfoLog
   METHOD glGetShaderPrecisionFormat
   METHOD glGetShaderSource
   METHOD glGetShaderiv
   METHOD glGetUniformLocation
   METHOD glGetUniformfv
   METHOD glGetUniformiv
   METHOD glGetVertexAttribfv
   METHOD glGetVertexAttribiv
   METHOD glIsBuffer
   METHOD glIsFramebuffer
   METHOD glIsProgram
   METHOD glIsRenderbuffer
   METHOD glIsShader
   METHOD glLinkProgram
   METHOD glReleaseShaderCompiler
   METHOD glRenderbufferStorage
   METHOD glSampleCoverage
   METHOD glStencilFuncSeparate
   METHOD glStencilMaskSeparate
   METHOD glStencilOpSeparate
   METHOD glUniform1f
   METHOD glUniform1i
   METHOD glUniform2f
   METHOD glUniform2i
   METHOD glUniform3f
   METHOD glUniform3i
   METHOD glUniform4f
   METHOD glUniform4i
   METHOD glUseProgram
   METHOD glValidateProgram
   METHOD glVertexAttrib1f
   METHOD glVertexAttrib2f
   METHOD glVertexAttrib3f
   METHOD glVertexAttrib4f
   METHOD hasOpenGLFeature
   METHOD initializeGLFunctions
   METHOD openGLFeatures

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGLFunctions()
*/
$internalConstructor=|new1|

/*
QGLFunctions(const QGLContext * context)
*/
$internalConstructor=|new2|const QGLContext *

//[1]QGLFunctions()
//[2]QGLFunctions(const QGLContext * context)

HB_FUNC_STATIC( QGLFUNCTIONS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGLFunctions_new1();
  }
  else if( ISNUMPAR(1) && ISQGLCONTEXT(1) )
  {
    QGLFunctions_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void glActiveTexture(GLenum texture)
*/
$method=|void|glActiveTexture|GLenum

/*
void glAttachShader(GLuint program, GLuint shader)
*/
$method=|void|glAttachShader|GLuint,GLuint

/*
void glBindAttribLocation(GLuint program, GLuint index, const char * name)
*/
$method=|void|glBindAttribLocation|GLuint,GLuint,const char *

/*
void glBindBuffer(GLenum target, GLuint buffer)
*/
$method=|void|glBindBuffer|GLenum,GLuint

/*
void glBindFramebuffer(GLenum target, GLuint framebuffer)
*/
$method=|void|glBindFramebuffer|GLenum,GLuint

/*
void glBindRenderbuffer(GLenum target, GLuint renderbuffer)
*/
$method=|void|glBindRenderbuffer|GLenum,GLuint

/*
void glBlendColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)
*/
$method=|void|glBlendColor|GLclampf,GLclampf,GLclampf,GLclampf

/*
void glBlendEquation(GLenum mode)
*/
$method=|void|glBlendEquation|GLenum

/*
void glBlendEquationSeparate(GLenum modeRGB, GLenum modeAlpha)
*/
$method=|void|glBlendEquationSeparate|GLenum,GLenum

/*
void glBlendFuncSeparate(GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha)
*/
$method=|void|glBlendFuncSeparate|GLenum,GLenum,GLenum,GLenum

/*
GLenum glCheckFramebufferStatus(GLenum target)
*/
$method=|GLenum|glCheckFramebufferStatus|GLenum

/*
void glClearDepthf(GLclampf depth)
*/
$method=|void|glClearDepthf|GLclampf

/*
void glCompileShader(GLuint shader)
*/
$method=|void|glCompileShader|GLuint

/*
GLuint glCreateProgram()
*/
$method=|GLuint|glCreateProgram|

/*
GLuint glCreateShader(GLenum type)
*/
$method=|GLuint|glCreateShader|GLenum

/*
void glDeleteBuffers(GLsizei n, const GLuint * buffers)
*/
%% TODO: corrigir segundo parametro
$method=|void|glDeleteBuffers|GLsizei,const GLuint *

/*
void glDeleteFramebuffers(GLsizei n, const GLuint * framebuffers)
*/
%% TODO: corrigir segundo parametro
$method=|void|glDeleteFramebuffers|GLsizei,const GLuint *

/*
void glDeleteProgram(GLuint program)
*/
$method=|void|glDeleteProgram|GLuint

/*
void glDeleteRenderbuffers(GLsizei n, const GLuint * renderbuffers)
*/
%% TODO: corrigir segundo parametro
$method=|void|glDeleteRenderbuffers|GLsizei,const GLuint *

/*
void glDeleteShader(GLuint shader)
*/
$method=|void|glDeleteShader|GLuint

/*
void glDepthRangef(GLclampf zNear, GLclampf zFar)
*/
$method=|void|glDepthRangef|GLclampf,GLclampf

/*
void glDetachShader(GLuint program, GLuint shader)
*/
$method=|void|glDetachShader|GLuint,GLuint

/*
void glDisableVertexAttribArray(GLuint index)
*/
$method=|void|glDisableVertexAttribArray|GLuint

/*
void glEnableVertexAttribArray(GLuint index)
*/
$method=|void|glEnableVertexAttribArray|GLuint

/*
void glFramebufferRenderbuffer(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)
*/
$method=|void|glFramebufferRenderbuffer|GLenum,GLenum,GLenum,GLuint

/*
void glFramebufferTexture2D(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)
*/
$method=|void|glFramebufferTexture2D|GLenum,GLenum,GLenum,GLuint,GLint

/*
void glGenBuffers(GLsizei n, GLuint * buffers)
*/
%% TODO: corrigir segundo parametro
$method=|void|glGenBuffers|GLsizei,GLuint *

/*
void glGenFramebuffers(GLsizei n, GLuint * framebuffers)
*/
%% TODO: corrigir segundo parametro
$method=|void|glGenFramebuffers|GLsizei,GLuint *

/*
void glGenRenderbuffers(GLsizei n, GLuint * renderbuffers)
*/
%% TODO: corrigir segundo parametro
$method=|void|glGenRenderbuffers|GLsizei,GLuint *

/*
void glGenerateMipmap(GLenum target)
*/
$method=|void|glGenerateMipmap|GLenum

/*
void glGetActiveAttrib(GLuint program, GLuint index, GLsizei bufsize, GLsizei * length, GLint * size, GLenum * type, char * name)
*/
%% TODO: corrigir codigo
$method=|void|glGetActiveAttrib|GLuint,GLuint,GLsizei,GLsizei *,GLint *,GLenum *,char *

/*
void glGetActiveUniform(GLuint program, GLuint index, GLsizei bufsize, GLsizei * length, GLint * size, GLenum * type, char * name)
*/
%% TODO: corrigir codigo
$method=|void|glGetActiveUniform|GLuint,GLuint,GLsizei,GLsizei *,GLint *,GLenum *,char *

/*
void glGetAttachedShaders(GLuint program, GLsizei maxcount, GLsizei * count, GLuint * shaders)
*/
%% TODO: corrigir codigo
$method=|void|glGetAttachedShaders|GLuint,GLsizei,GLsizei *,GLuint *

/*
int glGetAttribLocation(GLuint program, const char * name)
*/
$method=|int|glGetAttribLocation|GLuint,const char *

/*
void glGetBufferParameteriv(GLenum target, GLenum pname, GLint * params)
*/
%% TODO: corrigir codigo
$method=|void|glGetBufferParameteriv|GLenum,GLenum,GLint *

/*
void glGetFramebufferAttachmentParameteriv(GLenum target, GLenum attachment, GLenum pname, GLint * params)
*/
%% TODO: corrigir codigo
$method=|void|glGetFramebufferAttachmentParameteriv|GLenum,GLenum,GLenum,GLint *

/*
void glGetProgramInfoLog(GLuint program, GLsizei bufsize, GLsizei * length, char * infolog)
*/
%% TODO: corrigir codigo
$method=|void|glGetProgramInfoLog|GLuint,GLsizei,GLsizei *,char *

/*
void glGetProgramiv(GLuint program, GLenum pname, GLint * params)
*/
%% TODO: corrigir codigo
$method=|void|glGetProgramiv|GLuint,GLenum,GLint *

/*
void glGetRenderbufferParameteriv(GLenum target, GLenum pname, GLint * params)
*/
%% TODO: corrigir codigo
$method=|void|glGetRenderbufferParameteriv|GLenum,GLenum,GLint *

/*
void glGetShaderInfoLog(GLuint shader, GLsizei bufsize, GLsizei * length, char * infolog)
*/
%% TODO: corrigir codigo
$method=|void|glGetShaderInfoLog|GLuint,GLsizei,GLsizei *,char *

/*
void glGetShaderPrecisionFormat(GLenum shadertype, GLenum precisiontype, GLint * range, GLint * precision)
*/
%% TODO: corrigir codigo
$method=|void|glGetShaderPrecisionFormat|GLenum,GLenum,GLint *,GLint *

/*
void glGetShaderSource(GLuint shader, GLsizei bufsize, GLsizei * length, char * source)
*/
%% TODO: corrigir codigo
$method=|void|glGetShaderSource|GLuint,GLsizei,GLsizei *,char *

/*
void glGetShaderiv(GLuint shader, GLenum pname, GLint * params)
*/
%% TODO: corrigir codigo
$method=|void|glGetShaderiv|GLuint,GLenum,GLint *

/*
int glGetUniformLocation(GLuint program, const char * name)
*/
$method=|int|glGetUniformLocation|GLuint,const char *

/*
void glGetUniformfv(GLuint program, GLint location, GLfloat * params)
*/
%% TODO: corrigir codigo
$method=|void|glGetUniformfv|GLuint,GLint,GLfloat *

/*
void glGetUniformiv(GLuint program, GLint location, GLint * params)
*/
%% TODO: corrigir codigo
$method=|void|glGetUniformiv|GLuint,GLint,GLint *

/*
void glGetVertexAttribfv(GLuint index, GLenum pname, GLfloat * params)
*/
%% TODO: corrigir codigo
$method=|void|glGetVertexAttribfv|GLuint,GLenum,GLfloat *

/*
void glGetVertexAttribiv(GLuint index, GLenum pname, GLint * params)
*/
%% TODO: corrigir codigo
$method=|void|glGetVertexAttribiv|GLuint,GLenum,GLint *

/*
GLboolean glIsBuffer(GLuint buffer)
*/
$method=|GLboolean|glIsBuffer|GLuint

/*
GLboolean glIsFramebuffer(GLuint framebuffer)
*/
$method=|GLboolean|glIsFramebuffer|GLuint

/*
GLboolean glIsProgram(GLuint program)
*/
$method=|GLboolean|glIsProgram|GLuint

/*
GLboolean glIsRenderbuffer(GLuint renderbuffer)
*/
$method=|GLboolean|glIsRenderbuffer|GLuint

/*
GLboolean glIsShader(GLuint shader)
*/
$method=|GLboolean|glIsShader|GLuint

/*
void glLinkProgram(GLuint program)
*/
$method=|void|glLinkProgram|GLuint

/*
void glReleaseShaderCompiler()
*/
$method=|void|glReleaseShaderCompiler|

/*
void glRenderbufferStorage(GLenum target, GLenum internalformat, GLsizei width, GLsizei height)
*/
$method=|void|glRenderbufferStorage|GLenum,GLenum,GLsizei,GLsizei

/*
void glSampleCoverage(GLclampf value, GLboolean invert)
*/
$method=|void|glSampleCoverage|GLclampf,GLboolean

/*
void glStencilFuncSeparate(GLenum face, GLenum func, GLint ref, GLuint mask)
*/
$method=|void|glStencilFuncSeparate|GLenum,GLenum,GLint,GLuint

/*
void glStencilMaskSeparate(GLenum face, GLuint mask)
*/
$method=|void|glStencilMaskSeparate|GLenum,GLuint

/*
void glStencilOpSeparate(GLenum face, GLenum fail, GLenum zfail, GLenum zpass)
*/
$method=|void|glStencilOpSeparate|GLenum,GLenum,GLenum,GLenum

/*
void glUniform1f(GLint location, GLfloat x)
*/
$method=|void|glUniform1f|GLint,GLfloat

/*
void glUniform1i(GLint location, GLint x)
*/
$method=|void|glUniform1i|GLint,GLint

/*
void glUniform2f(GLint location, GLfloat x, GLfloat y)
*/
$method=|void|glUniform2f|GLint,GLfloat,GLfloat

/*
void glUniform2i(GLint location, GLint x, GLint y)
*/
$method=|void|glUniform2i|GLint,GLint,GLint

/*
void glUniform3f(GLint location, GLfloat x, GLfloat y, GLfloat z)
*/
$method=|void|glUniform3f|GLint,GLfloat,GLfloat,GLfloat

/*
void glUniform3i(GLint location, GLint x, GLint y, GLint z)
*/
$method=|void|glUniform3i|GLint,GLint,GLint,GLint

/*
void glUniform4f(GLint location, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
*/
$method=|void|glUniform4f|GLint,GLfloat,GLfloat,GLfloat,GLfloat

/*
void glUniform4i(GLint location, GLint x, GLint y, GLint z, GLint w)
*/
$method=|void|glUniform4i|GLint,GLint,GLint,GLint,GLint

/*
void glUseProgram(GLuint program)
*/
$method=|void|glUseProgram|GLuint

/*
void glValidateProgram(GLuint program)
*/
$method=|void|glValidateProgram|GLuint

/*
void glVertexAttrib1f(GLuint indx, GLfloat x)
*/
$method=|void|glVertexAttrib1f|GLuint,GLfloat

/*
void glVertexAttrib2f(GLuint indx, GLfloat x, GLfloat y)
*/
$method=|void|glVertexAttrib2f|GLuint,GLfloat,GLfloat

/*
void glVertexAttrib3f(GLuint indx, GLfloat x, GLfloat y, GLfloat z)
*/
$method=|void|glVertexAttrib3f|GLuint,GLfloat,GLfloat,GLfloat

/*
void glVertexAttrib4f(GLuint indx, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
*/
$method=|void|glVertexAttrib4f|GLuint,GLfloat,GLfloat,GLfloat,GLfloat

/*
bool hasOpenGLFeature(QGLFunctions::OpenGLFeature feature) const
*/
$method=|bool|hasOpenGLFeature|QGLFunctions::OpenGLFeature

/*
void initializeGLFunctions(const QGLContext * context = 0)
*/
$method=|void|initializeGLFunctions|const QGLContext *=0

/*
QGLFunctions::OpenGLFeatures openGLFeatures() const
*/
$method=|QGLFunctions::OpenGLFeatures|openGLFeatures|

$extraMethods

#pragma ENDDUMP
