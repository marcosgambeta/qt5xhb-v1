/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBYTEARRAY

CLASS QOpenGLShader INHERIT QObject

   DATA class_id INIT Class_Id_QOpenGLShader
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QOpenGLShader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QOpenGLShader>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QOpenGLShader>
#endif
#endif

/*
QOpenGLShader(QOpenGLShader::ShaderType type, QObject *parent = 0)
*/
HB_FUNC_STATIC( QOPENGLSHADER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qtxhb_itemGetPtr(2);
  QOpenGLShader * o = new QOpenGLShader (  (QOpenGLShader::ShaderType) par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOpenGLShader *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QOPENGLSHADER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QOpenGLShader * obj = (QOpenGLShader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QOpenGLShader::ShaderType shaderType() const
*/
HB_FUNC_STATIC( QOPENGLSHADER_SHADERTYPE )
{
  QOpenGLShader * obj = (QOpenGLShader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->shaderType (  ) );
  }
}


/*
bool compileSourceCode(const char *source)
*/
HB_FUNC_STATIC( QOPENGLSHADER_COMPILESOURCECODE1 )
{
  QOpenGLShader * obj = (QOpenGLShader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    hb_retl( obj->compileSourceCode (  (const char *) par1 ) );
  }
}


/*
bool compileSourceCode(const QByteArray& source)
*/
HB_FUNC_STATIC( QOPENGLSHADER_COMPILESOURCECODE2 )
{
  QOpenGLShader * obj = (QOpenGLShader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->compileSourceCode ( *par1 ) );
  }
}


/*
bool compileSourceCode(const QString& source)
*/
HB_FUNC_STATIC( QOPENGLSHADER_COMPILESOURCECODE3 )
{
  QOpenGLShader * obj = (QOpenGLShader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->compileSourceCode ( par1 ) );
  }
}


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
HB_FUNC_STATIC( QOPENGLSHADER_COMPILESOURCEFILE )
{
  QOpenGLShader * obj = (QOpenGLShader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->compileSourceFile ( par1 ) );
  }
}


/*
QByteArray sourceCode() const
*/
HB_FUNC_STATIC( QOPENGLSHADER_SOURCECODE )
{
  QOpenGLShader * obj = (QOpenGLShader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->sourceCode (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
bool isCompiled() const
*/
HB_FUNC_STATIC( QOPENGLSHADER_ISCOMPILED )
{
  QOpenGLShader * obj = (QOpenGLShader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isCompiled (  ) );
  }
}


/*
QString log() const
*/
HB_FUNC_STATIC( QOPENGLSHADER_LOG )
{
  QOpenGLShader * obj = (QOpenGLShader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->log (  ).toLatin1().data() );
  }
}


/*
GLuint shaderId() const
*/
HB_FUNC_STATIC( QOPENGLSHADER_SHADERID )
{
  QOpenGLShader * obj = (QOpenGLShader *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->shaderId (  ) );
  }
}


/*
static bool hasOpenGLShaders(ShaderType type, QOpenGLContext *context = 0)
*/
HB_FUNC_STATIC( QOPENGLSHADER_HASOPENGLSHADERS )
{
  int par1 = hb_parni(1);
  QOpenGLContext * par2 = ISNIL(2)? 0 : (QOpenGLContext *) _qtxhb_itemGetPtr(2);
  hb_retl( QOpenGLShader::hasOpenGLShaders (  (QOpenGLShader::ShaderType) par1, par2 ) );
}



#pragma ENDDUMP
