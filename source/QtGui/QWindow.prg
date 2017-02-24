/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSIZE
REQUEST QCURSOR
REQUEST QOBJECT
REQUEST QRECT
REQUEST QMARGINS
REQUEST QPOINT
REQUEST QSURFACEFORMAT
REQUEST QSCREEN

CLASS QWindow INHERIT QObject,QSurface

   DATA class_id INIT Class_Id_QWindow
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD baseSize
   METHOD contentOrientation
   METHOD create
   METHOD cursor
   METHOD destroy
   METHOD focusObject
   METHOD frameGeometry
   METHOD frameMargins
   METHOD geometry
   METHOD height
   METHOD isActive
   METHOD isAncestorOf
   METHOD isExposed
   METHOD isModal
   METHOD isTopLevel
   METHOD isVisible
   METHOD mapFromGlobal
   METHOD mapToGlobal
   METHOD maximumSize
   METHOD minimumSize
   METHOD parent
   METHOD reportContentOrientationChange
   METHOD requestedFormat
   METHOD resize1
   METHOD resize2
   METHOD resize
   METHOD screen
   METHOD setBaseSize
   METHOD setCursor
   METHOD setFormat
   METHOD setGeometry1
   METHOD setGeometry2
   METHOD setGeometry
   METHOD setKeyboardGrabEnabled
   METHOD setMaximumSize
   METHOD setMinimumSize
   METHOD setMouseGrabEnabled
   METHOD setOpacity
   METHOD setParent
   METHOD setScreen
   METHOD setSizeIncrement
   METHOD setSurfaceType
   METHOD setTransientParent
   METHOD sizeIncrement
   METHOD transientParent
   METHOD unsetCursor
   METHOD width
   METHOD windowState
   METHOD x
   METHOD y
   METHOD format
   METHOD size
   METHOD surfaceType
   METHOD close
   METHOD hide
   METHOD lower
   METHOD raise
   METHOD setHeight
   METHOD setVisible
   METHOD setWidth
   METHOD setX
   METHOD setY
   METHOD show
   METHOD showFullScreen
   METHOD showMaximized
   METHOD showMinimized
   METHOD showNormal
   METHOD onContentOrientationChanged
   METHOD onFocusObjectChanged
   METHOD onHeightChanged
   METHOD onScreenChanged
   METHOD onVisibleChanged
   METHOD onWidthChanged
   METHOD onWindowModalityChanged
   METHOD onXChanged
   METHOD onYChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWindow
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QWindow>
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
#include <QWindow>
#endif
#endif

/*
QWindow(QScreen * targetScreen = 0)
*/
HB_FUNC_STATIC( QWINDOW_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QScreen * par1 = ISNIL(1)? 0 : (QScreen *) _qtxhb_itemGetPtr(1);
  QWindow * o = new QWindow ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWindow *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QWindow(QWindow * parent)
*/
HB_FUNC_STATIC( QWINDOW_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWindow * par1 = (QWindow *) _qtxhb_itemGetPtr(1);
  QWindow * o = new QWindow ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWindow *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QWindow(QScreen * targetScreen = 0)
//[2]QWindow(QWindow * parent)

HB_FUNC_STATIC( QWINDOW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSCREEN(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QWINDOW_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQWINDOW(1) )
  {
    HB_FUNC_EXEC( QWINDOW_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QWINDOW_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWindow * obj = (QWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QSize baseSize() const
*/
HB_FUNC_STATIC( QWINDOW_BASESIZE )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->baseSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
Qt::ScreenOrientation contentOrientation() const
*/
HB_FUNC_STATIC( QWINDOW_CONTENTORIENTATION )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->contentOrientation (  ) );
  }
}


/*
void create()
*/
HB_FUNC_STATIC( QWINDOW_CREATE )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->create (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QCursor cursor() const
*/
HB_FUNC_STATIC( QWINDOW_CURSOR )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCursor * ptr = new QCursor( obj->cursor (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCURSOR", true );
  }
}


/*
void destroy()
*/
HB_FUNC_STATIC( QWINDOW_DESTROY )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->destroy (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QObject * focusObject() const
*/
HB_FUNC_STATIC( QWINDOW_FOCUSOBJECT )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->focusObject (  );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
QRect frameGeometry() const
*/
HB_FUNC_STATIC( QWINDOW_FRAMEGEOMETRY )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->frameGeometry (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QMargins frameMargins() const
*/
HB_FUNC_STATIC( QWINDOW_FRAMEMARGINS )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMargins * ptr = new QMargins( obj->frameMargins (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMARGINS", true );
  }
}



/*
QRect geometry() const
*/
HB_FUNC_STATIC( QWINDOW_GEOMETRY )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->geometry (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
int height() const
*/
HB_FUNC_STATIC( QWINDOW_HEIGHT )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->height (  ) );
  }
}


/*
bool isActive() const
*/
HB_FUNC_STATIC( QWINDOW_ISACTIVE )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isActive (  ) );
  }
}


/*
bool isAncestorOf(const QWindow * child, AncestorMode mode = IncludeTransients) const
*/
HB_FUNC_STATIC( QWINDOW_ISANCESTOROF )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QWindow * par1 = (const QWindow *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QWindow::IncludeTransients : hb_parni(2);
    hb_retl( obj->isAncestorOf ( par1,  (QWindow::AncestorMode) par2 ) );
  }
}


