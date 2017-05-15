/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QWIDGET
#endif

CLASS QDesktopWidget INHERIT QWidget

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD availableGeometry
   METHOD isVirtualDesktop
   METHOD primaryScreen
   METHOD screen
   METHOD screenCount
   METHOD screenGeometry
   METHOD screenNumber

   METHOD onResized
   METHOD onScreenCountChanged
   METHOD onWorkAreaResized

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesktopWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDesktopWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDesktopWidget>
#endif

HB_FUNC_STATIC( QDESKTOPWIDGET_DELETE )
{
  QDesktopWidget * obj = (QDesktopWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
const QRect availableGeometry ( int screen = -1 ) const
*/
void QDesktopWidget_availableGeometry1 ()
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->availableGeometry ( (int) ISNIL(1)? -1 : hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
const QRect availableGeometry ( const QWidget * widget ) const
*/
void QDesktopWidget_availableGeometry2 ()
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QWidget * par1 = (const QWidget *) _qt5xhb_itemGetPtr(1);
    QRect * ptr = new QRect( obj->availableGeometry ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
const QRect availableGeometry ( const QPoint & p ) const
*/
void QDesktopWidget_availableGeometry3 ()
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QRect * ptr = new QRect( obj->availableGeometry ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

//[1]const QRect availableGeometry ( int screen = -1 ) const
//[2]const QRect availableGeometry ( const QWidget * widget ) const
//[3]const QRect availableGeometry ( const QPoint & p ) const

HB_FUNC_STATIC( QDESKTOPWIDGET_AVAILABLEGEOMETRY )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QDesktopWidget_availableGeometry1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QDesktopWidget_availableGeometry2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QDesktopWidget_availableGeometry3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isVirtualDesktop () const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_ISVIRTUALDESKTOP )
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isVirtualDesktop () );
  }
}

/*
int primaryScreen () const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_PRIMARYSCREEN )
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->primaryScreen () );
  }
}

/*
QWidget * screen ( int screen = -1 )
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_SCREEN )
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      QWidget * ptr = obj->screen ( (int) ISNIL(1)? -1 : hb_parni(1) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int screenCount () const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENCOUNT )
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->screenCount () );
  }
}

/*
const QRect screenGeometry ( int screen = -1 ) const
*/
void QDesktopWidget_screenGeometry1 ()
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->screenGeometry ( (int) ISNIL(1)? -1 : hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
const QRect screenGeometry ( const QWidget * widget ) const
*/
void QDesktopWidget_screenGeometry2 ()
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QWidget * par1 = (const QWidget *) _qt5xhb_itemGetPtr(1);
    QRect * ptr = new QRect( obj->screenGeometry ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
const QRect screenGeometry ( const QPoint & p ) const
*/
void QDesktopWidget_screenGeometry3 ()
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QRect * ptr = new QRect( obj->screenGeometry ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

//[1]const QRect screenGeometry ( int screen = -1 ) const
//[2]const QRect screenGeometry ( const QWidget * widget ) const
//[3]const QRect screenGeometry ( const QPoint & p ) const

HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENGEOMETRY )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QDesktopWidget_screenGeometry1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QDesktopWidget_screenGeometry2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QDesktopWidget_screenGeometry3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int screenNumber ( const QWidget * widget = 0 ) const
*/
void QDesktopWidget_screenNumber1 ()
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QWidget * par1 = ISNIL(1)? 0 : (const QWidget *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->screenNumber ( par1 ) );
  }
}

/*
int screenNumber ( const QPoint & point ) const
*/
void QDesktopWidget_screenNumber2 ()
{
  QDesktopWidget * obj = (QDesktopWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->screenNumber ( *par1 ) );
  }
}

//[1]int screenNumber ( const QWidget * widget = 0 ) const
//[2]int screenNumber ( const QPoint & point ) const

HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENNUMBER )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QDesktopWidget_screenNumber1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QDesktopWidget_screenNumber2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
