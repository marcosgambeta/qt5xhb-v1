/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINDOW
REQUEST QICON
REQUEST QWINTASKBARPROGRESS
#endif

CLASS QWinTaskbarButton INHERIT QObject

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD window
   METHOD setWindow
   METHOD overlayIcon
   METHOD setOverlayIcon
   METHOD clearOverlayIcon
   METHOD overlayAccessibleDescription
   METHOD setOverlayAccessibleDescription
   METHOD progress
   METHOD eventFilter

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWinTaskbarButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinTaskbarButton>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinTaskbarButton>
#endif
#endif

/*
explicit QWinTaskbarButton(QObject *parent = 0)
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QWinTaskbarButton * o = new QWinTaskbarButton ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QWINTASKBARBUTTON_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QWindow *window() const
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_WINDOW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * ptr = obj->window ();
    _qt5xhb_createReturnClass ( ptr, "QWINDOW" );
  }
#endif
}

/*
void setWindow(QWindow *window)
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_SETWINDOW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
    obj->setWindow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QIcon overlayIcon() const
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_OVERLAYICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->overlayIcon () );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
#endif
}

/*
void setOverlayIcon(const QIcon &icon)
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_SETOVERLAYICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    obj->setOverlayIcon ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void clearOverlayIcon()
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_CLEAROVERLAYICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearOverlayIcon ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString overlayAccessibleDescription() const
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_OVERLAYACCESSIBLEDESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->overlayAccessibleDescription () ) );
  }
#endif
}

/*
void setOverlayAccessibleDescription(const QString &description)
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_SETOVERLAYACCESSIBLEDESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOverlayAccessibleDescription ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QWinTaskbarProgress *progress() const
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_PROGRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWinTaskbarProgress * ptr = obj->progress ();
    _qt5xhb_createReturnClass ( ptr, "QWINTASKBARPROGRESS" );
  }
#endif
}


/*
bool eventFilter(QObject *, QEvent *)
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_EVENTFILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    QEvent * par2 = (QEvent *) _qt5xhb_itemGetPtr(2);
    hb_retl( obj->eventFilter ( par1, par2 ) );
  }
#endif
}



#pragma ENDDUMP