/*
bool isExposed() const
*/
HB_FUNC_STATIC( QWINDOW_ISEXPOSED )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isExposed (  ) );
  }
}


/*
bool isModal() const
*/
HB_FUNC_STATIC( QWINDOW_ISMODAL )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isModal (  ) );
  }
}


/*
bool isTopLevel() const
*/
HB_FUNC_STATIC( QWINDOW_ISTOPLEVEL )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isTopLevel (  ) );
  }
}


/*
bool isVisible() const
*/
HB_FUNC_STATIC( QWINDOW_ISVISIBLE )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isVisible (  ) );
  }
}


/*
QPoint mapFromGlobal(const QPoint & pos) const
*/
HB_FUNC_STATIC( QWINDOW_MAPFROMGLOBAL )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    QPoint * ptr = new QPoint( obj->mapFromGlobal ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QPoint mapToGlobal(const QPoint & pos) const
*/
HB_FUNC_STATIC( QWINDOW_MAPTOGLOBAL )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    QPoint * ptr = new QPoint( obj->mapToGlobal ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QSize maximumSize() const
*/
HB_FUNC_STATIC( QWINDOW_MAXIMUMSIZE )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QSize minimumSize() const
*/
HB_FUNC_STATIC( QWINDOW_MINIMUMSIZE )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QWindow * parent() const
*/
HB_FUNC_STATIC( QWINDOW_PARENT )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * ptr = obj->parent (  );
    _qt4xhb_createReturnClass ( ptr, "QWINDOW" );
  }
}



/*
void reportContentOrientationChange(Qt::ScreenOrientation orientation)
*/
HB_FUNC_STATIC( QWINDOW_REPORTCONTENTORIENTATIONCHANGE )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->reportContentOrientationChange (  (Qt::ScreenOrientation) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
QSurfaceFormat requestedFormat() const
*/
HB_FUNC_STATIC( QWINDOW_REQUESTEDFORMAT )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurfaceFormat * ptr = new QSurfaceFormat( obj->requestedFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSURFACEFORMAT" );
  }
}


/*
void resize(const QSize & newSize)
*/
HB_FUNC_STATIC( QWINDOW_RESIZE1 )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
    obj->resize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resize(int w, int h)
*/
HB_FUNC_STATIC( QWINDOW_RESIZE2 )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resize ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void resize(const QSize & newSize)
//[2]void resize(int w, int h)

HB_FUNC_STATIC( QWINDOW_RESIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QWINDOW_RESIZE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QWINDOW_RESIZE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScreen * screen() const
*/
HB_FUNC_STATIC( QWINDOW_SCREEN )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScreen * ptr = obj->screen (  );
    _qt4xhb_createReturnClass ( ptr, "QSCREEN" );
  }
}


/*
void setBaseSize(const QSize & size)
*/
HB_FUNC_STATIC( QWINDOW_SETBASESIZE )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
    obj->setBaseSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCursor(const QCursor &)
*/
HB_FUNC_STATIC( QWINDOW_SETCURSOR )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCursor * par1 = (QCursor *) _qtxhb_itemGetPtr(1);
    obj->setCursor ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFormat(const QSurfaceFormat & format)
*/
HB_FUNC_STATIC( QWINDOW_SETFORMAT )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurfaceFormat * par1 = (QSurfaceFormat *) _qtxhb_itemGetPtr(1);
    obj->setFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setGeometry(int posx, int posy, int w, int h)
*/
HB_FUNC_STATIC( QWINDOW_SETGEOMETRY1 )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setGeometry ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGeometry(const QRect & rect)
*/
HB_FUNC_STATIC( QWINDOW_SETGEOMETRY2 )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    obj->setGeometry ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setGeometry(int posx, int posy, int w, int h)
//[2]void setGeometry(const QRect & rect)

HB_FUNC_STATIC( QWINDOW_SETGEOMETRY )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QWINDOW_SETGEOMETRY1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QWINDOW_SETGEOMETRY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool setKeyboardGrabEnabled(bool grab)
*/
HB_FUNC_STATIC( QWINDOW_SETKEYBOARDGRABENABLED )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->setKeyboardGrabEnabled ( (bool) hb_parl(1) ) );
  }
}


/*
void setMaximumSize(const QSize & size)
*/
HB_FUNC_STATIC( QWINDOW_SETMAXIMUMSIZE )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
    obj->setMaximumSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinimumSize(const QSize & size)
*/
HB_FUNC_STATIC( QWINDOW_SETMINIMUMSIZE )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
    obj->setMinimumSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool setMouseGrabEnabled(bool grab)
