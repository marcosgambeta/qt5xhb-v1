/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QSIZE
#endif

CLASS QToolButton INHERIT QAbstractButton

   DATA class_id INIT Class_Id_QToolButton
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD arrowType
   METHOD autoRaise
   METHOD defaultAction
   METHOD menu
   METHOD popupMode
   METHOD setArrowType
   METHOD setAutoRaise
   METHOD setMenu
   METHOD setPopupMode
   METHOD toolButtonStyle
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setDefaultAction
   METHOD setToolButtonStyle
   METHOD showMenu
   METHOD onTriggered
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QToolButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QToolButton>
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
#include <QToolButton>
#endif

/*
explicit QToolButton ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTOOLBUTTON_NEW )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QToolButton * o = new QToolButton ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

HB_FUNC_STATIC( QTOOLBUTTON_DELETE )
{
  QToolButton * obj = (QToolButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
Qt::ArrowType arrowType () const
*/
HB_FUNC_STATIC( QTOOLBUTTON_ARROWTYPE )
{
  QToolButton * obj = (QToolButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->arrowType (  ) );
  }
}

/*
bool autoRaise () const
*/
HB_FUNC_STATIC( QTOOLBUTTON_AUTORAISE )
{
  QToolButton * obj = (QToolButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->autoRaise (  ) );
  }
}

/*
QAction * defaultAction () const
*/
HB_FUNC_STATIC( QTOOLBUTTON_DEFAULTACTION )
{
  QToolButton * obj = (QToolButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->defaultAction (  );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QMenu * menu () const
*/
HB_FUNC_STATIC( QTOOLBUTTON_MENU )
{
#ifndef QT_NO_MENU
  QToolButton * obj = (QToolButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMenu * ptr = obj->menu (  );
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
#endif
}

/*
ToolButtonPopupMode popupMode () const
*/
HB_FUNC_STATIC( QTOOLBUTTON_POPUPMODE )
{
#ifndef QT_NO_MENU
  QToolButton * obj = (QToolButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->popupMode (  ) );
  }
#endif
}

/*
void setArrowType ( Qt::ArrowType type )
*/
HB_FUNC_STATIC( QTOOLBUTTON_SETARROWTYPE )
{
  QToolButton * obj = (QToolButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setArrowType (  (Qt::ArrowType) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAutoRaise ( bool enable )
*/
HB_FUNC_STATIC( QTOOLBUTTON_SETAUTORAISE )
{
  QToolButton * obj = (QToolButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setAutoRaise ( (bool) hb_parl(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMenu ( QMenu * menu )
*/
HB_FUNC_STATIC( QTOOLBUTTON_SETMENU )
{
#ifndef QT_NO_MENU
  QToolButton * obj = (QToolButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMenu * par1 = (QMenu *) _qt5xhb_itemGetPtr(1);
    obj->setMenu ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setPopupMode ( ToolButtonPopupMode mode )
*/
HB_FUNC_STATIC( QTOOLBUTTON_SETPOPUPMODE )
{
#ifndef QT_NO_MENU
  QToolButton * obj = (QToolButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPopupMode (  (QToolButton::ToolButtonPopupMode) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
Qt::ToolButtonStyle toolButtonStyle () const
*/
HB_FUNC_STATIC( QTOOLBUTTON_TOOLBUTTONSTYLE )
{
  QToolButton * obj = (QToolButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->toolButtonStyle (  ) );
  }
}

/*
QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QTOOLBUTTON_MINIMUMSIZEHINT )
{
  QToolButton * obj = (QToolButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QTOOLBUTTON_SIZEHINT )
{
  QToolButton * obj = (QToolButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setDefaultAction ( QAction * action )
*/
HB_FUNC_STATIC( QTOOLBUTTON_SETDEFAULTACTION )
{
  QToolButton * obj = (QToolButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * par1 = (QAction *) _qt5xhb_itemGetPtr(1);
    obj->setDefaultAction ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setToolButtonStyle ( Qt::ToolButtonStyle style )
*/
HB_FUNC_STATIC( QTOOLBUTTON_SETTOOLBUTTONSTYLE )
{
  QToolButton * obj = (QToolButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setToolButtonStyle (  (Qt::ToolButtonStyle) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showMenu ()
*/
HB_FUNC_STATIC( QTOOLBUTTON_SHOWMENU )
{
#ifndef QT_NO_MENU
  QToolButton * obj = (QToolButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->showMenu (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

#pragma ENDDUMP
