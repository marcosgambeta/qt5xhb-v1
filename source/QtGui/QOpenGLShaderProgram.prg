/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

PROCEDURE destroyObject () CLASS QOpenGLShaderProgram
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QOpenGLShaderProgram>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QOpenGLShaderProgram>
#endif

/*
QOpenGLShaderProgram(QObject *parent = 0)
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_NEW )
{
  QOpenGLShaderProgram * o = new QOpenGLShaderProgram ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_DELETE )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
}

/*
bool addShader(QOpenGLShader *shader)
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADER )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->addShader ( PQOPENGLSHADER(1) ) );
  }
}


/*
void removeShader(QOpenGLShader *shader)
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_REMOVESHADER )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeShader ( PQOPENGLSHADER(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QOpenGLShader *> shaders() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_SHADERS )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
  }
}


/*
bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const char *source)
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE1 )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->addShaderFromSourceCode ( (QOpenGLShader::ShaderType) hb_parni(1), PCONSTCHAR(2) ) );
  }
}


/*
bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const QByteArray& source)
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE2 )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->addShaderFromSourceCode ( (QOpenGLShader::ShaderType) hb_parni(1), *PQBYTEARRAY(2) ) );
  }
}


/*
bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const QString& source)
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE3 )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->addShaderFromSourceCode ( (QOpenGLShader::ShaderType) hb_parni(1), PQSTRING(2) ) );
  }
}


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
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCEFILE )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->addShaderFromSourceFile ( (QOpenGLShader::ShaderType) hb_parni(1), PQSTRING(2) ) );
  }
}


/*
void removeAllShaders()
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_REMOVEALLSHADERS )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeAllShaders ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool link()
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_LINK )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->link () );
  }
}


/*
bool isLinked() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ISLINKED )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isLinked () );
  }
}


/*
QString log() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_LOG )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->log () );
  }
}


/*
bool bind()
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_BIND )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->bind () );
  }
}


/*
void release()
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_RELEASE )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->release ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
GLuint programId() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_PROGRAMID )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RGLUINT( obj->programId () );
  }
}


/*
int maxGeometryOutputVertices() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_MAXGEOMETRYOUTPUTVERTICES )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->maxGeometryOutputVertices () );
  }
}


/*
void setPatchVertexCount(int count)
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_SETPATCHVERTEXCOUNT )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPatchVertexCount ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int patchVertexCount() const
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_PATCHVERTEXCOUNT )
{
  QOpenGLShaderProgram * obj = (QOpenGLShaderProgram *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->patchVertexCount () );
  }
}





































































































































/*
static bool hasOpenGLShaderPrograms(QOpenGLContext *context = 0)
*/
HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_HASOPENGLSHADERPROGRAMS )
{
  QOpenGLContext * par1 = ISNIL(1)? 0 : (QOpenGLContext *) _qt5xhb_itemGetPtr(1);
  RBOOL( QOpenGLShaderProgram::hasOpenGLShaderPrograms ( par1 ) );
}



#pragma ENDDUMP
