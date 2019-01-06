%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtOpenGL

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGLShader ( QGLShader::ShaderType type, QObject * parent = 0 )
$internalConstructor=|new1|QGLShader::ShaderType,QObject *=0

$prototype=QGLShader ( QGLShader::ShaderType type, const QGLContext * context, QObject * parent = 0 )
$internalConstructor=|new2|QGLShader::ShaderType,const QGLContext *,QObject *=0

//[1]QGLShader ( QGLShader::ShaderType type, QObject * parent = 0 )
//[2]QGLShader ( QGLShader::ShaderType type, const QGLContext * context, QObject * parent = 0 )

HB_FUNC_STATIC( QGLSHADER_NEW )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQOBJECT(2) )
  {
    QGLShader_new1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISQGLCONTEXT(2) && ISOPTQOBJECT(3) )
  {
    QGLShader_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool compileSourceCode ( const char * source )
$method=|bool|compileSourceCode,compileSourceCode1|const char *

$prototype=bool compileSourceCode ( const QByteArray & source )
$method=|bool|compileSourceCode,compileSourceCode2|const QByteArray &

$prototype=bool compileSourceCode ( const QString & source )
$method=|bool|compileSourceCode,compileSourceCode3|const QString &

//[1]bool compileSourceCode ( const char * source )
//[2]bool compileSourceCode ( const QByteArray & source )
//[3]bool compileSourceCode ( const QString & source )

HB_FUNC_STATIC( QGLSHADER_COMPILESOURCECODE )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QGLSHADER_COMPILESOURCECODE2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QGLSHADER_COMPILESOURCECODE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=compileSourceCode

$prototype=bool compileSourceFile ( const QString & fileName )
$method=|bool|compileSourceFile|const QString &

$prototype=bool isCompiled () const
$method=|bool|isCompiled|

$prototype=QString log () const
$method=|QString|log|

$prototype=GLuint shaderId () const
$method=|GLuint|shaderId|

$prototype=QGLShader::ShaderType shaderType () const
$method=|QGLShader::ShaderType|shaderType|

$prototype=QByteArray sourceCode () const
$method=|QByteArray|sourceCode|

$prototype=static bool hasOpenGLShaders ( ShaderType type, const QGLContext * context = 0 ) [private]
%% $staticMethod=|bool|hasOpenGLShaders|QGLShader::ShaderType,const QGLContext *=0

#pragma ENDDUMP
