/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPAINTDEVICE
REQUEST QGLFORMAT
REQUEST QCOLOR

CLASS QGLContext

   DATA pointer
   DATA class_id INIT Class_Id_QGLContext
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD bindTexture1
   METHOD bindTexture2
   METHOD bindTexture3
   METHOD bindTexture4
   METHOD bindTexture5
   METHOD bindTexture
   METHOD create
   METHOD deleteTexture
   METHOD device
   METHOD doneCurrent
   METHOD drawTexture1
   METHOD drawTexture2
   METHOD drawTexture
   METHOD format
   METHOD isSharing
   METHOD isValid
   METHOD makeCurrent
   METHOD overlayTransparentColor
   METHOD requestedFormat
   METHOD reset
   METHOD setFormat
   METHOD swapBuffers
   METHOD areSharing
   METHOD currentContext
   METHOD setTextureCacheLimit
   METHOD textureCacheLimit
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGLContext
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGLContext>
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
#include <QGLContext>
#endif
#endif

/*
QGLContext ( const QGLFormat & format )
*/
HB_FUNC_STATIC( QGLCONTEXT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGLFormat * par1 = (QGLFormat *) _qtxhb_itemGetPtr(1);
  QGLContext * o = new QGLContext ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGLContext *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QGLCONTEXT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGLContext * obj = (QGLContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
GLuint bindTexture ( const QImage & image, GLenum target, GLint format, BindOptions options )
*/
HB_FUNC_STATIC( QGLCONTEXT_BINDTEXTURE1 )
{
  QGLContext * obj = (QGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImage  * par1 = (QImage  *) _qtxhb_itemGetPtr(1);
    int par4 = hb_parni(4);
    hb_retni( obj->bindTexture ( *par1, (GLenum) hb_parni(2),  (QGLContext::BindOptions) par4 ) );
  }
}

/*
GLuint bindTexture ( const QString & fileName )
*/
HB_FUNC_STATIC( QGLCONTEXT_BINDTEXTURE2 )
{
  QGLContext * obj = (QGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retni( obj->bindTexture ( par1 ) );
  }
}

/*
GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
*/
HB_FUNC_STATIC( QGLCONTEXT_BINDTEXTURE3 )
{
  QGLContext * obj = (QGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImage  * par1 = (QImage  *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->bindTexture ( *par1, (GLenum) ISNIL(2)? GL_TEXTURE_2D : hb_parni(2), (GLint) ISNIL(3)? GL_RGBA : hb_parni(3) ) );
  }
}

/*
GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
*/
HB_FUNC_STATIC( QGLCONTEXT_BINDTEXTURE4 )
{
  QGLContext * obj = (QGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap  * par1 = (QPixmap  *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->bindTexture ( *par1, (GLenum) ISNIL(2)? GL_TEXTURE_2D : hb_parni(2), (GLint) ISNIL(3)? GL_RGBA : hb_parni(3) ) );
  }
}

/*
GLuint bindTexture ( const QPixmap & pixmap, GLenum target, GLint format, BindOptions options )
*/
HB_FUNC_STATIC( QGLCONTEXT_BINDTEXTURE5 )
{
  QGLContext * obj = (QGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap  * par1 = (QPixmap  *) _qtxhb_itemGetPtr(1);
    int par4 = hb_parni(4);
    hb_retni( obj->bindTexture ( *par1, (GLenum) hb_parni(2), (GLint) hb_parni(3),  (QGLContext::BindOptions) par4 ) );
  }
}


//[1]GLuint bindTexture ( const QImage & image, GLenum target, GLint format, BindOptions options )
//[2]GLuint bindTexture ( const QString & fileName )
//[3]GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
//[4]GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
//[5]GLuint bindTexture ( const QPixmap & pixmap, GLenum target, GLint format, BindOptions options )

HB_FUNC_STATIC( QGLCONTEXT_BINDTEXTURE )
{
  if( ISNUMPAR(4) && ISQIMAGE(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGLCONTEXT_BINDTEXTURE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QGLCONTEXT_BINDTEXTURE2 );
  }
  else if( ISBETWEEN(1,3) && ISQIMAGE(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGLCONTEXT_BINDTEXTURE3 );
  }
  else if( ISBETWEEN(1,3) && ISQPIXMAP(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGLCONTEXT_BINDTEXTURE4 );
  }
  else if( ISNUMPAR(4) && ISQPIXMAP(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGLCONTEXT_BINDTEXTURE5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual bool create ( const QGLContext * shareContext = 0 )
*/
HB_FUNC_STATIC( QGLCONTEXT_CREATE )
{
  QGLContext * obj = (QGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGLContext * par1 = ISNIL(1)? 0 : (QGLContext *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->create ( par1 ) );
  }
}


/*
void deleteTexture ( GLuint id )
*/
HB_FUNC_STATIC( QGLCONTEXT_DELETETEXTURE )
{
  QGLContext * obj = (QGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->deleteTexture ( (GLuint) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPaintDevice * device () const
*/
HB_FUNC_STATIC( QGLCONTEXT_DEVICE )
{
  QGLContext * obj = (QGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPaintDevice * ptr = obj->device (  );
    _qt4xhb_createReturnClass ( ptr, "QPAINTDEVICE" );
  }
}


/*
virtual void doneCurrent ()
*/
HB_FUNC_STATIC( QGLCONTEXT_DONECURRENT )
{
  QGLContext * obj = (QGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->doneCurrent (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLCONTEXT_DRAWTEXTURE1 )
{
  QGLContext * obj = (QGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF  * par1 = (QRectF  *) _qtxhb_itemGetPtr(1);
    obj->drawTexture ( *par1, (GLuint) hb_parni(2), (GLenum) ISNIL(3)? GL_TEXTURE_2D : hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLCONTEXT_DRAWTEXTURE2 )
{
  QGLContext * obj = (QGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF  * par1 = (QPointF  *) _qtxhb_itemGetPtr(1);
    obj->drawTexture ( *par1, (GLuint) hb_parni(2), (GLenum) ISNIL(3)? GL_TEXTURE_2D : hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
//[2]void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )

HB_FUNC_STATIC( QGLCONTEXT_DRAWTEXTURE )
{
  if( ISBETWEEN(2,3) && ISQRECTF(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGLCONTEXT_DRAWTEXTURE1 );
  }
  else if( ISBETWEEN(2,3) && ISQPOINTF(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGLCONTEXT_DRAWTEXTURE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QGLFormat format () const
*/
HB_FUNC_STATIC( QGLCONTEXT_FORMAT )
{
  QGLContext * obj = (QGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGLFormat * ptr = new QGLFormat( obj->format (  ) );
    _qt4xhb_createReturnClass ( ptr, "QGLFORMAT" );
  }
}



/*
bool isSharing () const
*/
HB_FUNC_STATIC( QGLCONTEXT_ISSHARING )
{
  QGLContext * obj = (QGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSharing (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QGLCONTEXT_ISVALID )
{
  QGLContext * obj = (QGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
virtual void makeCurrent ()
*/
HB_FUNC_STATIC( QGLCONTEXT_MAKECURRENT )
{
  QGLContext * obj = (QGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->makeCurrent (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QColor overlayTransparentColor () const
*/
HB_FUNC_STATIC( QGLCONTEXT_OVERLAYTRANSPARENTCOLOR )
{
  QGLContext * obj = (QGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->overlayTransparentColor (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
QGLFormat requestedFormat () const
*/
HB_FUNC_STATIC( QGLCONTEXT_REQUESTEDFORMAT )
{
  QGLContext * obj = (QGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGLFormat * ptr = new QGLFormat( obj->requestedFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QGLFORMAT" );
  }
}


/*
void reset ()
*/
HB_FUNC_STATIC( QGLCONTEXT_RESET )
{
  QGLContext * obj = (QGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFormat ( const QGLFormat & format )
*/
HB_FUNC_STATIC( QGLCONTEXT_SETFORMAT )
{
  QGLContext * obj = (QGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGLFormat  * par1 = (QGLFormat  *) _qtxhb_itemGetPtr(1);
    obj->setFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void swapBuffers () const
*/
HB_FUNC_STATIC( QGLCONTEXT_SWAPBUFFERS )
{
  QGLContext * obj = (QGLContext *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->swapBuffers (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool areSharing ( const QGLContext * context1, const QGLContext * context2 )
*/
HB_FUNC_STATIC( QGLCONTEXT_ARESHARING )
{
  QGLContext * par1 = (QGLContext *) _qtxhb_itemGetPtr(1);
  QGLContext * par2 = (QGLContext *) _qtxhb_itemGetPtr(2);
  hb_retl( QGLContext::areSharing ( par1, par2 ) );
}


/*
static const QGLContext * currentContext ()
*/
HB_FUNC_STATIC( QGLCONTEXT_CURRENTCONTEXT )
{
  const QGLContext * ptr = QGLContext::currentContext (  );
  _qt4xhb_createReturnClass ( ptr, "QGLCONTEXT" );
}


/*
static void setTextureCacheLimit ( int size )
*/
HB_FUNC_STATIC( QGLCONTEXT_SETTEXTURECACHELIMIT )
{
  QGLContext::setTextureCacheLimit ( (int) hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static int textureCacheLimit ()
*/
HB_FUNC_STATIC( QGLCONTEXT_TEXTURECACHELIMIT )
{
  hb_retni( QGLContext::textureCacheLimit (  ) );
}



HB_FUNC_STATIC( QGLCONTEXT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QGLCONTEXT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGLCONTEXT_NEWFROM );
}

HB_FUNC_STATIC( QGLCONTEXT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGLCONTEXT_NEWFROM );
}

HB_FUNC_STATIC( QGLCONTEXT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGLCONTEXT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
