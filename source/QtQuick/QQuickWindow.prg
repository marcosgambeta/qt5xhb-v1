/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QQUICKITEM
REQUEST QCOLOR
REQUEST QSGTEXTURE
REQUEST QIMAGE
REQUEST QQMLINCUBATIONCONTROLLER
REQUEST QOPENGLCONTEXT
REQUEST QOPENGLFRAMEBUFFEROBJECT
REQUEST QSIZE
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QQuickWindow INHERIT QWindow

   //DATA class_id INIT Class_Id_QQuickWindow
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD activeFocusItem
   METHOD clearBeforeRendering
   METHOD color
   METHOD contentItem
   METHOD createTextureFromId
   METHOD createTextureFromImage
   METHOD grabWindow
   METHOD incubationController
   METHOD isPersistentOpenGLContext
   METHOD isPersistentSceneGraph
   METHOD mouseGrabberItem
   METHOD openglContext
   METHOD renderTarget
   METHOD renderTargetId
   METHOD renderTargetSize
   METHOD sendEvent
   METHOD setClearBeforeRendering
   METHOD setColor
   METHOD setPersistentOpenGLContext
   METHOD setPersistentSceneGraph
   METHOD setRenderTarget1
   METHOD setRenderTarget2
   METHOD setRenderTarget
   METHOD accessibleRoot
   METHOD releaseResources
   METHOD update

   METHOD onAfterRendering
   METHOD onBeforeRendering
   METHOD onBeforeSynchronizing
   METHOD onColorChanged
   METHOD onFrameSwapped
   METHOD onSceneGraphInitialized
   METHOD onSceneGraphInvalidated

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQuickWindow
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQuickWindow>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQuickWindow>
#endif

/*
QQuickWindow(QWindow * parent = 0)
*/
HB_FUNC_STATIC( QQUICKWINDOW_NEW )
{
  QWindow * par1 = ISNIL(1)? 0 : (QWindow *) _qt5xhb_itemGetPtr(1);
  QQuickWindow * o = new QQuickWindow ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QQUICKWINDOW_DELETE )
{
  QQuickWindow * obj = (QQuickWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QQuickItem * activeFocusItem() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_ACTIVEFOCUSITEM )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQuickItem * ptr = obj->activeFocusItem (  );
    _qt5xhb_createReturnClass ( ptr, "QQUICKITEM" );
  }
}


/*
bool clearBeforeRendering() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_CLEARBEFORERENDERING )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->clearBeforeRendering (  ) );
  }
}


/*
QColor color() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_COLOR )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->color (  ) );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
QQuickItem * contentItem() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_CONTENTITEM )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQuickItem * ptr = obj->contentItem (  );
    _qt5xhb_createReturnClass ( ptr, "QQUICKITEM" );
  }
}


/*
QSGTexture * createTextureFromId(uint id, const QSize & size, CreateTextureOptions options = CreateTextureOption( 0 )) const
*/
HB_FUNC_STATIC( QQUICKWINDOW_CREATETEXTUREFROMID )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par2 = (QSize *) _qt5xhb_itemGetPtr(2);
    int par3 = hb_parni(3);
    QSGTexture * ptr = obj->createTextureFromId ( (uint) hb_parni(1), *par2,  (QQuickWindow::CreateTextureOptions) par3 );
    _qt5xhb_createReturnClass ( ptr, "QSGTEXTURE" );
  }
}


/*
QSGTexture * createTextureFromImage(const QImage & image) const
*/
HB_FUNC_STATIC( QQUICKWINDOW_CREATETEXTUREFROMIMAGE )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImage * par1 = (QImage *) _qt5xhb_itemGetPtr(1);
    QSGTexture * ptr = obj->createTextureFromImage ( *par1 );
    _qt5xhb_createReturnClass ( ptr, "QSGTEXTURE" );
  }
}


/*
QImage grabWindow()
*/
HB_FUNC_STATIC( QQUICKWINDOW_GRABWINDOW )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImage * ptr = new QImage( obj->grabWindow (  ) );
    _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}


