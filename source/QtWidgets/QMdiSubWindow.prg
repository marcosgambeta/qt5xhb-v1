/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QMDIAREA
REQUEST QMENU
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QMdiSubWindow INHERIT QWidget

   DATA class_id INIT Class_Id_QMdiSubWindow
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD isShaded
   METHOD keyboardPageStep
   METHOD keyboardSingleStep
   METHOD mdiArea
   METHOD setKeyboardPageStep
   METHOD setKeyboardSingleStep
   METHOD setOption
   METHOD setSystemMenu
   METHOD setWidget
   METHOD systemMenu
   METHOD testOption
   METHOD widget
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD showShaded
   METHOD showSystemMenu
   METHOD onAboutToActivate
   METHOD onWindowStateChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMdiSubWindow
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMdiSubWindow>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMdiSubWindow>
#endif

/*
QMdiSubWindow ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QMDISUBWINDOW_NEW )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QMdiSubWindow * o = new QMdiSubWindow ( par1,  (Qt::WindowFlags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QMDISUBWINDOW_DELETE )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isShaded () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_ISSHADED )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isShaded (  ) );
  }
}


/*
int keyboardPageStep () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_KEYBOARDPAGESTEP )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->keyboardPageStep (  ) );
  }
}


/*
int keyboardSingleStep () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_KEYBOARDSINGLESTEP )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->keyboardSingleStep (  ) );
  }
}


/*
QMdiArea * mdiArea () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_MDIAREA )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMdiArea * ptr = obj->mdiArea (  );
    _qt5xhb_createReturnClass ( ptr, "QMDIAREA" );
  }
}


/*
void setKeyboardPageStep ( int step )
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SETKEYBOARDPAGESTEP )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setKeyboardPageStep ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setKeyboardSingleStep ( int step )
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SETKEYBOARDSINGLESTEP )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setKeyboardSingleStep ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOption ( SubWindowOption option, bool on = true )
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SETOPTION )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOption (  (QMdiSubWindow::SubWindowOption) par1, (bool) ISNIL(2)? true : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSystemMenu ( QMenu * systemMenu )
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SETSYSTEMMENU )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMenu * par1 = (QMenu *) _qt5xhb_itemGetPtr(1);
    obj->setSystemMenu ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SETWIDGET )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->setWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QMenu * systemMenu () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SYSTEMMENU )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMenu * ptr = obj->systemMenu (  );
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
}


/*
bool testOption ( SubWindowOption option ) const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_TESTOPTION )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->testOption (  (QMdiSubWindow::SubWindowOption) par1 ) );
  }
}


/*
QWidget * widget () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_WIDGET )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->widget (  );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_MINIMUMSIZEHINT )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SIZEHINT )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void showShaded ()
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SHOWSHADED )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->showShaded (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showSystemMenu ()
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SHOWSYSTEMMENU )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->showSystemMenu (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
