/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QStyleOptionTabWidgetFrame INHERIT QStyleOption

   METHOD new

   METHOD lineWidth
   METHOD midLineWidth
   METHOD shape
   METHOD tabBarSize
   METHOD rightCornerWidgetSize
   METHOD leftCornerWidgetSize
   METHOD tabBarRect
   METHOD selectedTabRect

   METHOD setLineWidth
   METHOD setMidLineWidth
   METHOD setShape
   METHOD setTabBarSize
   METHOD setRightCornerWidgetSize
   METHOD setLeftCornerWidgetSize
   METHOD setTabBarRect
   METHOD setSelectedTabRect

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleOptionTabWidgetFrame
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStyleOptionTabWidgetFrame>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStyleOptionTabWidgetFrame>
#endif

/*
QStyleOptionTabWidgetFrame()
*/
void QStyleOptionTabWidgetFrame_new1 ()
{
  QStyleOptionTabWidgetFrame * o = new QStyleOptionTabWidgetFrame ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionTabWidgetFrame(const QStyleOptionTabWidgetFrame &other)
*/
void QStyleOptionTabWidgetFrame_new2 ()
{
  QStyleOptionTabWidgetFrame * o = new QStyleOptionTabWidgetFrame ( *PQSTYLEOPTIONTABWIDGETFRAME(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionTabWidgetFrame(int version) (protected)
*/

//[1]QStyleOptionTabWidgetFrame()
//[2]QStyleOptionTabWidgetFrame(const QStyleOptionTabWidgetFrame &other)
//[3]QStyleOptionTabWidgetFrame(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionTabWidgetFrame_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTABWIDGETFRAME(1) )
  {
    QStyleOptionTabWidgetFrame_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int lineWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_LINEWIDTH )
{
  QStyleOptionTabWidgetFrame * obj = (QStyleOptionTabWidgetFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->lineWidth );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETLINEWIDTH )
{
  QStyleOptionTabWidgetFrame * obj = (QStyleOptionTabWidgetFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->lineWidth = PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int midLineWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_MIDLINEWIDTH )
{
  QStyleOptionTabWidgetFrame * obj = (QStyleOptionTabWidgetFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->midLineWidth );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETMIDLINEWIDTH )
{
  QStyleOptionTabWidgetFrame * obj = (QStyleOptionTabWidgetFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->midLineWidth = PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QTabBar::Shape shape
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SHAPE )
{
  QStyleOptionTabWidgetFrame * obj = (QStyleOptionTabWidgetFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->shape );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETSHAPE )
{
  QStyleOptionTabWidgetFrame * obj = (QStyleOptionTabWidgetFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->shape = (QTabBar::Shape) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize tabBarSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_TABBARSIZE )
{
  QStyleOptionTabWidgetFrame * obj = (QStyleOptionTabWidgetFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->tabBarSize );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETTABBARSIZE )
{
  QStyleOptionTabWidgetFrame * obj = (QStyleOptionTabWidgetFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->tabBarSize = *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize rightCornerWidgetSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_RIGHTCORNERWIDGETSIZE )
{
  QStyleOptionTabWidgetFrame * obj = (QStyleOptionTabWidgetFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->rightCornerWidgetSize );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETRIGHTCORNERWIDGETSIZE )
{
  QStyleOptionTabWidgetFrame * obj = (QStyleOptionTabWidgetFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->rightCornerWidgetSize = *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize leftCornerWidgetSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_LEFTCORNERWIDGETSIZE )
{
  QStyleOptionTabWidgetFrame * obj = (QStyleOptionTabWidgetFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->leftCornerWidgetSize );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETLEFTCORNERWIDGETSIZE )
{
  QStyleOptionTabWidgetFrame * obj = (QStyleOptionTabWidgetFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->leftCornerWidgetSize = *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRect tabBarRect
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_TABBARRECT )
{
  QStyleOptionTabWidgetFrame * obj = (QStyleOptionTabWidgetFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->tabBarRect );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETTABBARRECT )
{
  QStyleOptionTabWidgetFrame * obj = (QStyleOptionTabWidgetFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
      obj->tabBarRect = *PQRECT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRect selectedTabRect
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SELECTEDTABRECT )
{
  QStyleOptionTabWidgetFrame * obj = (QStyleOptionTabWidgetFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->selectedTabRect );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETSELECTEDTABRECT )
{
  QStyleOptionTabWidgetFrame * obj = (QStyleOptionTabWidgetFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
      obj->selectedTabRect = *PQRECT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
