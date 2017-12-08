/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QStyleOptionTitleBar INHERIT QStyleOptionComplex

   METHOD new

   METHOD text
   METHOD icon
   METHOD titleBarState
   METHOD titleBarFlags

   METHOD setText
   METHOD setIcon
   METHOD setTitleBarState
   METHOD setTitleBarFlags

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleOptionTitleBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStyleOptionTitleBar>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStyleOptionTitleBar>
#endif

/*
QStyleOptionTitleBar()
*/
void QStyleOptionTitleBar_new1 ()
{
  QStyleOptionTitleBar * o = new QStyleOptionTitleBar ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionTitleBar(const QStyleOptionTitleBar &other)
*/
void QStyleOptionTitleBar_new2 ()
{
  QStyleOptionTitleBar * o = new QStyleOptionTitleBar ( *PQSTYLEOPTIONTITLEBAR(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionTitleBar(int version) (protected)
*/

//[1]QStyleOptionTitleBar()
//[2]QStyleOptionTitleBar(const QStyleOptionTitleBar &other)
//[3]QStyleOptionTitleBar(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONTITLEBAR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionTitleBar_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTITLEBAR(1) )
  {
    QStyleOptionTitleBar_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString text
*/
HB_FUNC_STATIC( QSTYLEOPTIONTITLEBAR_TEXT )
{
  QStyleOptionTitleBar * obj = (QStyleOptionTitleBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTITLEBAR_SETTEXT )
{
  QStyleOptionTitleBar * obj = (QStyleOptionTitleBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->text = PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIcon icon
*/
HB_FUNC_STATIC( QSTYLEOPTIONTITLEBAR_ICON )
{
  QStyleOptionTitleBar * obj = (QStyleOptionTitleBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QIcon * ptr = new QIcon( obj->icon );
      _qt5xhb_createReturnClass ( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTITLEBAR_SETICON )
{
  QStyleOptionTitleBar * obj = (QStyleOptionTitleBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQICON(1) )
    {
      obj->icon = *PQICON(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int titleBarState
*/
HB_FUNC_STATIC( QSTYLEOPTIONTITLEBAR_TITLEBARSTATE )
{
  QStyleOptionTitleBar * obj = (QStyleOptionTitleBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->titleBarState );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTITLEBAR_SETTITLEBARSTATE )
{
  QStyleOptionTitleBar * obj = (QStyleOptionTitleBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->titleBarState = PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::WindowFlags titleBarFlags
*/
HB_FUNC_STATIC( QSTYLEOPTIONTITLEBAR_TITLEBARFLAGS )
{
  QStyleOptionTitleBar * obj = (QStyleOptionTitleBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->titleBarFlags );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTITLEBAR_SETTITLEBARFLAGS )
{
  QStyleOptionTitleBar * obj = (QStyleOptionTitleBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->titleBarFlags = (Qt::WindowFlags) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