*/
HB_FUNC_STATIC( QWINDOW_SETMOUSEGRABENABLED )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->setMouseGrabEnabled ( (bool) hb_parl(1) ) );
  }
}


/*
void setOpacity(qreal level)
*/
HB_FUNC_STATIC( QWINDOW_SETOPACITY )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setOpacity ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setParent(QWindow * parent)
*/
HB_FUNC_STATIC( QWINDOW_SETPARENT )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * par1 = (QWindow *) _qtxhb_itemGetPtr(1);
    obj->setParent ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




//[1]void setPos(const QPoint & pt)
//[2]void setPos(int posx, int posy)

//HB_FUNC_STATIC( QWINDOW_SETPOS )
//{
//  if( ISNUMPAR(1) && ISOBJECT(1) )
//  {
//    HB_FUNC_EXEC( QWINDOW_SETPOS1 );
//  }
//  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
//  {
//    HB_FUNC_EXEC( QWINDOW_SETPOS2 );
//  }
//}

/*
void setScreen(QScreen * newScreen)
*/
HB_FUNC_STATIC( QWINDOW_SETSCREEN )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScreen * par1 = (QScreen *) _qtxhb_itemGetPtr(1);
    obj->setScreen ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSizeIncrement(const QSize & size)
*/
HB_FUNC_STATIC( QWINDOW_SETSIZEINCREMENT )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
    obj->setSizeIncrement ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSurfaceType(SurfaceType surfaceType)
*/
HB_FUNC_STATIC( QWINDOW_SETSURFACETYPE )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSurfaceType (  (QSurface::SurfaceType) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTransientParent(QWindow * parent)
*/
HB_FUNC_STATIC( QWINDOW_SETTRANSIENTPARENT )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * par1 = (QWindow *) _qtxhb_itemGetPtr(1);
    obj->setTransientParent ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}






/*
QSize sizeIncrement() const
*/
HB_FUNC_STATIC( QWINDOW_SIZEINCREMENT )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeIncrement (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QWindow * transientParent() const
*/
HB_FUNC_STATIC( QWINDOW_TRANSIENTPARENT )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * ptr = obj->transientParent (  );
    _qt4xhb_createReturnClass ( ptr, "QWINDOW" );
  }
}


/*
void unsetCursor()
*/
HB_FUNC_STATIC( QWINDOW_UNSETCURSOR )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->unsetCursor (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int width() const
*/
HB_FUNC_STATIC( QWINDOW_WIDTH )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->width (  ) );
  }
}







/*
Qt::WindowState windowState() const
*/
HB_FUNC_STATIC( QWINDOW_WINDOWSTATE )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->windowState (  ) );
  }
}




/*
int x() const
*/
HB_FUNC_STATIC( QWINDOW_X )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->x (  ) );
  }
}


/*
int y() const
*/
HB_FUNC_STATIC( QWINDOW_Y )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->y (  ) );
  }
}


/*
virtual QSurfaceFormat format() const
*/
HB_FUNC_STATIC( QWINDOW_FORMAT )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurfaceFormat * ptr = new QSurfaceFormat( obj->format (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSURFACEFORMAT" );
  }
}


/*
virtual QSize size() const
*/
HB_FUNC_STATIC( QWINDOW_SIZE )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->size (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual SurfaceType surfaceType() const
*/
HB_FUNC_STATIC( QWINDOW_SURFACETYPE )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->surfaceType (  ) );
  }
}


/*
bool close()
*/
HB_FUNC_STATIC( QWINDOW_CLOSE )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->close (  ) );
  }
}


/*
void hide()
*/
HB_FUNC_STATIC( QWINDOW_HIDE )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->hide (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void lower()
*/
HB_FUNC_STATIC( QWINDOW_LOWER )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->lower (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void raise()
*/
HB_FUNC_STATIC( QWINDOW_RAISE )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->raise (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHeight(int arg)
*/
HB_FUNC_STATIC( QWINDOW_SETHEIGHT )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHeight ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVisible(bool visible)
*/
HB_FUNC_STATIC( QWINDOW_SETVISIBLE )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidth(int arg)
*/
HB_FUNC_STATIC( QWINDOW_SETWIDTH )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWidth ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setX(int arg)
*/
HB_FUNC_STATIC( QWINDOW_SETX )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setX ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setY(int arg)
*/
HB_FUNC_STATIC( QWINDOW_SETY )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setY ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void show()
*/
HB_FUNC_STATIC( QWINDOW_SHOW )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->show (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showFullScreen()
*/
HB_FUNC_STATIC( QWINDOW_SHOWFULLSCREEN )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->showFullScreen (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showMaximized()
*/
HB_FUNC_STATIC( QWINDOW_SHOWMAXIMIZED )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->showMaximized (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showMinimized()
*/
HB_FUNC_STATIC( QWINDOW_SHOWMINIMIZED )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->showMinimized (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showNormal()
*/
HB_FUNC_STATIC( QWINDOW_SHOWNORMAL )
{
  QWindow * obj = (QWindow *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->showNormal (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
