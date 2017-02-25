/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QRECT
REQUEST QWIDGET
#endif

CLASS QDesktopWidget INHERIT QWidget

   DATA class_id INIT Class_Id_QDesktopWidget
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD availableGeometry1
   METHOD availableGeometry2
   METHOD availableGeometry3
   METHOD availableGeometry
   METHOD isVirtualDesktop
   METHOD primaryScreen
   METHOD screen
   METHOD screenCount
   METHOD screenGeometry1
   METHOD screenGeometry2
   METHOD screenGeometry3
   METHOD screenGeometry
   METHOD screenNumber1
   METHOD screenNumber2
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDesktopWidget>
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
#include <QDesktopWidget>
#endif
#endif

HB_FUNC_STATIC( QDESKTOPWIDGET_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
const QRect availableGeometry ( int screen = -1 ) const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_AVAILABLEGEOMETRY1 )
{
  QDesktopWidget * obj = (QDesktopWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->availableGeometry ( (int) ISNIL(1)? -1 : hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
const QRect availableGeometry ( const QWidget * widget ) const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_AVAILABLEGEOMETRY2 )
{
  QDesktopWidget * obj = (QDesktopWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QWidget * par1 = (const QWidget *) _qtxhb_itemGetPtr(1);
    QRect * ptr = new QRect( obj->availableGeometry ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
const QRect availableGeometry ( const QPoint & p ) const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_AVAILABLEGEOMETRY3 )
{
  QDesktopWidget * obj = (QDesktopWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    QRect * ptr = new QRect( obj->availableGeometry ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


//[1]const QRect availableGeometry ( int screen = -1 ) const
//[2]const QRect availableGeometry ( const QWidget * widget ) const
//[3]const QRect availableGeometry ( const QPoint & p ) const

HB_FUNC_STATIC( QDESKTOPWIDGET_AVAILABLEGEOMETRY )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDESKTOPWIDGET_AVAILABLEGEOMETRY1 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QDESKTOPWIDGET_AVAILABLEGEOMETRY2 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QDESKTOPWIDGET_AVAILABLEGEOMETRY3 );
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
  QDesktopWidget * obj = (QDesktopWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isVirtualDesktop (  ) );
  }
}


/*
int primaryScreen () const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_PRIMARYSCREEN )
{
  QDesktopWidget * obj = (QDesktopWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->primaryScreen (  ) );
  }
}


/*
QWidget * screen ( int screen = -1 )
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_SCREEN )
{
  QDesktopWidget * obj = (QDesktopWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->screen ( (int) ISNIL(1)? -1 : hb_parni(1) );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
int screenCount () const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENCOUNT )
{
  QDesktopWidget * obj = (QDesktopWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->screenCount (  ) );
  }
}


/*
const QRect screenGeometry ( int screen = -1 ) const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENGEOMETRY1 )
{
  QDesktopWidget * obj = (QDesktopWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->screenGeometry ( (int) ISNIL(1)? -1 : hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
const QRect screenGeometry ( const QWidget * widget ) const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENGEOMETRY2 )
{
  QDesktopWidget * obj = (QDesktopWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QWidget * par1 = (const QWidget *) _qtxhb_itemGetPtr(1);
    QRect * ptr = new QRect( obj->screenGeometry ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
const QRect screenGeometry ( const QPoint & p ) const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENGEOMETRY3 )
{
  QDesktopWidget * obj = (QDesktopWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    QRect * ptr = new QRect( obj->screenGeometry ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


//[1]const QRect screenGeometry ( int screen = -1 ) const
//[2]const QRect screenGeometry ( const QWidget * widget ) const
//[3]const QRect screenGeometry ( const QPoint & p ) const

HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENGEOMETRY )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDESKTOPWIDGET_SCREENGEOMETRY1 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QDESKTOPWIDGET_SCREENGEOMETRY2 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QDESKTOPWIDGET_SCREENGEOMETRY3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int screenNumber ( const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENNUMBER1 )
{
  QDesktopWidget * obj = (QDesktopWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QWidget * par1 = ISNIL(1)? 0 : (const QWidget *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->screenNumber ( par1 ) );
  }
}

/*
int screenNumber ( const QPoint & point ) const
*/
HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENNUMBER2 )
{
  QDesktopWidget * obj = (QDesktopWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->screenNumber ( *par1 ) );
  }
}


//[1]int screenNumber ( const QWidget * widget = 0 ) const
//[2]int screenNumber ( const QPoint & point ) const

HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENNUMBER )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDESKTOPWIDGET_SCREENNUMBER1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QDESKTOPWIDGET_SCREENNUMBER2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



#pragma ENDDUMP