/*
QQmlIncubationController * incubationController() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_INCUBATIONCONTROLLER )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlIncubationController * ptr = obj->incubationController (  );
    _qt5xhb_createReturnClass ( ptr, "QQMLINCUBATIONCONTROLLER" );
  }
}


/*
bool isPersistentOpenGLContext() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_ISPERSISTENTOPENGLCONTEXT )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isPersistentOpenGLContext (  ) );
  }
}


/*
bool isPersistentSceneGraph() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_ISPERSISTENTSCENEGRAPH )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isPersistentSceneGraph (  ) );
  }
}


/*
QQuickItem * mouseGrabberItem() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_MOUSEGRABBERITEM )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQuickItem * ptr = obj->mouseGrabberItem (  );
    _qt5xhb_createReturnClass ( ptr, "QQUICKITEM" );
  }
}


/*
QOpenGLContext * openglContext() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_OPENGLCONTEXT )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLContext * ptr = obj->openglContext (  );
    _qt5xhb_createReturnClass ( ptr, "QOPENGLCONTEXT" );
  }
}


/*
QOpenGLFramebufferObject * renderTarget() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_RENDERTARGET )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLFramebufferObject * ptr = obj->renderTarget (  );
    _qt5xhb_createReturnClass ( ptr, "QOPENGLFRAMEBUFFEROBJECT" );
  }
}


/*
uint renderTargetId() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_RENDERTARGETID )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->renderTargetId (  ) );
  }
}


/*
QSize renderTargetSize() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_RENDERTARGETSIZE )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->renderTargetSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}



/*
bool sendEvent(QQuickItem * item, QEvent * e)
*/
HB_FUNC_STATIC( QQUICKWINDOW_SENDEVENT )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQuickItem * par1 = (QQuickItem *) _qt5xhb_itemGetPtr(1);
    QEvent * par2 = (QEvent *) _qt5xhb_itemGetPtr(2);
    hb_retl( obj->sendEvent ( par1, par2 ) );
  }
}


/*
void setClearBeforeRendering(bool enabled)
*/
HB_FUNC_STATIC( QQUICKWINDOW_SETCLEARBEFORERENDERING )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setClearBeforeRendering ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColor(const QColor & color)
*/
HB_FUNC_STATIC( QQUICKWINDOW_SETCOLOR )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->setColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPersistentOpenGLContext(bool persistent)
*/
HB_FUNC_STATIC( QQUICKWINDOW_SETPERSISTENTOPENGLCONTEXT )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPersistentOpenGLContext ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPersistentSceneGraph(bool persistent)
*/
HB_FUNC_STATIC( QQUICKWINDOW_SETPERSISTENTSCENEGRAPH )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPersistentSceneGraph ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRenderTarget(QOpenGLFramebufferObject * fbo)
*/
HB_FUNC_STATIC( QQUICKWINDOW_SETRENDERTARGET1 )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLFramebufferObject * par1 = (QOpenGLFramebufferObject *) _qt5xhb_itemGetPtr(1);
    obj->setRenderTarget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRenderTarget(uint fboId, const QSize & size)
*/
HB_FUNC_STATIC( QQUICKWINDOW_SETRENDERTARGET2 )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par2 = (QSize *) _qt5xhb_itemGetPtr(2);
    obj->setRenderTarget ( (uint) hb_parni(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setRenderTarget(QOpenGLFramebufferObject * fbo)
//[2]void setRenderTarget(uint fboId, const QSize & size)

HB_FUNC_STATIC( QQUICKWINDOW_SETRENDERTARGET )
{
  if( ISNUMPAR(1) && ISQOPENGLFRAMEBUFFEROBJECT(1) )
  {
    HB_FUNC_EXEC( QQUICKWINDOW_SETRENDERTARGET1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSIZE(2) )
  {
    HB_FUNC_EXEC( QQUICKWINDOW_SETRENDERTARGET2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QAccessibleInterface * accessibleRoot() const
*/
HB_FUNC_STATIC( QQUICKWINDOW_ACCESSIBLEROOT )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->accessibleRoot (  );
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
void releaseResources()
*/
HB_FUNC_STATIC( QQUICKWINDOW_RELEASERESOURCES )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->releaseResources (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void update()
*/
HB_FUNC_STATIC( QQUICKWINDOW_UPDATE )
{
  QQuickWindow * obj = (QQuickWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->update (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
